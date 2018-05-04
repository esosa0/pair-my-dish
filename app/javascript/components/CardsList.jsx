import React from 'react'
import SingleChoiceCard from './SingleChoiceCard'
import MultiChoiceCard from './MultiChoiceCard'

const CardsList = ({ questions, currentStep, goToNextStep, addToSelections, onFinalStepSubmit }) => {
  const questionElements = questions.map((question, index) => {
    const step = index+1
    if (step > currentStep) return false
    
    const CardItem = index === questions.length - 1
      ? MultiChoiceCard
      : SingleChoiceCard;

    const onNextClick = index === questions.length - 1
      ? onFinalStepSubmit
      : goToNextStep

    return ( 
      <CardItem 
        key={index} 
        {...question} 
        step={step}
        onNextClick={onNextClick}
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