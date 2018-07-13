import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { createStore, applyMiddleware, compose } from 'redux'
import persistState from 'redux-localstorage'
import reducer from '../reducer'
import App from '../components/App'
import { BrowserRouter, Route } from 'react-router-dom'

const { ingredients, cooking_methods, sauces, sides } = JSON.parse(document.getElementById("initial-state-json").innerHTML)
console.log(reducer)
const enhancer = compose(persistState(["wineList", "dishName"]))
let store = createStore(reducer, {
  questions: [
    {
      text: "What are you cooking?",
      choices: ingredients,
      currentSelections: [],
    },
    {
      text: "How are you cooking it?",
      choices: cooking_methods,
      currentSelections: [], 
    },
    {
      text: "What kind of sauce are you adding?",
      choices: sauces,
      currentSelections: [], 
    },
    {
      text: "Does your dish have any of these flavors?",
      choices: sides,
      currentSelections: [], 
    },
  ],
  wineList: []//temp fix until questions can be moved into reducer
}, enhancer)

ReactDOM.render(
  <Provider store={store}>
    <BrowserRouter>
      <Route 
        path="/"
        component={App}
      />
    </BrowserRouter>
  </Provider>,
  document.getElementById('dish-app')
);


