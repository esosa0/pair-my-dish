import OtherWines from '../OtherWines'
import {shallow} from 'enzyme'
import toJSON from 'enzyme-to-json'
import React from 'react'

describe("OtherWines Component", () => {
  it("renders a default OtherWines component", () => {
    const component = shallow(<OtherWines/>)
    expect(toJSON(component)).toMatchSnapshot()
  })
})
