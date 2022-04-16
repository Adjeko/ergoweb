import React from 'react'
import Mainbutton from './mainbutton'

export default{
    component: Mainbutton,
    title: 'Buttons/Mainbutton',
}

const DefaultTemplate = (args : MainbuttonProps) => (
    <Mainbutton text={args.text} href={args.href}/>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : MainbuttonProps= {
    text: "zu den Modulen",
    href: "/",
}
Default.args = defaultArgs