import React, { useState, useEffect} from "react";

import { GoogleMap, InfoWindow, LoadScript, Marker } from "@react-google-maps/api";
import { fetchListings  } from "../../store/data";

import { useDispatch } from "react-redux";
import "./map.css"
import { useRef } from "react";
import { useParams } from "react-router-dom";



export default function Map({listings={},listing={}, mapStyles={}}){
    const [activeInfoWindow, setActiveInfoWindow] = useState("");
    const dispatch = useDispatch()
    const ref = useRef(null)
    const [center, setCenter] = useState()
    const {id} = useParams()
    const mapsKey = process.env.REACT_APP_MAPS_API_KEY

    const [markers, setMarkers] = useState(null)
    const [ currentPosition, setCurrentPosition ] = useState({});

    function calcCenter(someCoords){
      const positions = someCoords.map(val => val.position)
      const lats = positions.map(pos => pos.lat)
      const lngs = positions.map(pos => pos.lng)
      const latsAvg = lats.reduce((a,b) => a + b, 0)/lats.length
      const lngAvg = lngs.reduce((a,b) => a + b, 0)/lngs.length
      const newCenter = {lat: latsAvg, lng: lngAvg}
      setCenter(newCenter)

    }

    const success = position => {
      const currentPosition = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      }
      setCurrentPosition(currentPosition);
    };

    const getCoords = (coordsArray,listingsArray) => {
      
        let listingMarkers = coordsArray.map((coords,index) => {
          
          coords.label = {"text":`$${listingsArray[index].price}`,"color":"white"}
          console.log(listings)
          console.log(coords.label)
           return  <Marker 
            key={index} 
            position={coords.position}
            label={coords.label}
        >
            {
                (activeInfoWindow === index)
                &&
                <InfoWindow position={coords.position}>
                    <div>{coords.position.lat}, {coords.position.lng}</div>
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
                    getCoords(Object.values(result.listings).map(listing => listing.coordinates),Object.values(result.listings))
                    calcCenter(Object.values(result.listings).map(listing => listing.coordinates))
                 
                }else{
                    let listing = result.listings[id]
                    getCoords([listing.coordinates],[listing])
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

      const mapOptions = {
        disableDefaultUI: true,
        scrollwheel: false,
        navigationControl: false,
        mapTypeControl: false,
        scaleControl: false,
        mapTypeControl:false,
        scrollwheel: false,
        zoom:12,
        keyboardShortcut:false
      }
    if(listings !== null){
      console.log(currentPosition)
      return ( 


        <>
      
            {markers}
        <LoadScript googleMapsApiKey={mapsKey}>
            <GoogleMap
              mapContainerStyle={mapStyles}


              options={mapOptions}
              center={currentPosition}>
              {
                currentPosition.lat ? 
                <Marker
                position={listings[0]}
                onDragEnd={(e) => onMarkerDragEnd(e)}
                draggable={false} /> :
                null
              }
              {markers}
            </GoogleMap>
        </LoadScript>
        </>
      )}else{
        return(
  
          
            <LoadScript googleMapsApiKey={mapsKey}>
                <GoogleMap
        
                  options={mapOptions}
                  mapContainerStyle={mapStyles}
                  center={center}
                  >
                  {
                    currentPosition.lat ? 
                    <Marker
                    position={currentPosition}
                    onDragEnd={(e) => onMarkerDragEnd(e)}
                    draggable={false} /> :
                    null
                  }
                </GoogleMap>
            </LoadScript>
    
        )
      } 
  
      
    }