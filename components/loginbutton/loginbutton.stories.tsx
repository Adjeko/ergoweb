import React from 'react'
import Loginbutton from './loginbutton'

export default{
    component: Loginbutton,
    title: 'Buttons/Loginbutton',
}

const DefaultTemplate = (args : LoginbuttonProps) => (
    <Loginbutton text={args.text} href={args.href}/>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : LoginbuttonProps= {
    text: "Mein Konto",
    href: "/",
}
Default.args = defaultArgs