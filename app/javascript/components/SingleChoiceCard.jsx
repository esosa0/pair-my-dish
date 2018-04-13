import React from 'react'
import Line from '../../assets/images/line.svg'
import classNames from 'classnames'
import Card from './Card'

class SingleChoiceCard extends React.Component {

  static defaultProps = {
    buttonText: "Next"
  }

  state = {
    selectedChoice: ""
  }

  selectChoice = (id) => {
    this.setState({selectedChoice: id})
    this.props.onChoiceSelection(id, this.props.step-1)
  }

  render(){
    return (
      <Card
        step={this.props.step}
        text={this.props.text}
        buttonText={this.props.buttonText}
        onNextClick={this.props.onNextClick}
      >
        {this.props.choices.map(({id, name}) =>
          <label 
            key = {id}
            className={classNames("radio-style", {
              "active": id===this.state.selectedChoice
            })} 
          >
            <input 
              type="radio"
              value={id} name={`question${this.props.step}`} 
              className="ingredient-question-button" 
              onChange={(event) => this.selectChoice(id)}
            />
            {name}
          </label>
        )}
      </Card>
    )
  }
}

export default SingleChoiceCard 


