import React from 'react'
import Line from '../../assets/images/line.svg'
import WhiteBottle from '../../assets/images/wine_bottle_white_question.svg'
import PinkBottle from '../../assets/images/wine_bottle_pink_question.svg'
import RedBottle from '../../assets/images/wine_bottle_red_question.svg'
import classNames from 'classnames'
import Card from './Card'


const IntroCard = ({onNextClick}) => {
  return (
    <Card
      text={"Pair My Dish"}
      buttonText={"Get Started"}
      onNextClick={onNextClick}
      shouldScroll={false}
      blurb={"We choose the perfect wine for your dish using pairing techniques from top sommeliers."}
    >
      <img src={WhiteBottle} className="wine-bottle"/>
      <img src={PinkBottle} className="wine-bottle"/>
      <img src={RedBottle} className="wine-bottle"/>
    </Card>
  )
}

export default IntroCard
