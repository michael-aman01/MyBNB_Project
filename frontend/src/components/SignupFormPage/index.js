import React, { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { Redirect, useHistory } from "react-router-dom";
import * as sessionActions from "../../store/session";
import xMark from "../../assets/iconmonstr-x-mark-1.svg"

function SignupFormPage() {
  const dispatch = useDispatch();
  const sessionUser = useSelector(state => state.session.user);
  const [credential, setCredential ]= useState("");
  const [password, setPassword] = useState("");
  const [first_name, setFirstName] = useState("");
  const [last_name, setLastName] = useState("");
  const [errors, setErrors] = useState([]);
  const [show, setShow] = useState(true)
  const history = useHistory()
  console.log(show)


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
    if (password === password ) {
      setErrors([]);
      let reqParams = {
        "email":credential,
        "password":password,
        "last_name": last_name,
        "first_name" : first_name
      }
      return dispatch(sessionActions.signup(reqParams))
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
    return setErrors(['Confirm Password field must be the same as the Password field']);
  };

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
              <div >
                <img alt="" src={xMark}></img>
              </div>
            </div>
            <div>2</div>
            <div>3</div>
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
            <div className="input-container" >
              <label className="input-hidden-label" id="first-name-label">First Name </label>
              <input className="input-field" id="first-name" type="text"onChange={(e) => setFirstName(e.target.value)} placeholder='first name' value={first_name}   ></input>
            </div>
            <div className="input-container" >
              <label className="input-hidden-label" id="last-name-label">Last Name </label>
              <input className="input-field" id="last-name" type="text"onChange={(e) => setLastName(e.target.value)} placeholder='last name' value={last_name}   ></input>
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

export default SignupFormPage;