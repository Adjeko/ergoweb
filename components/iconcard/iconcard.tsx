import Textblock, { TextBlockVariants } from "../textblock/textblock"

export enum IconCardVariants {
  HORIZONTAL,
  VERTICAL,
}

const Iconcard = (props: IconcardProps) => {


  let gridclasses = "";
  let text = "";

  switch (props.variant) {
    case IconCardVariants.HORIZONTAL:
      gridclasses = "grid grid-cols-[min-content_auto] place-items-start  items-center";
      text = "";
      break;
    case IconCardVariants.VERTICAL:
      gridclasses = "grid grid-rows-[min-content_min-content_auto]  place-items-center";
      text = props.text;
      break;
  }

  return (
    <div className={gridclasses}>
      <div className="w-24 p-4 m-4 text-yellow-400 bg-white rounded-full shadow-lg">
        {props.icon}
      </div>
      <Textblock title={props.title} titleTailwindStyling={props.titleTailwindStyling} text={text} textTailwindStyling={props.textTailwindStyling} variant={TextBlockVariants.CENTER} />
    </div>
  )
}

export default Iconcard 