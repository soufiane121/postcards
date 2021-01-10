import React from "react";
import Main from "./components/main";
import Offers from "./components/discount";
import NavBar from "./components/navBar";
import { Route, Switch } from "react-router";

const App = () => {
	return (
		<>
			<Offers />
			<NavBar />
			<Switch>
				<Route path="/" render={(routerProps) => <Main {...routerProps} />} />
			</Switch>
		</>
	);
};

export default App;
