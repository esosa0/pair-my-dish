import React from 'react'
import Card from './Card'

const CardsList = ({ questions }) => {
  const questionElements = questions.map((question, index) =>
    <Card 
      key={index} 
      {...question} 
      step={index + 1}
    />
  )

  return (
    <ul className="card-list">
      {questionElements}
    </ul>
  )
}

export default CardsList