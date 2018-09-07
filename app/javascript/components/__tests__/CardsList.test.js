import CardsList from '../CardsList'
import {shallow, mount} from 'enzyme'
import toJSON from 'enzyme-to-json'
import React from 'react'

describe("CardsList Component", () => {
  it("renders a default cards list", () => {
    const questions = [
      {
        text: "What are you cooking?",
        choices: [
          {
            name: "fish",
            id: "1",
          }
        ],
        currentSelections: [],
        slug: "main-ingredient",
      },
      {
        text: "How are you cooking it?",
        choices: [
          {
            name: "fish",
            id: "1",
          }
        ],
        currentSelections: [],
        slug: "cooking-method", 
      },
    ]
    const component = shallow(<CardsList questions = {questions} />)
    expect(toJSON(component)).toMatchSnapshot()
  })
})
