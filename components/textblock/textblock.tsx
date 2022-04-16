
const Textblock = (props: TextblockProps) => {

    return (
      <>
        <h1 className={"font-roboto text-2xl text-[#1a264a] font-semibold text-" + props.alignment}>
          {props.title}
        </h1>
        <p className={"font-roboto text-lg text-[#1a264a] font-semibold text-" + props.alignment}>
          {props.text}
        </p>
      </>
    )
}

export default Textblock 