const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  switch(action.type) {
    case "SWITCH_CURRENCY":
      const newState = {
        baseCurrency: action.baseCurrency,
        rates: action.rates
      };
      return newState;
    default:
      return state;
  }
};
// window.reducer = reducer;
export default reducer;
