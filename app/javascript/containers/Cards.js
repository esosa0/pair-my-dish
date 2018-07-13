import { connect } from 'react-redux'
import CardsList from '../components/CardsList'
import React from 'react'
import * as actions from '../actions'

class Cards extends React.Component{
  state = {
    currentStep: 0,    
  }

  getWines = () => {
    const [
      {id: ingredient_id},
      {id: cooking_method_id},
      {id: sauce_id},
      side_ids
    ] = this.props.selections
    return fetch('/api', {
      method: 'post',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        ingredient_id, 
        cooking_method_id,
        sauce_id,
        side_ids: side_ids.map(v => v.id)
      })
    }).then(res => res.json())
      .then(data => {
      this.props.saveWineList(data)
      this.props.history.push('/pairing')
    }, err => {
      console.log(err)
    });
  }
  
  addToSelections = (selection, index) => {
    this.props.addSelection(selection, index)
  }

  incrementCurrentStep = (index) => {
    console.log("set state")
    this.setState({currentStep: index})
  }

  render(){
    return (
      <CardsList 
        questions={this.props.questions}
        currentStep={this.state.currentStep}
        goToNextStep={this.incrementCurrentStep}
        addToSelections={this.addToSelections}
        onFinalStepSubmit={this.getWines}
      />
    )
  }
}

const mapStateToProps = state => {
  return {
    questions: state.questions,
    selections: state.selections
  }
}

const mapDispatchToProps = {
  addSelection: actions.addSelection,
  saveWineList: actions.saveWineList
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Cards)

