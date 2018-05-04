import React from 'react'
import Cards from '../containers/Cards'
import { connect } from 'react-redux'
import Pairing from './Pairing'

const mapStateToProps = state => {
  return {
    currentScreen: state.currentScreen
  }
}

const App = ({ currentScreen }) => {
  if (currentScreen === 'card list'){
    return <Cards />
  }
  if(currentScreen === 'pairing'){
    return <Pairing />
  } 
  return null
}

export default connect(mapStateToProps)(App)
