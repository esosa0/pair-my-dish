import React from 'react'
import Line from '../../assets/images/line.svg'
import classNames from 'classnames'
import Card from './Card'


const IntroCard = ({onNextClick}) => {
  return (
    <Card
      text={"Pair My Dish"}
      buttonText={"Get Started"}
      onNextClick={onNextClick}
      shouldScroll={false}
    />
  )
}

export default IntroCard
