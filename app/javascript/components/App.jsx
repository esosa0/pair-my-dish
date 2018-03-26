import React from 'react'
import Cards from '../containers/Cards'

const App = ({ currentScreen }) => {
  if (currentScreen === 'card list'){
    return <Cards />
  }

}

export default App