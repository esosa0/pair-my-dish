import React from 'react'
import SingleChoiceCard from './SingleChoiceCard'
import MultiChoiceCard from './MultiChoiceCard'
import IntroCard from './IntroCard'

const CardsList = ({ questions, currentStep, goToNextStep, addToSelections, onFinalStepSubmit }) => {
  const questionElements = questions.map((question, index) => {
    const step = index+1
    if (step > currentStep) return false
    const CardItem = index === questions.length - 1
      ? MultiChoiceCard
      : SingleChoiceCard;

    const onNextClick = index === questions.length - 1
      ? onFinalStepSubmit
      : () => goToNextStep(step+1)

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
      <IntroCard 
        onNextClick={() => goToNextStep(1)}
      />
      {questionElements}
    </ul>
  )
}

export default CardsList