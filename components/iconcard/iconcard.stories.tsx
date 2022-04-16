import React from 'react'
import Iconcard from './iconcard'
import { LightBulbIcon } from '@heroicons/react/outline'

export default{
    component: Iconcard,
    title: 'Iconcard',
}

const DefaultTemplate = (args : IconcardProps) => (
    <Iconcard title={args.title} text={args.text} icon={args.icon} alignment={args.alignment}/>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : IconcardProps= {
    title: "Unsere Module",
    text: "Wir bieten euch über unsere Online-Module innovative und flexible Werkzeuge, um in eurer Praxis betätigungsorientiert, klientenzentriert und evidenzbasiert zu arbeiten. Macht euch gemeinsam mit eurem Team auf den Weg!",
    icon: <LightBulbIcon/>,
    alignment: "col",
}
Default.args = defaultArgs