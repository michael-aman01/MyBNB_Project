import React, { useEffect } from "react";
import { Route, Switch } from "react-router-dom";
import SignUpFormPage from './components/SignUpFormPage'
import NavigationBar from "./components/NavigationBar";
import ListingsIndex from "./components/ListingsIndex";
import ShowPage from './components/ShowPage'
import ProfilePage from "./components/ProfilePage";
import LoginFormPage from "./components/LoginFormPage";
import { useSelector } from "react-redux";
import { getUser } from "./store/user";
import ReactGA from 'react-ga'

import SearchResults from "./components/SearchResults";

function App() {
  ReactGA.pageview(window.location.pathname + window.location.search);
  const currentUser = useSelector(getUser)
  ReactGA.initialize(process.env.REACT_APP_GA)

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
        <LoginFormPage type={"login"}></LoginFormPage>
      </Route>
      <Route path="/signup">
        <SignUpFormPage type={"Sign Up"}></SignUpFormPage>
      </Route>
      <Route exact path="/">
        {
          currentUser !== null ?    <ListingsIndex></ListingsIndex> :   <LoginFormPage type={"login"}></LoginFormPage>
        }
      
      </Route>
      <Route exact path="/listings">
      {
          currentUser !== null ?    <ListingsIndex></ListingsIndex> :   <LoginFormPage type={"login"}></LoginFormPage>
        }

      </Route>
      <Route path={`/listings/:id`}>
      {
          currentUser !== null ?    <ShowPage /> :    <LoginFormPage type={"login"}></LoginFormPage>
        }

      </Route>
      <Route path="/account/:user_id">
      {
          currentUser !== null ?           <ProfilePage /> :    <LoginFormPage type={"login"}></LoginFormPage>
        }


      </Route>

      <Route path="/search/:search_params">
      {
          currentUser !== null ?       <SearchResults></SearchResults> :  <LoginFormPage type={"login"}></LoginFormPage>
        }

      </Route>

    </Switch>
    </>

  );
}

export default App;