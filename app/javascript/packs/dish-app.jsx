import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { createStore } from 'redux'
import reducer from '../reducer'
import VisibleScreen from '../containers/VisibleScreen'
 
let store = createStore(reducer, {
  questions: [{
    text: "What are you cooking?",
    choices: ["beef", "chicken"],
    currentSelections: [],
  }],
  currentScreen: "introduction"
})

ReactDOM.render(
  <Provider store={store}>
    <VisibleScreen />
  </Provider>,
  document.getElementById('dish-app')
);

//parse json to get intial state
// JSON.parse(document.getElementById("initial-state-json").innerHTML)
