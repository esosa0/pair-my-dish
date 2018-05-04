export const UPDATE_CURRENT_SCREEN = "actions/update-current-screen"

export const changeScreen = (screenName, data) => (console.log(screenName),{
  type: UPDATE_CURRENT_SCREEN,
  payload: {screenName, data}
})