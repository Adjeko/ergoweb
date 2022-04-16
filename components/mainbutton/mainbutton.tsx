import Link from "next/link"
import { isArgumentsObject } from "util/types"

const Mainbutton = (props: MainbuttonProps) => {

    return (

      <Link href={props.href}>
        <a className="p-4 text-[#1a264a] bg-yellow-500 rounded-3xl text-base font-roboto w-fit">
          {props.text}
        </a>
      </Link>
    )
}

export default Mainbutton 