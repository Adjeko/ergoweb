import React from 'react'
import Navbar from './navbar'

export default{
    component: Navbar,
    title: 'Navbar',
}

const DefaultTemplate = (args : NavbarProps) => (
    <Navbar />
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : NavbarProps= {
}
Default.args = defaultArgs