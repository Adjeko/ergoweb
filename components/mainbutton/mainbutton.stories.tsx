import React from 'react'
import Mainbutton from './mainbutton'

export default{
    component: Mainbutton,
    title: 'Mainbutton',
}

const DefaultTemplate = (args : MainbuttonProps) => (
    <Mainbutton />
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : MainbuttonProps= {
}
Default.args = defaultArgs