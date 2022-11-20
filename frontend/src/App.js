import React, { useEffect } from "react";
import { Route, Switch } from "react-router-dom";
import LoginFormPage from "./components/LoginFormPage";
import SignupFormPage from "./components/SignupFormPage";
import { Wrapper } from "@googlemaps/react-wrapper";
import NavigationBar from "./components/NavigationBar";
import ListingsIndex from "./components/ListingsIndex";
import CreateListingPhotos from "./components/CreateListingPhotos";
import ShowPage from './components/ShowPage'
import ProfilePage from "./components/ProfilePage";
import Map from "./components/Map";
function App() {

  useEffect(() =>{
    const navBar = document.getElementById("nav-container")
    if(window.location.toString().split("/").includes("create")){
      navBar.style.display = "None"
  }else{
    navBar.style.display = "flex"
  }
  },[])

  return (
    <>
      <NavigationBar/>
        <Switch>
      <Route path="/login">
        <LoginFormPage />
      </Route>
      <Route path="/signup">
        <SignupFormPage />
      </Route>
      <Route exact path="/listings">
        <ListingsIndex></ListingsIndex>
      </Route>
      <Route path={`/listings/:id`}>
        <ShowPage />
      </Route>
      <Route path="/account/:user_id">
        <ProfilePage />
      </Route>
      <Route path="/test">
        <Map></Map>
      </Route>


    </Switch>
    </>

  );
}

export default App;