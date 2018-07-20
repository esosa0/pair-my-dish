export const PUSH_SELECTION = "actions/push-selection"
export const PUSH_WINE_LIST = "actions/push-wine-list"

export const addSelection = (selection, index) => ({
  type: PUSH_SELECTION,
  payload: {selection}, 
  meta: {index}
})

export const saveWineList = (wineList) => ({
  type: PUSH_WINE_LIST,
  payload: {wineList}
})