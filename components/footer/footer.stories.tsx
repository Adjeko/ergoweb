import React from 'react'
import Footer from './footer'

export default{
    component: Footer,
    title: 'Footer',
}

const DefaultTemplate = (args : FooterProps) => (
    <Footer />
)

export const Default = DefaultTemplate.bind({})

let defaultArgs : FooterProps= {
}
Default.args = defaultArgs