import React from 'react'
import Line from '../../assets/images/line.svg'
import classNames from 'classnames'


class Card extends React.Component {

  getRef = (node) => this.nodeRef = node
  componentDidMount(){
    this.nodeRef.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"})
  }

  render(){
    return (
      <li className="card" ref={this.getRef}>
        <img className="line" src={Line}/>
        <div className="box">
          <div className="question-step">
            {this.props.step}
          </div>
          <h2 className="question-text">
            {this.props.text}
          </h2>
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


