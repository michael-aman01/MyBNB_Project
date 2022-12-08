import React, { useEffect } from "react";
import { Route, Switch } from "react-router-dom";
import LoginFormPage from "./components/LoginFormPage";
import SignupFormPage from "./components/SignupFormPage";
import NavigationBar from "./components/NavigationBar";
import ListingsIndex from "./components/ListingsIndex";
import ShowPage from './components/ShowPage'
import ProfilePage from "./components/ProfilePage";
import DateSelector from "./components/DateSelector";
import ReviewsIndex from './components/ReviewsIndex'
import { useSelector } from "react-redux";
import { getUser } from "./store/user";

function App() {
  const currentUser = useSelector(getUser)
  console.log(currentUser === null)
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
      <Route exact path="/">
        {
          currentUser !== null ?    <ListingsIndex></ListingsIndex> :  <LoginFormPage></LoginFormPage>
        }
      
      </Route>
      <Route exact path="/listings">
      {
          currentUser !== null ?    <ListingsIndex></ListingsIndex> :  <LoginFormPage></LoginFormPage>
        }
      
      </Route>
      <Route path={`/listings/:id`}>
        <ShowPage />
      </Route>
      <Route path="/account/:user_id">
        <ProfilePage />
      </Route>
      <Route path="/test">
        <ReviewsIndex></ReviewsIndex>
      </Route>

      

    </Switch>
    </>

  );
}

export default App;