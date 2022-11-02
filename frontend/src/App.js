import React from "react";
import { Route, Switch } from "react-router-dom";
import LoginFormPage from "./components/LoginFormPage";
import SignupFormPage from "./components/SignupFormPage";
import LogOutButton from "./components/LogoutButton";
import NavigationBar from "./components/NavigationBar";
import ListingsIndex from "./components/ListingsIndex";

function App() {
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


    </Switch>
    </>

  );
}

export default App;