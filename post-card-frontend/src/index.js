import React from "react";
import ReactDOM from "react-dom";
import "./styles/index.scss";
import App from "./App";
import reportWebVitals from "./reportWebVitals";
import { BrowserRouter as Router, Route } from "react-router-dom";
import { Provider } from "react-redux";
import store from "./redux/store";
import URL from "./api";
import {
	ApolloClient,
	InMemoryCache,
	ApolloProvider,
	HttpLink,
	from,
} from "@apollo/client";
import { onError } from "@apollo/client/link/error";

const errorLink = onError(({ graphqlErrors }) => {
	if (graphqlErrors) {
		graphqlErrors.map(({ message, location, path }) => {
			alert(`Graphql error ${message}, == local at ${location}`);
		});
	}
});

const link = from([errorLink, new HttpLink({ uri: `${URL}/graphiql` })]);

const client = new ApolloClient({
	cache: new InMemoryCache(),
	link: link,
});

ReactDOM.render(
	<React.StrictMode>
			<Provider store={store}>
		<ApolloProvider client={client}>
				<Router>
					<Route path="/" render={(routerProps) => <App {...routerProps} />} />
				</Router>
		</ApolloProvider>
			</Provider>
	</React.StrictMode>,
	document.getElementById("root")
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
