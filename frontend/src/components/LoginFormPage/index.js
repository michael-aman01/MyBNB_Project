import React, { useEffect, useState } from 'react';
import * as sessionActions from '../../store/session';
import { useDispatch, useSelector } from 'react-redux';
import { NavLink, Redirect } from 'react-router-dom';
import xMark from "../../assets/iconmonstr-x-mark-1.svg"
import GithubLogo from "../../assets/github-logo.png"
import LinkedInLogo from "../../assets/linkedin.png"
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
    if(tag){
      let i = 100
      const slideIn = setInterval(() => {
        let newVal = `${i}vh`
      
        tag.style.marginTop = newVal
        i -= 1
        if(newVal === "20vh"){
          clearInterval(slideIn)
        }
      },1)

  
    }

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

  const handleDemoLogin = () => {
    setErrors([]);
    dispatch(sessionActions.login({ credential: "test@gmail.com", password: "password" }))
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
          {/* <div id="close-modal-button-container" onClick={toggleModal}>
            <img width="20px" heigh="20px" alt="" src={xMark}></img>
          </div> */}
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
            <input className="login-input-field" type="email" placeholder='Email' id="email"  value={credential} onChange={(e) => setCredential(e.target.value)}></input>
          </div>
          <div id="login-input-container" >
            <label className="login-input-hidden-label" id="password-label"> </label>
            <input className="input-field" id="password" type="password"onChange={(e) => setPassword(e.target.value)} placeholder='password' value={password}   ></input>
          </div>
          <br></br>
          <div id="login-submit-container">
            <button id="login-submit-button">
              <span>Continue</span>
            </button>
          </div>
        </form>
        </div>
        <br></br>
        <div id="login-submit-container" >
            <button id="login-submit-button" onClick={handleDemoLogin}>
              <span>Demo Login</span>
            </button>
          </div>
        <br></br>
        <div id="change-auth-container">
           <div> Not a member ?</div>
           <br></br>
           <div id="login-submit-container">
            <button id="login-submit-button">
              <span><NavLink style={{"color":"white" ,"text-decoration":"none"}} to="/signup">Sign Up</NavLink></span>
                
            </button>
          </div>
        </div>
        <br></br>
        <br></br>
        <div id="login-submit-container">
            <button id="social-media-auth-link" style={{"background-color":"white", "border":"1px solid black"}}>
            <div><img width="30px" height="30px" src={GithubLogo}></img></div>
              <div>
                <a style={{"color":"black" ,"text-decoration":"none" , "margin-left":"50px", "text-align":"center", "font-size":"20px", "padding-top":"10px"}} href="https://github.com/michael-aman01/MyBNB_Project/wiki">@michael-aman01</a>
              </div>
            </button>
            <button  id="social-media-auth-link" style={{"border":"1px solid blue", "background-color":"white"}} >
            <div><img width="30px" height="30px" src={LinkedInLogo}></img></div>
              <div>
                <a style={{"color":"#0072b1","text-decoration":"none" , "margin-left":"50px", "text-align":"center", "font-size":"20px", "padding-top":"10px"}} href="https://www.linkedin.com/in/michael-aman-ba1086258/">Michael Aman</a>
              </div>
            </button>
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