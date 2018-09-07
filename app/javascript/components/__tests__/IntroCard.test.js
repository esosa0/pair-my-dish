import IntroCard from '../IntroCard'
import {shallow} from 'enzyme'
import toJSON from 'enzyme-to-json'
import React from 'react'
import {connect} from 'react-redux'

describe("IntroCard Component", () => {
  it("renders a default intro card", () => {
    const component = shallow(<IntroCard/>)
    expect(toJSON(component)).toMatchSnapshot()
  })
})
