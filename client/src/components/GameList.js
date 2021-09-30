import React, {useState, useEffect} from 'react'
import { NavLink } from 'react-router-dom'

const GameList = () => {
  const [games, setGames] = useState([])

  useEffect(() => {
    // clearErrors();
    fetch('http://localhost:3000/games')
      .then(resp => resp.json())
      .then(data => setGames(data))
  }, [])

  const gameLis = games.map((game) => <li key={game.id}><NavLink to={`/games/${ game.id }`}>{ game.name} </NavLink> - {game.genre}</li>)




  return (
    <div>
      <h3>Games on the Shelf</h3>
      <ul>
      {gameLis}
      </ul>
    </div>
  )
}

export default GameList
