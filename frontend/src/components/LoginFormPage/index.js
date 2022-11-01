import React, { useState } from 'react';
import * as sessionActions from '../../store/session';
import { useDispatch, useSelector } from 'react-redux';
import { Redirect } from 'react-router-dom';
import "./LoginForm.css"
function LoginFormPage() {
  const dispatch = useDispatch();
  const sessionUser = useSelector(state => state.session.user);
  const [credential, setCredential] = useState('');
  const [password, setPassword] = useState('');
  const [errors, setErrors] = useState([]);

  if (sessionUser) return <Redirect to="/" />;

  const handleSubmit = (e) => {
    e.preventDefault();
    setErrors([]);
    return dispatch(sessionActions.login({ credential, password }))
      .catch(async (res) => {
        let data;
        try {
          // .clone() essentially allows you to read the response body twice
          data = await res.clone().json();
        } catch {
          data = await res.text(); // Will hit this case if the server is down
        }
        if (data?.errors) setErrors(data.errors);
        else if (data) setErrors([data]);
        else setErrors([res.statusText]);
      });
  }

  const showLabel = (e) => {
    let inputField = `${e.target.id}-label`
    let tag = document.getElementById(e.target.id)
    let label = document.getElementById(inputField)
    if(label.style.opacity < 0.99){
      let currentPercent = 1;
      const fadeIn = setInterval(() => {
        label.style.opacity = `${currentPercent}%`
        currentPercent += 1
        console.log(label.style.opacity)
        if(currentPercent === 100){
          clearInterval(fadeIn)
        }
      },1)
    }

  }
  const hideLabel = (e) => {
    let inputField = `${e.target.id}-label`
    let tag = document.getElementById(e.target.id)
    let label = document.getElementById(inputField)
    if(e.target.value.length === 0){
      label.style.opacity = 0
    }
  }
  return (
    <>
    

  <div id="modal">
    <div id="modal-background">
      <div id="modal-content">

      <div id="form-container">
        <div>
        <form>
          <div id="email-container" >
            <label className="input-hidden-label" id="email-label" for="email">Email </label>
            <input className="input-field" type="text" placeholder='Email' id="email"  onBlur={hideLabel} onClick={showLabel} ></input>
          </div>
          <br></br>
          <div id="submit-container">
            <button id="submit-button">
              <span>Submit</span>
            </button>
          </div>
        </form>
        </div>
      </div>
      </div>
    </div>  
    </div>
    </>
  );
}

export default LoginFormPage;
