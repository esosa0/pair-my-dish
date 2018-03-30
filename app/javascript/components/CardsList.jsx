import React from 'react'
import Card from './Card'

const CardsList = ({ questions, currentStep, goToNextStep }) => {
  const questionElements = questions.map((question, index) => {
    const step = index+1
    if (step > currentStep) return false
    return ( 
      <Card 
        key={index} 
        {...question} 
        step={step}
        onNextClick={goToNextStep}
      />
    )
  })
  
  return (
    <ul className="card-list">
      {questionElements}
    </ul>
  )
}

export default CardsList