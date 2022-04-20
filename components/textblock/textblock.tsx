
export enum TextBlockVariants {
  CENTER,
  LEFT,
}

const Textblock = (props: TextblockProps) => {

  let textalignment = "";

  switch (props.variant) {
    case TextBlockVariants.CENTER:
      textalignment = "text-center";
      break;
    case TextBlockVariants.LEFT:
      textalignment = "text-left";
      break;
  }


  return (
    <>
      <h1 className={"font-roboto text-[#1a264a] font-semibold " + textalignment + " " + props.titleTailwindStyling}>
        {props.title}
      </h1>
      <p className={"font-roboto text-[#1a264a] font-semibold " + textalignment + " " + props.textTailwindStyling}>
        {props.text}
      </p>
    </>
  )
}

export default Textblock 