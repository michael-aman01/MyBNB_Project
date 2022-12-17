import React, { useState, useEffect} from "react";

import { GoogleMap, InfoWindow, LoadScript, Marker } from "@react-google-maps/api";
import { fetchListings  } from "../../store/data";

import { useDispatch } from "react-redux";
import "./map.css"
import { useRef } from "react";
import { useParams } from "react-router-dom";



export default function Map({listings={},listing={}}){
    const [activeInfoWindow, setActiveInfoWindow] = useState("");
    const dispatch = useDispatch()
    const ref = useRef(null)
    const {id} = useParams()
    const mapsKey = process.env.REACT_APP_MAPS_API_KEY

    const [markers, setMarkers] = useState(null)
    const [ currentPosition, setCurrentPosition ] = useState({});
    const success = position => {
      const currentPosition = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      }
      setCurrentPosition(currentPosition);
    };

    const getCoords = (coordsArray) => {
  
        let listingMarkers = coordsArray.map((coords,index) => {
           return  <Marker 
            key={index} 
            position={coords.position}
            label={coords.label}
        >
            {
                (activeInfoWindow === index)
                &&
                <InfoWindow position={coords.position}>
                    <b>{coords.position.lat}, {coords.position.lng}</b>
                </InfoWindow>
            }  
        </Marker>
        })
        setCurrentPosition(coordsArray[0].position)
        setMarkers(listingMarkers)
    }

    
    
    useEffect(() => {
        const dataLoad = setInterval( async () => {
            navigator.geolocation.getCurrentPosition(success);
            let result = await dispatch(fetchListings())
            if(Object.values(result.listings).length) {
                if(id === undefined){
                    getCoords(Object.values(result.listings).map(listing => listing.coordinates)) 
                 
                }else{
                    let listing = result.listings[id]
                    getCoords([listing.coordinates])
                }
                clearInterval(dataLoad)
            }
        },1500)
    },[])


  

    const onMarkerDragEnd = (e) => {
        const lat = e.latLng.lat();
        const lng = e.latLng.lng();
        setCurrentPosition({ lat, lng})
      };

      const mapStyles = {        
        height: "100%",
        width: "100%"
    };
      
    if(listings !== null){
      return ( 

        <div id="map-container" ref={ref}>
            {markers}
        <LoadScript googleMapsApiKey={mapsKey}>
            <GoogleMap
              mapContainerStyle={mapStyles}
              zoom={13}
              center={currentPosition}>
              {
                currentPosition.lat ? 
                <Marker
                position={listings[0]}
                onDragEnd={(e) => onMarkerDragEnd(e)}
                draggable={true} /> :
                null
              }
              {markers}
            </GoogleMap>
        </LoadScript>
        </div>
      )}else{
        return(
            <div id="map-container" ref={ref}>
                         {markers.length}
            <LoadScript googleMapsApiKey={mapsKey}>
                <GoogleMap
                  mapContainerStyle={mapStyles}
                  zoom={100}
                  >
                  {
                    currentPosition.lat ? 
                    <Marker
                    position={currentPosition}
                    onDragEnd={(e) => onMarkerDragEnd(e)}
                    draggable={true} /> :
                    null
                  }
                </GoogleMap>
            </LoadScript>
            </div>
        )
      } 
  
      
    }