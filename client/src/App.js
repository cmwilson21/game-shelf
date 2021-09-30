import logo from './logo.svg';
import React from 'react'
import './App.css';
import Home from './components/Home'
import NavBar from './components/NavBar'
import GameList from './components/GameList';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom'

function App() {
  return (
    <Router>
      <NavBar />
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/games" render={ (props) => <GameList {...props} /> } />


      </Switch>
    </Router>
    );
}

export default App;
