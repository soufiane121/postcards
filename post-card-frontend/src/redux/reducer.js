import defaultState from "./state";

function reducer(state = defaultState, action) {
	switch (action.type) {
		case "test":
			return { ...state, test: action.payload.test };
		default:
			return state;
	}
}

export default reducer;
