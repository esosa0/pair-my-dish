import React from 'react'
import Cards from '../containers/Cards'
import Pairing from './Pairing'
import { Switch, Route } from 'react-router'


const App = () =>
  <Switch>
    <Route
      path="/"
      exact={true}
      component={Cards}
    />
    <Route 
      path="/pairing"
      component={Pairing} 
    />
  </Switch>

export default App
