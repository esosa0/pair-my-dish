export const PUSH_SELECTION = "actions/push-selection"
export const PUSH_WINE_LIST = "actions/push-wine-list"

export const addSelection = (selection, index) => ({
  type: PUSH_SELECTION,
  payload: {selection}, 
  meta: {index}
})

export const saveWineList = (recipe) => (dispatch, getState) => {
	console.log(getState())
	return fetch('/api', {
		method: 'post',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(recipe)
	}).then(res => res.json())
		.then(data => {
			dispatch({
				type: PUSH_WINE_LIST,
				payload: {wineList:data}
			})

		}, err => {
			console.log(err)
		});
}
