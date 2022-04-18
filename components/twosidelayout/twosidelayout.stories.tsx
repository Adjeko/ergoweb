import React from 'react'
import Twosidelayout from './twosidelayout'

export default{
    component: Twosidelayout,
    title: 'Twosidelayout',
}

const DefaultTemplate = (args : TwosidelayoutProps) => (
    <Twosidelayout>
        {args.children}
    </Twosidelayout>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : TwosidelayoutProps= {
    children: [<div className='w-full h-full min-w-full min-h-full bg-red-300'>Hallo Links</div>,
                <div className='w-full h-full min-w-full min-h-full bg-green-300'>Hallo Rechts</div>],
}
Default.args = defaultArgs