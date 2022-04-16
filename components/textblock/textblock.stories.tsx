import React from 'react'
import Textblock from './textblock'

export default{
    component: Textblock,
    title: 'Textblock',
}

const DefaultTemplate = (args : TextblockProps) => (
    <Textblock title={args.title} text={args.text} alignment={args.alignment}/>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : TextblockProps= {
    title: "Unsere Module",
    text: "Wir bieten euch über unsere Online-Module innovative und flexible Werkzeuge, um in eurer Praxis betätigungsorientiert, klientenzentriert und evidenzbasiert zu arbeiten. Macht euch gemeinsam mit eurem Team auf den Weg!",
    alignment: "center",
}
Default.args = defaultArgs