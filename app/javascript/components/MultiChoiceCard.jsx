import React from 'react'
import Line from '../../assets/images/line.svg'
import classNames from 'classnames'
import Card from './Card'


class MultiChoiceCard extends React.Component {
  static defaultProps = {
    buttonText: "Pair My Dish"
  }
  state = {
    selectedChoices: []
  }

  selectChoices = (id, event) => {
    const selectedChoices = [...this.state.selectedChoices]
    if (event.target.checked){
      selectedChoices.push(id)
    } else {
      const index = selectedChoices.indexOf(id)
      selectedChoices.splice(index, 1)
    }
    this.setState({selectedChoices})
    this.props.onChoiceSelection(selectedChoices, this.props.step-1)
  }

  render(){
    return (
      <Card
        step={this.props.step}
        text={this.props.text}
        buttonText={this.props.buttonText}
        onNextClick={this.props.onNextClick}
        preventsNextClick={!Boolean(this.state.selectedChoices.length)}

      >
        {this.props.choices.map(({id, name}) =>
          <label 
            key = {id}
            className={classNames("radio-style", {
              "active": this.state.selectedChoices.includes(id)
            })} 
          >
            <input 
              type="checkbox"
              value={id} name={`question${this.props.step}`} 
              className="ingredient-question-button" 
              onChange={(event) => this.selectChoices(id, event)}
            />
            {name}
          </label>
        )}
      </Card>
    )
  }
}

export default MultiChoiceCard 


