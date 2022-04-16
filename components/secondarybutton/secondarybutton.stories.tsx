import React from 'react'
import Secondarybutton from './secondarybutton'

export default{
    component: Secondarybutton,
    title: 'Buttons/Secondarybutton',
}

const DefaultTemplate = (args : SecondarybuttonProps) => (
    <div className='p-10 bg-blue-400'>
        <Secondarybutton text={args.text} href={args.href}/>
    </div>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : SecondarybuttonProps= {
    text: "Jetzt kostenlos buchen",
    href: "/",
}
Default.args = defaultArgs