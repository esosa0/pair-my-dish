import React from 'react'
import {connect} from 'react-redux'
import WhiteBottle from '../../assets/images/wine_bottle_white.svg'
import PinkBottle from '../../assets/images/wine_bottle_pink.svg'
import RedBottle from '../../assets/images/wine_bottle_red.svg'
import { Link } from 'react-router-dom'
import OtherWines from './OtherWines'

const Pairing = (props) => {
  console.log("props.data:", props.data)
  const wineList = props.data
  const randomWine = (wineList[Math.floor(Math.random()*wineList.length)]);
  const wineBottle = (wine) => {
    if (wine.body < 4){
      return WhiteBottle
    }else if(wine.body > 4){
      return RedBottle
    }else{
      return PinkBottle
    }
  }

  const ShowOtherWines = ({moreThanOneWine, wineName}) => {
    if (!moreThanOneWine) {
      return null
    }
    return <OtherWines wineName={wineName}/>
  }
  
  // return props.data.map(wine => <div key={wine.id}>{wine.name}</div> )
  return(
    <section className="box">
      <h3>The name of your dish goes here</h3>
      <p>Goes well with</p>
      <h1 className="titleize pairing-name">{randomWine.name}</h1>
      <div className="pairing-bottles">
        <img src={wineBottle(randomWine)} className="pairing-bottle"/>
        <img src={wineBottle(randomWine)} className="pairing-bottle"/>
        <img src={wineBottle(randomWine)} className="pairing-bottle"/>
      </div>
      <ShowOtherWines 
        moreThanOneWine={wineList.length > 1}
        wineName={randomWine.name}
      />
      <Link to={`/`} className="next-button">Get a new pairing</Link>
    </section>
  ) 
}

const mapStateToProps = state => ({
  data: state.currentScreenData
})

export default connect(mapStateToProps)(Pairing)
