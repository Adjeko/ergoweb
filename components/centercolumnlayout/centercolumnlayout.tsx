
const Centercolumnlayout = (props: CentercolumnlayoutProps) => {

    return (
      <div className="grid grid-cols-[1fr_1000px_1fr]">
        <div className=''></div>
        <div className="">
          {props.children}
        </div>
        <div className=''></div>
      </div>
    )
}

export default Centercolumnlayout 