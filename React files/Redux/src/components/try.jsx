import React from 'react'
import { useSelector, useDispatch } from 'react-redux'

const Try = () => {
  const count = useSelector((state) => state.counter.value)
  return (
    <div> The try of redux {count} </div>
  )
}

export default Try