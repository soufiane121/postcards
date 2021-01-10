import React from "react";
import "../styles/navBar.scss";
import { BiSearchAlt } from "react-icons/bi";

const NavBar = () => {
	return (
		<nav className="nav-bar-container">
			<span>Logo</span>
			<ul className="nav-ul">
				<li className="nav-li">Page 1</li>
				<li className="nav-li">Page 2</li>
				<li className="nav-li">Page 3</li>
				<li className="nav-li">Page 4</li>
			</ul>
			<label className="login">Login</label>
			{/* <div className="signup-cont"> */}
				<span className="signup">SignUp </span>
			{/* </div> */}
			<BiSearchAlt className="icon" />
		</nav>
	);
};

export default NavBar;
