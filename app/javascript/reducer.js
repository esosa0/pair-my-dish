const {PUSH_SELECTION, PUSH_WINE_LIST} = require('./actions')

const initialState = {selections: [], wineList: []}
module.exports = function reducer(state = initialState, action) {
  switch(action.type) {
    case PUSH_SELECTION:
      const selections = Object.assign([], state.selections, {[action.meta.index]:action.payload.selection})
      return {
        ...state,
        selections
      }
    case PUSH_WINE_LIST:
      const wineList = action.payload.wineList
      const dishName = buildDishName(state.selections)
      return {
        ...state,
        wineList,
        dishName
      }
    default:
      return state;
  }
}

const buildDishName = (selections) => {
  const [
    {name: ingredient},
    {name: cookingMethod},
    {name: sauce},
    sidesList
  ] = selections 
  const sidesNames = sidesList.map(v => v.name)
  let sides = sidesNames.join(", ")
  if (sidesNames.length > 1) {
    const length = sidesNames.length
    const oxfordComma = length > 2 ? ',' : ''
    const last = sidesNames.pop();
    sides = `${sidesNames.join(', ')}${oxfordComma} and ${last}`
  }
  return `${cookingMethod} ${ingredient} in ${sauce} with ${sides}`
}