import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      query: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);

  }
  handleSubmit(e) {
    e.preventDefault();
    // console.log("hello!");
    let query = this.state.query.split(" ").join("+");
    this.props.fetchSearchGiphys(query);
    this.setState({
      query: ""
    });
  }

  handleChange(e) {
    e.preventDefault();
    let newVal = e.target.value;
    this.setState({
      query: newVal
    });

  }

  render() {
    return (
      <form>
        <label>
          Search
          <input type="text" value={this.state.query} onChange={this.handleChange}></input>
        </label>
        <input type="submit" value="submit" onClick={this.handleSubmit}></input>

      </form>
    );
  }

}

export default GiphysSearch;
