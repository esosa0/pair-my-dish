import { connect } from 'react-redux'
import App from '../components/App'

const mapStateToProps = state => {
  return {
    currentScreen: state.currentScreen
  }
}

const mapDispatchToProps = dispatch => {
  return {}
}

const VisibleScreen = connect(
  mapStateToProps,
  mapDispatchToProps
)(App)

export default VisibleScreen