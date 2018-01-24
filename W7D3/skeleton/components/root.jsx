import React from 'react';
import { Provider } from 'react-redux';
import { fetchSearchGiphys, receiveSearchGiphys } from '../actions/giphy_actions';
import GiphysSearchContainer from './giphys_search_container';
import configureStore from '../store/store';

const Root = ({ store }) => {
  return (
    <Provider store={store}>
      <GiphysSearchContainer />
    </Provider>
  );
};

export default Root;
