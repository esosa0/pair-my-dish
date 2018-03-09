module.exports = function reducer (state, action) {
  if (action.type === 'CHOOSE_ITEM') {
    return {
      ...state,
      questions: state.questions.map((question, index) => {
        if (index !== action.questionIndex) { return question }
        return {
          ...question,
          currentSelections: question.currentSelections.concat(action.choice)
        }
      })
    }
  }
  return state
}