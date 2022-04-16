import React from 'react'
import Centercolumnlayout from './centercolumnlayout'

export default{
    component: Centercolumnlayout,
    title: 'Centercolumnlayout',
}

const DefaultTemplate = (args : CentercolumnlayoutProps) => (
    <Centercolumnlayout> 
        {args.children}
    </Centercolumnlayout>
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : CentercolumnlayoutProps= {
    children: <div className='w-full h-full min-w-full min-h-full bg-green-500'> Hallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo WeltHallo Welt </div>
}
Default.args = defaultArgs