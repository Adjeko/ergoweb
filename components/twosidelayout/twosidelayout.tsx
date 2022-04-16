
const Twosidelayout = (props: TwosidelayoutProps) => {

    let leftSide = Math.floor(props.ratio);
    let rightSide = Math.floor(100 - props.ratio);
        
    return (
      <div className="flex w-screen bg-slate-200">
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

{/* <div className="flex w-screen bg-slate-200">
        <div className="w-[15%]">
        {props.children[0]}
        </div>
        <div className="w-[83.3%]">
        {props.children[1]}
        </div>
      </div> */}


{/* <div className="flex w-screen bg-slate-200">
        <div className={"w-[" + leftSide + "%]"}>
        {props.children[0]}
        </div>
        <div className={"w-[" + rightSide + "%]"}>
        {props.children[1]}
        </div>
      </div> */}