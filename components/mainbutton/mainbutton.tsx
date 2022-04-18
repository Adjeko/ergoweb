import Link from "next/link"

const Mainbutton = (props: MainbuttonProps) => {

  return (
    <div className="p-4 bg-yellow-500 rounded-full w-fit">
      <Link href={props.href}>
        <a className="text-[#1a264a] text-base font-roboto">
          {props.text}
        </a>
      </Link>
    </div>
  )
}

export default Mainbutton 