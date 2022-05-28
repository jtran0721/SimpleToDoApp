import React from 'react';
import './App.css';
import TodoList from './components/TodoList';

function App() {
  return (
    <div className='todo-app'>
      <TodoList />
      <br/>
      <h3>Jane's to do list!</h3>
    </div>
    
  );
}

export default App;