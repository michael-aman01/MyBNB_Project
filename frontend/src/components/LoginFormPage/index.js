import React, { useEffect, useState } from 'react';
import * as sessionActions from '../../store/session';
import { useDispatch, useSelector } from 'react-redux';
import { Redirect } from 'react-router-dom';
import xMark from "../../assets/iconmonstr-x-mark-1.svg"
import "./LoginForm.css"
import { useHistory } from 'react-router-dom';



function LoginFormPage() {
  const dispatch = useDispatch();
  const sessionUser = useSelector(state => state.session.user);
  const [credential, setCredential] = useState('');
  const [password, setPassword] = useState('');
  const [errors, setErrors] = useState([]);
  const [show, setShow] = useState(true)
  const history = useHistory()

  useEffect(() => {
    let tag = document.getElementById("login-modal-content")
    let i = 100
    const slideIn = setInterval(() => {
      let newVal = `${i}vh`
      console.log(newVal)
      tag.style.marginTop = newVal
      i -= 1
      if(newVal === "20vh"){
        clearInterval(slideIn)
      }
    },1)
    console.log(tag.style.marginTop)

  },[])

  if (sessionUser) return <Redirect to="/listings" />;

  const handleSubmit = (e) => {
    e.preventDefault();
    setErrors([]);
    dispatch(sessionActions.login({ credential, password }))
    history.push("/listings")
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
  


  const toggleModal = () => {
    setShow(false)
    history.push("/")
  }
  if(sessionUser === null && show === true){
  return (
    <>
    
  <div id="login-modal">
    <div id="login-modal-background">
      <div id="login-modal-content">
        <div id="login-modal-header">
          <div id="close-modal-button-container" onClick={toggleModal}>
            <img width="20px" heigh="20px" alt="" src={xMark}></img>
          </div>
          <div id="login-banner">Login</div>
     
        </div>
        <br></br>
      <div id="login-form-container">
        <div>
          <ul>
            {errors.map(err => <li>{err}</li>)}
          </ul>
        <form onSubmit={handleSubmit}>
          <div id="login-input-container" >
            <label className="login-input-hidden-label" id="email-label"></label>
            <input className="login-input-field" type="text" placeholder='Email' id="email"  value={credential} onChange={(e) => setCredential(e.target.value)}></input>
          </div>
          <div id="login-input-container" >
            <label className="login-input-hidden-label" id="password-label"> </label>
            <input className="input-field" id="password" type="text"onChange={(e) => setPassword(e.target.value)} placeholder='password' value={password}   ></input>
          </div>
          <br></br>
          <div id="login-submit-container">
            <button id="login-submit-button">
              <span>Continue</span>
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
}

export default LoginFormPage;
