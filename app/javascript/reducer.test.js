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

  expect(newState.questions[0].currentSelections).toEqual(['beef'])
});