import React from 'react'
import {connect} from 'react-redux'

const Pairing = (props) => {
  return props.data.map(wine => <div key={wine.id}>{wine.name}</div> )
}

const mapStateToProps = state => ({
  data: state.currentScreenData
})

export default connect(mapStateToProps)(Pairing)
