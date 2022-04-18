import Centercolumnlayout from "../centercolumnlayout/centercolumnlayout"
import Loginbutton from "../loginbutton/loginbutton"
import Textlink from "../textlink/textlink"

const Navbar = (props: NavbarProps) => {

  return (
    <Centercolumnlayout>
      <div className="flex flex-row justify-between m-8">
        <img src="https://ergo-unterwegs.de/wp-content/uploads/2021/02/401b845f-2c36-4b10-87cf-585399a9ddce.png" className="h-14" />
        <div className="flex flex-row items-center justify-between space-x-12">
          <Textlink text="Module" href="/" />
          <Textlink text="Über uns" href="/" />
          <Textlink text="Kontakt" href="/" />
          <Loginbutton text="Mein Konto" href="/" />
        </div>
      </div>
    </Centercolumnlayout>
  )
}

export default Navbar 