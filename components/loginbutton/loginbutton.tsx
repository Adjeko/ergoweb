import Link from "next/link"

const Loginbutton = (props: LoginbuttonProps) => {

    return (
      <Link href={props.href}>
        <a className="p-4 text-base text-white bg-yellow-500 rounded-md font-roboto w-fit">
          {props.text}
        </a>
      </Link>
    )
}

export default Loginbutton 