import { connect } from 'react-redux'
import CardsList from '../components/CardsList'

const mapStateToProps = state => {
  return {
    questions: state.questions
  }
}

const mapDispatchToProps = dispatch => {
  return {}
}

const Cards = connect(
  mapStateToProps,
  mapDispatchToProps
)(CardsList)

export default Cards