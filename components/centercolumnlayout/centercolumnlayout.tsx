
const Centercolumnlayout = (props: CentercolumnlayoutProps) => {

    return (
      <div className="flex flex-row">
        <div className='w-1/5'></div>
        <div className="w-3/5 overflow-auto min-w-fit">
          {props.children}
        </div>
        <div className='w-1/5 '></div>
      </div>
    )
}

export default Centercolumnlayout 