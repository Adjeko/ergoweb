import React from 'react'
import Textlink from './textlink'

export default{
    component: Textlink,
    title: 'Textlink',
}

const DefaultTemplate = (args : TextlinkProps) => (
    <Textlink text={args.text} href={args.href}/>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : TextlinkProps= {
    text: "Jetzt kostenlos buchen",
    href: "/",
}
Default.args = defaultArgs