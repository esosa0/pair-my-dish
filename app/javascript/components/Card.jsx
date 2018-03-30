import React from 'react'
import Line from '../../assets/images/line.svg'
import classNames from 'classnames'


class Card extends React.Component {
  static defaultProps = {
    buttonText: "Next"
  }
  state = {
    currentSelections: [],
    selectedChoice: ""
  }

  selectChoice = choice => {
    console.log(choice)
    this.setState({selectedChoice: choice})
  }

  render(){
    return (
      <li className="card">
        <img className="line" src={Line}/>
        <div className="box">
          <div className="question-step">
            {this.props.step}
          </div>
          <h2 className="question-text">
            {this.props.text}
          </h2>
          <div className="choices">
            {this.props.choices.map((choice,index) =>
              <label 
                className={classNames("radio-style", {
                  "active": choice===this.state.selectedChoice
                })} 
                onClick={() => this.selectChoice(choice)}>
                <input type="radio" value={choice} name={`question${this.props.step}`} className="ingredient-question-button" />
                {choice}
              </label>
            )}
          </div>
          <button id="side-question-button" onClick={this.props.onNextClick}>
            {this.props.buttonText}
          </button>
        </div>
      </li>
    )
  }
}

export default Card 


