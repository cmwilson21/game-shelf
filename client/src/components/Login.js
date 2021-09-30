import React from 'react'
import { useState } from 'react'

const Login = () => {
  const [state, setState] = useState({
    username: "",
    password: ""
  })

  function handleSubmit(e) {
    e.preventDefault()
    fetch('http//localhost:4000/login', {
      method: 'POST',
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: JSON.stringify(state)
    })
  }

  function handleChange(e) {
    setState({
      ...state,
      [e.target.name]: e.target.value
    })
  }



  return (
    <div>
      <form onSubmit={handleSubmit}>
        <label htmlFor="username">Username: </label>
        <input type="text" name="username" value={state.username} onChange={handleChange} /> <br /> <br />
        <label htmlFor="password">Password: </label>
        <input type="password" name="password" value={state.password} onChange={handleChange} /> <br />
        <input type="submit" />
      </form>

    </div>
  )
}

export default Login
