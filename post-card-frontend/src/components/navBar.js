import React, { useState } from "react";
import "../styles/navBar.scss";
import { BiSearchAlt } from "react-icons/bi";

const NavBar = () => {
	const [open, setOpen] = useState(true);

    //toggle open or close hamburger menu with animation
	const handleHamburger = () => {
		setOpen(!open);
	};
	return (
		<>
			<nav className="nav-bar-container">
				<span className="logo">Logo</span>
				<ul className={open ? "nav-ul hamburger" : "nav-ul active"}>
					{" "}
					<li className="nav-li">Page 1</li>
					<li className="nav-li">Page 2</li>
					<li className="nav-li">Page 3</li>
					<li className="nav-li">Page 4</li>
				</ul>

				<label className="login">Login</label>
				<span className="signup">SignUp </span>
				<BiSearchAlt className="icon" />
				<div className={open ? "hamburger" : "close"} onClick={handleHamburger}>
					<span className="line border1"></span>
					<span className="line border2"></span>
					<span className="line border3"></span>
				</div>
			</nav>
			{/* <ul className="nav-ul2">
				<li className="nav-li2">Page 1</li>
				<li className="nav-li2">Page 2</li>
				<li className="nav-li2">Page 3</li>
				<li className="nav-li2">Page 4</li>
			</ul> */}
		</>
	);
};

export default NavBar;
