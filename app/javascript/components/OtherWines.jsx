import React from 'react'

const OtherWines = (props) => {
  console.log(props)
  return (
    <div className="other-wines">
      <p>Don't like <span className="titleize">{props.wineName}?</span></p>
      <p><span className="link" onClick={props.getNextWine}> See another wine</span> that goes nicely with your dish.</p>
    </div>
  )
}

export default OtherWines