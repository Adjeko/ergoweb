import Link from "next/link"

const Secondarybutton = (props: SecondarybuttonProps) => {

    return (
      <div className="p-4 bg-transparent border-4 border-white border-solid rounded-full w-fit ">
      <Link href={props.href}>
        <a className="text-base text-white font-roboto">
          {props.text}
        </a>
      </Link>
      </div>
    )
}

export default Secondarybutton 