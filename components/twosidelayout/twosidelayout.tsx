
const Twosidelayout = (props: TwosidelayoutProps) => {

  return (
    <div className="grid grid-cols-2">
      <div className={""}>
        {props.children[0]}
      </div>
      <div className={""}>
        {props.children[1]}
      </div>
    </div>
  )
}

export default Twosidelayout