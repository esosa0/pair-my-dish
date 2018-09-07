import Card from '../Card'
import {shallow} from 'enzyme'
import toJSON from 'enzyme-to-json'
import React from 'react'

describe("Card Component", () => {
  it("renders a default card", () => {
    const component = shallow(<Card/>)
    expect(toJSON(component)).toMatchSnapshot()
  })
})
