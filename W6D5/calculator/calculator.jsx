import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.reset.bind(this);
  }

  //your code here

  setNum1(event) {
    event.preventDefault();
    let val = Number(event.target.value);

    this.setState({ num1: val });

  }

  setNum2(event) {
    event.preventDefault();
    let val = Number(event.target.value);
    this.setState({ num2: val });
  }

  add(event) {
    event.preventDefault();
    this.setState({result: this.state.num1 + this.state.num2});
  }

  subtract(event) {
    event.preventDefault();
    this.setState({result: this.state.num1 - this.state.num2});
  }

  divide(event) {
    event.preventDefault();
    this.setState({result: this.state.num1 / this.state.num2});
  }

  multiply(event) {
    event.preventDefault();
    this.setState({result: this.state.num1 * this.state.num2});
  }

  reset(event) {
    event.preventDefault();
    this.setState({
      num1: "",
      num2: ""
    });
  }
          // <button onClick={this.click}></button>
  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <label>
          num1
          <input onChange={this.setNum1} type="text" name="num1" value={this.num1}/>
        </label>
        <label>
          num2
          <input onChange={this.setNum2} type="text" name="num2" value={this.num2}/>
        </label>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.reset}>RESET</button>
      </div>
    );
  }
}

export default Calculator;
