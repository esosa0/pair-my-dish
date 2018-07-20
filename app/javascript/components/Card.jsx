import React from 'react'
import Line from '../../assets/images/line.svg'
import classNames from 'classnames'


class Card extends React.Component {
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
          <p>
            {this.props.blurb}
          </p>
          <div className="choices">
            {this.props.children}
          </div>
          <button 
            className={classNames("next-button", {
              "next-button--disabled": this.props.preventsNextClick
            })}  
            type="button" 
            onClick={this.props.onNextClick} 
            disabled={this.props.preventsNextClick}
            >
            {this.props.buttonText}
          </button>
        </div>
      </li>
    )
  }
}

export default Card 


