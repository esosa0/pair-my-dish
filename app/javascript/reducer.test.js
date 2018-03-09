const reducer = require('./reducer')

test('choosing an item', () => {
  const oldState = {
    questions: [{
      text: "What are you cooking?",
      choices: ["beef", "chicken"],
      currentSelections: [],
    }]
  }
  const action = { 
    type: "CHOOSE_ITEM",
    questionIndex: 0,
    choice: "beef"
  }
  const newState = reducer(oldState, action)

  console.log('old state:', oldState)
  console.log('new state:', newState)

  expect(newState.questions[0].currentSelections).toEqual(['beef'])
});