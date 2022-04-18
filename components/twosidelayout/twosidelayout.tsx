
const Twosidelayout = (props: TwosidelayoutProps) => {

    let leftSide = Math.floor(props.ratio);
    let rightSide = Math.floor(100 - props.ratio);
        
    return (
      <div className="flex w-screen">
        <div className={"w-[" + leftSide + "%]"}>
        {props.children[0]}
        </div>
        <div className={"w-[" + rightSide + "%]"}>
        {props.children[1]}
        </div>
      </div>
    )
}

export default Twosidelayout