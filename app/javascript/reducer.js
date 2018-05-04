const {UPDATE_CURRENT_SCREEN} = require('./actions')

module.exports = function reducer(state, action) {
  switch(action.type) {
    case UPDATE_CURRENT_SCREEN:
      return {
        ...state,
        currentScreen: action.payload.screenName,
        currentScreenData: action.payload.data
      }
    default:
      return state;
  }
}