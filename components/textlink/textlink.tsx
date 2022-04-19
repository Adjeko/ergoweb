import Link from "next/link"

const Textlink = (props: TextlinkProps) => {

    return (
      <Link href={props.href}>
        <a className="text-base text-black transition-all duration-300 ease-in-out font-roboto w-fit hover:text-yellow-400 hover:underline">
          {props.text}
        </a>
      </Link>
    )
}

export default Textlink 