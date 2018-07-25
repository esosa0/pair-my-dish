import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { createStore, applyMiddleware, compose } from 'redux'
import persistState from 'redux-localstorage'
import reducer from '../reducer'
import App from '../components/App'
import ScrollToTop from '../components/ScrollToTop'
import { BrowserRouter, Route } from 'react-router-dom'
import { configureAnchors, removeHash } from '@ludois/react-scrollable-anchor'

configureAnchors({offset: 200, scrollDuration: 300})
removeHash()

const { ingredients, cooking_methods, sauces, sides } = JSON.parse(document.getElementById("initial-state-json").innerHTML)
const enhancer = compose(persistState(["wineList", "dishName"]))
let store = createStore(reducer, {
  questions: [
    {
      text: "What are you cooking?",
      choices: ingredients,
      currentSelections: [],
      slug: "main-ingredient",
    },
    {
      text: "How are you cooking it?",
      choices: cooking_methods,
      currentSelections: [],
      slug: "cooking-method", 
    },
    {
      text: "What kind of sauce are you adding?",
      choices: sauces,
      currentSelections: [], 
      slug: "sauce",
    },
    {
      text: "Does your dish have any of these flavors?",
      choices: sides,
      currentSelections: [],
      slug: "flavors" 
    },
  ],
  wineList: []//temp fix until questions can be moved into reducer
}, enhancer)

ReactDOM.render(
  <Provider store={store}>
    <BrowserRouter>
      <ScrollToTop>
        <Route 
          path="/"
          component={App}
        />
      </ScrollToTop>
    </BrowserRouter>
  </Provider>,
  document.getElementById('dish-app')
);


