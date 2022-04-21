import Loginbutton from "../loginbutton/loginbutton"
import Textlink from "../textlink/textlink"

const Footer = (props: FooterProps) => {

    return (
      <div className="grid w-screen grid-cols-4 pt-16 bg-blue-900 h-96">
        <div className="">
          <img src="https://ergo-unterwegs.de/wp-content/uploads/2021/02/ErgoUnterwegs.png" className="h-20 ml-12"/>
        </div>

        <div className="">
          <div className="mb-12 text-xl font-bold text-white font-roboto">Folge uns</div>
          <Loginbutton text="Newsletter" href=""/>
        </div>

        <div className="flex flex-col gap-3">
          <div className="mb-4 text-xl font-bold text-white font-roboto">Links</div>
          <Textlink text="Impressum" textTailwindStyling="text-white" href=""/>
          <Textlink text="Datenschutz" textTailwindStyling="text-white" href=""/>
          <Textlink text="AGB" textTailwindStyling="text-white" href=""/>
        </div>

        <div className="flex flex-col gap-3">
          <div className="mb-4 text-xl font-bold text-white font-roboto">Kontaktinformation</div>
          <div className="text-base text-white font-roboto">Schönbornstr. 57, 76646 Bruchsal</div>
          <div className="text-base text-white font-roboto">0157 - 868 077 96</div>
          <div className="text-base text-white font-roboto">info@ergo-unterwegs.de</div>
        </div>

        <div className="flex items-end justify-center col-span-4 mb-8 text-white font-roboto"> 2021 Ergo Unterwegs. All rights reserved </div>
      </div>
    )
}

export default Footer 