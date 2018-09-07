import {Pairing} from '../Pairing'
import {shallow} from 'enzyme'
import toJSON from 'enzyme-to-json'
import React from 'react'
import {connect} from 'react-redux'
import OtherWines from '../OtherWines'

describe("Pairing Component", () => {
  it("renders a default pairing component", () => {
    const component = shallow(
      <Pairing
        wineList = {[
          {
            name: "Merlot"
          }
        ]}
        dishName = {"Braised Beef with Mushroom"}
      />
    )
    expect(toJSON(component)).toMatchSnapshot()
  })

  it("renders multiple wines", () => {
    const component = shallow(
      <Pairing
        wineList = {[
          {
            name: "Merlot"
          },
          {
            name: "Pinot Gris"
          }
        ]}
        dishName = {"Braised Beef with Mushroom"}
      />
    )
    const otherWines = component.find(OtherWines)
    expect(toJSON(otherWines)).toMatchSnapshot()
  })
  
  it("renders next wine in a list when getNextWine is called", () => {
    const component = shallow(
      <Pairing
        wineList = {[
          {
            name: "Merlot"
          },
          {
            name: "Pinot Gris"
          }
        ]}
        dishName = {"Braised Beef with Mushroom"}
      />
    )
    const otherWines = component.find(OtherWines)
    otherWines.props().getNextWine()

    component.update()
    setImmediate(() => {
      expect(toJSON(component)).toMatchSnapshot()
    })
  })
})


