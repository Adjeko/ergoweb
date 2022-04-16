import Textblock from "../textblock/textblock"

const Iconcard = (props: IconcardProps) => {

    return (
      <div className={"flex items-center flex-" + props.alignment}>
        <div className="w-24 p-4 m-4 text-yellow-400 rounded-full shadow-lg ">
          {props.icon}
        </div>
      
      <Textblock title={props.title} text={props.text} alignment="center"/>
      </div>
    )
}

export default Iconcard 