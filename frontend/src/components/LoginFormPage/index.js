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
    let tag = document.getElementById("modal-content")
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
  

  // const showLabel = (e) => {
  //   let inputField = `${e.target.id}-label`
  //   let tag = document.getElementById(e.target.id)
  //   let label = document.getElementById(inputField)

  //   if(label.style.opacity < 0.99){
  //     let currentPercent = 1;
  //     const fadeIn = setInterval(() => {
  //       label.style.opacity = `${currentPercent}%`
  //       tag.style.opacity =  `${1 - currentPercent}%`
  //       currentPercent += 1
  //       console.log(label.style.opacity)
  //       if(currentPercent === 100){
  //         clearInterval(fadeIn)
  //       }
  //     },10)
  //   }

  // }
  // const hideLabel = (e) => {
  //   let inputField = `${e.target.id}-label`
  //   let tag = document.getElementById(e.target.id)
  //   let label = document.getElementById(inputField)
  //   if(e.target.value.length === 0){
  //     label.style.opacity = 0
  //     tag.style.opacity = 100
  //   }
  // }
  const toggleModal = () => {
    setShow(false)
    history.push("/")
  }
  if(sessionUser === null && show === true){
  return (
    <>
    
  <div id="modal">
    <div id="modal-background">
      <div id="modal-content">
        <div id="modal-header">
          <div id="close-modal-button-container" onClick={toggleModal}>
            <img src={xMark}></img>
          </div>
          <div>2</div>
        </div>
      <div id="form-container">
        <div>
          <ul>
            {errors.map(err => <li>{err}</li>)}
          </ul>
        <form onSubmit={handleSubmit}>
          <div className="input-container" >
            <label className="input-hidden-label" id="email-label">Email </label>
            <input className="input-field" type="text" placeholder='Email' id="email"  value={credential} onChange={(e) => setCredential(e.target.value)}></input>
          </div>
          <div className="input-container" >
            <label className="input-hidden-label" id="password-label">Password </label>
            <input className="input-field" id="password" type="text"onChange={(e) => setPassword(e.target.value)} placeholder='password' value={password}   ></input>
          </div>
          <br></br>
          <div id="submit-container">
            <button id="submit-button">
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
