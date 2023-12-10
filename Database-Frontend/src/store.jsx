// store.jsx

import { createStore } from "redux";

const initialState = {
  items: [],
};

function itemsReducer(state = initialState, action) {
  switch (action.type) {
    case "ADD_ITEM":
      return { ...state, items: [...state.items, action.payload] };
    case "REMOVE_ITEM":
      const { name, model, price } = action.payload;
      return {
        ...state,
        items: state.items.filter(
          (item) => 
            item.name !== name || item.model !== model || item.price !== price
        ),
      };
    default:
      return state;
  }
}

const store = createStore(itemsReducer);

export default store;
