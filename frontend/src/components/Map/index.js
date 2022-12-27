import React, { useState, useEffect} from "react";
import LoadingSpinner from "../LoadingSpinner";
import { GoogleMap, InfoBox, InfoWindow, LoadScript, Marker, Size} from "@react-google-maps/api";
import { fetchListings  } from "../../store/data";
import ListingIndexItem from '../ListingsIndexItem'
import { useDispatch, useSelector } from "react-redux";
import "./map.css"
import { useRef } from "react";
import { useParams } from "react-router-dom";




export default function Map({listings={},listing={}, mapStyles={}}){

    const dispatch = useDispatch()
    const ref = useRef(null)
    const [center, setCenter] = useState()
    const {id} = useParams()
    const {search_params} = useParams()
    const mapsKey = process.env.REACT_APP_MAPS_API_KEY 
    const states = {
      "SF":[" California"],
      "NY": ["NY"],
      "MIA":["FL"],
      "FLEX":[" California","NY","FL"]
    }
    const [markers, setMarkers] = useState(null)

    const [ currentPosition, setCurrentPosition ] = useState({});
    const [openInfoWindow, setOpenInfoWindow] = useState(null)
    const [currentMarker,setCurrentMarker] = useState()
    const currentListings = useSelector(state => state.listings)

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

    const markerClick = (index) => {
      console.log(markers.length)
 
  
    }

    const getCoords = (coordsArray,listingsArray) => {
        let boxes = []
        let listingMarkers = coordsArray.map((coords,index) => {
          
          coords.label = {"text":`$${listingsArray[index].price}`,"color":"white"}

          const marker =  <Marker
                                          id={index}
                                          key={index} 
                                          position={coords.position}
                                          label={coords.label}
                                          clickable={true}
                                          onClick={() => setCurrentMarker({"pos":coords.position,"listing":listingsArray[index]})}
                    
                                      >
                            
  
      
                                      </Marker>


        
            return marker
   
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
                    const state = states[search_params.split("&")[0].toUpperCase()]
                
                    
                    getCoords(Object.values(result.listings).filter(listing => state.includes(listing.state)).map(listing => listing.coordinates),Object.values(result.listings).filter(listing => state.includes(listing.state)))
                    calcCenter(Object.values(result.listings).filter(listing => state.includes(listing.state)).map(listing => listing.coordinates))
                 
                }else{
                    let listing = result.listings[id]
                    getCoords([listing.coordinates],[listing])
                }
                clearInterval(dataLoad)
            }
        },100)
    },[])

    useEffect(() => {
      if(currentMarker !== undefined && markers !== null){
     
       
                  const info =     <InfoWindow
                                position={currentMarker.pos}
                                visible={currentMarker !== undefined ? true : false}
                                onCloseClick={() => setCurrentMarker(undefined)}
                            >
                    
                                <ListingIndexItem listing={currentMarker.listing}></ListingIndexItem>
                        </InfoWindow>
                      console.log(currentMarker)
                      setOpenInfoWindow(info)
      
      }
    },[currentMarker])





  



      const mapOptions = {
        disableDefaultUI: false,
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
      return ( 
        <>
      
            {markers}
        <LoadScript googleMapsApiKey={mapsKey}>
            <GoogleMap
              mapContainerStyle={mapStyles}


              options={mapOptions}
              center={currentPosition}>
              {markers}
              {openInfoWindow}
            </GoogleMap>
        </LoadScript>
        </>
      )}else{
        return(
  
          
      <LoadingSpinner></LoadingSpinner>
    
        )
      } 
  
      
    }