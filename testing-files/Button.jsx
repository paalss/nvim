
const a = 1;
const b = 2
// const c = 3;
// const d = 4







export const Button = ({ children }) => {
  return (
    <button onClick={()=> console.log('Blablabla')}>
            <span>mmmmmmmmmmmmmm</span>
      {children}
    </button>
  )
}

export const Input = () => {
  return (
    <input
      id="burger"
      value="Blablablba"
      name="burbur"
      style={{border: "1px solid red"}}
      type="button"
      onClick={()=>console.log("Hei og hå")}
    />
  )
}
