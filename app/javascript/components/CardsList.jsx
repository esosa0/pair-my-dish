import React from 'react'
import SingleChoiceCard from './SingleChoiceCard'
import MultiChoiceCard from './MultiChoiceCard'

const CardsList = ({ questions, currentStep, goToNextStep, addToSelections }) => {
  const questionElements = questions.map((question, index) => {
    const step = index+1
    if (step > currentStep) return false
    
    const CardItem = index === questions.length - 1
       ? MultiChoiceCard
       : SingleChoiceCard;

    return ( 
      <CardItem 
        key={index} 
        {...question} 
        step={step}
        onNextClick={goToNextStep}
        onChoiceSelection={addToSelections}
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