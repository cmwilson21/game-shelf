import logo from './logo.svg';
import React from 'react'
import './App.css';
import Home from './components/Home'
import NavBar from './components/NavBar'
import Login from './components/Login';
import ConsoleList from './components/ConsoleList';
import GameList from './components/GameList';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom'

function App() {
  return (
    <Router>
      <NavBar />
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/games" render={ (props) => <GameList {...props} /> } />
        <Route exact path="/consoles" render={ (props) => <ConsoleList {...props}/>} />
        <Route exact path="/login" render={ (props) => <Login {...props} />} />

      </Switch>
    </Router>
    );
}

export default App;
