import { connect } from 'react-redux'
import CardsList from '../components/CardsList'
import React from 'react'
import * as actions from '../actions'
import { goToTop } from '@ludois/react-scrollable-anchor'

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
		this.props.saveWineList({
			ingredient_id, 
			cooking_method_id,
			sauce_id,
			side_ids: side_ids.map(v => v.id)
		}).then(() => {
			this.props.history.push('/pairing')
		})
  }

  addToSelections = (selection, index) => {
    this.props.addSelection(selection, index)
  }

  incrementCurrentStep = (index) => {
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

