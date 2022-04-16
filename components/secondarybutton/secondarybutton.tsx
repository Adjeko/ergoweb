import Link from "next/link"

const Secondarybutton = (props: SecondarybuttonProps) => {

    return (
      <Link href={props.href}>
        <a className="p-4 text-base text-white bg-transparent border-4 border-white border-solid rounded-3xl font-roboto w-fit">
          {props.text}
        </a>
      </Link>
    )
}

export default Secondarybutton 