import React, { useEffect } from "react";
import { Route, Switch } from "react-router-dom";
import LoginFormPage from "./components/LoginFormPage";
import SignupFormPage from "./components/SignupFormPage";
import LogOutButton from "./components/LogoutButton";
import NavigationBar from "./components/NavigationBar";
import ListingsIndex from "./components/ListingsIndex";
import CreateListingPhotos from "./components/CreateListingPhotos";

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
      <Route path="/listings">
        <ListingsIndex></ListingsIndex>
      </Route>
<Route path="/create/photos">
  <CreateListingPhotos></CreateListingPhotos>
</Route>

    </Switch>
    </>

  );
}

export default App;