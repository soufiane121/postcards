import React from "react";
import "../styles/footer.scss";
import { Link } from "react-router-dom";
import { SiFacebook, SiInstagram, SiPinterest } from "react-icons/si";

const Footer = () => {
	return (
		<div className="footer-container">
			<div className="icons-sec">
				<a href="https://facebook.com" target="_blank">
					<SiFacebook className="icon-soc" />
				</a>
				<a href="https://instagram.com" target="_blank">
					<SiInstagram className="icon-soc" />
				</a>
				<a href="https://pinterest.com" target="_blank">
					<SiPinterest className="icon-soc" />
				</a>
			</div>
			<div className="footer-desc">
				<Link to="/terms" className="link">
					Terms
				</Link>
				<Link to="/privacy" className="link">
					Privacy
				</Link>
				<Link to="/about" className="link">
					About Us
				</Link>
			</div>
		</div>
	);
};

export default Footer;
