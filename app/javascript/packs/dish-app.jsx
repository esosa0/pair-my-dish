import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { createStore } from 'redux'
import reducer from '../reducer'
import VisibleScreen from '../containers/VisibleScreen'

const { ingredients, cooking_methods, sauces, aromas } = JSON.parse(document.getElementById("initial-state-json").innerHTML)

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
      choices: aromas,
      currentSelections: [], 
    },
  ],
  currentScreen: "card list"
})

ReactDOM.render(
  <Provider store={store}>
    <VisibleScreen />
  </Provider>,
  document.getElementById('dish-app')
);


