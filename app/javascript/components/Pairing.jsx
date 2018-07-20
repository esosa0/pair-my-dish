import React from 'react'
import {connect} from 'react-redux'
import WhiteBottle from '../../assets/images/wine_bottle_white.svg'
import PinkBottle from '../../assets/images/wine_bottle_pink.svg'
import RedBottle from '../../assets/images/wine_bottle_red.svg'
import { Link } from 'react-router-dom'
import OtherWines from './OtherWines'

class Pairing extends React.Component {
  state = { 
    currentWine: this.props.wineList[0], 
    currentWineIndex: 0
  }
  
  getWineBottle(wine) {
    if (wine.body < 4){
      return WhiteBottle
    } else if (wine.body > 4){
      return RedBottle
    } else {
      return PinkBottle
    }
  }

  setCurrentWine = () => {
    const currentWineIndex = this.state.currentWineIndex < this.props.wineList.length - 1
      ? this.state.currentWineIndex + 1
      : 0
    
    this.setState({
      currentWine: this.props.wineList[currentWineIndex], 
      currentWineIndex 
    })
  }

  render(){
    const {wineList, selections, dishName} = this.props 
    const {currentWine} = this.state

    return(
      <section className="box">
        <h3 className="capitalize dish-name">{dishName}</h3>
        <p className="dish-name-subheading">goes well with</p>
        <h1 className="titleize pairing-name">{currentWine.name}</h1>
        <div className="pairing-bottles">
          <img src={this.getWineBottle(currentWine)} className="pairing-bottle"/>
          <img src={this.getWineBottle(currentWine)} className="pairing-bottle"/>
          <img src={this.getWineBottle(currentWine)} className="pairing-bottle"/>
        </div>

        {wineList.length > 1 && 
          <OtherWines 
            wineName={currentWine.name} 
            getNextWine={this.setCurrentWine} 
          />
        }

        <Link to={`/`} className="next-button">Get a new pairing</Link>
      </section>
    ) 
  }
}

const mapStateToProps = state => ({
  wineList: state.wineList,
  selections: state.selections,
  dishName: state.dishName
})

export default connect(mapStateToProps)(Pairing)
