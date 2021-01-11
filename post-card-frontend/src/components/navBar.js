import React, { useState } from "react";
import "../styles/navBar.scss";
import { BiSearchAlt } from "react-icons/bi";
import { Link } from "react-router-dom";
import { AiOutlineClose } from "react-icons/ai";

const NavBar = () => {
	const [open, setOpen] = useState(true);
	const [openSerch, setOpenSearch] = useState(false);

	//toggle open or close hamburger menu with animation
	const handleHamburger = () => {
		setOpen(!open);
	};

	//handle open input for search
	const handleSearchInpt = () => {
		setOpenSearch(!openSerch);
	};

	return (
		<>
			<nav className="nav-bar-container">
				<span className="logo">Logo</span>
				<ul className={open ? "nav-ul" : "nav-ul active"}>
					<Link to="/main" className="nav-li">
						<li>Home</li>
					</Link>
					<Link to="/main" className="nav-li">
						<li>Home</li>
					</Link>
					<Link to="/main" className="nav-li">
						<li>Home</li>
					</Link>
					<Link to="/main" className="nav-li">
						<li>Home</li>
					</Link>
				</ul>
				<label className="login">Login</label>
				<span className="signup">SignUp </span>

				<BiSearchAlt className="icon" onClick={handleSearchInpt} />
				<div className={open ? "hamburger" : "close"} onClick={handleHamburger}>
					<span className="line border1"></span>
					<span className="line border2"></span>
					<span className="line border3"></span>
				</div>
			</nav>
			<div className="search-cont">
				<input
					className={openSerch ? "inpt active" : "inpt"}
					placeholder="Search cards"
				/>
				<AiOutlineClose
					className={openSerch ? "close-icon active" : "close-icon"}
					onClick={handleSearchInpt}
				/>
			</div>
		</>
	);
};

export default NavBar;
