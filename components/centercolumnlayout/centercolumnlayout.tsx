
const Centercolumnlayout = (props: CentercolumnlayoutProps) => {

    return (
      <div className="flex">
        <div className='w-1/5 bg-red-200'></div>
        <div className="w-3/5 overflow-auto min-w-fit">
          {props.children}
        </div>
        <div className='w-1/5 bg-red-200'></div>
      </div>
    )
}

export default Centercolumnlayout 