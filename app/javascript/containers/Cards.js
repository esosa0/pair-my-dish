import { connect } from 'react-redux'
import CardsList from '../components/CardsList'
import React from 'react'

class Cards extends React.Component{
  state = {
    currentStep: 1,
    selections: [],    
  }

  addToSelections = (selection, index) => {
    const selections = Object.assign([], this.state.selections, {[index]:selection})
    console.log(selections)
    this.setState({ selections })
  }

  incrementCurrentStep = () => {
    this.setState({currentStep: this.state.currentStep+1})
  }
  render(){
    return (
      <CardsList 
        questions={this.props.questions}
        currentStep={this.state.currentStep}
        goToNextStep={this.incrementCurrentStep}
        addToSelections={this.addToSelections}
      />
    )
  }
}

const mapStateToProps = state => {
  return {
    questions: state.questions
  }
}

const mapDispatchToProps = dispatch => {
  return {}
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Cards)

