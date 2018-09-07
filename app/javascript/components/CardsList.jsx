import React from 'react'
import SingleChoiceCard from './SingleChoiceCard'
import MultiChoiceCard from './MultiChoiceCard'
import IntroCard from './IntroCard'
import ScrollableAnchor, { goToAnchor } from '@ludois/react-scrollable-anchor'

const CardsList = ({ questions, currentStep, goToNextStep, addToSelections, onFinalStepSubmit }) => {
  console.log(questions)
  const questionElements = questions.map((question, index) => {
    const step = index+1
    if (step > currentStep) return false
    const CardItem = index === questions.length - 1
      ? MultiChoiceCard
      : SingleChoiceCard;

    const onNextClick = index === questions.length - 1
      ? onFinalStepSubmit
      : () => {
        goToNextStep(step+1)
        goToAnchor(questions[step].slug)
      }

    return ( 
      <ScrollableAnchor 
        id={question.slug}
        key={index}
        >
        <CardItem  
          {...question} 
          step={step}
          onNextClick={onNextClick}
          onChoiceSelection={addToSelections}
        />
      </ScrollableAnchor>
    )
  })
  
  return (
    <ul className="card-list">
      <IntroCard 
        onNextClick={() => {
          goToNextStep(1)
          goToAnchor(questions[0].slug)
        }}
      />
      {questionElements}
    </ul>
  )
}

export default CardsList
