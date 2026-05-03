import logo from './logo.svg';
import { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);
  const [value, setValue] = useState(0);

  return (
    <div className="App">
      Hi shashikant
      <div className="counter">
        <p>You clicked {count} times</p>
        <button onClick={() => setCount(count + 1)}>Click me to count</button>
      </div>
      <div className="counter">
        <p>You clicked {value} times</p>
        <button onClick={() => { setValue(value + 10) }}>Click me to add 10</button>
      </div>
    </div>
  );
}

export default App;