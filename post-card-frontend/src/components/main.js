import React from "react";
import "../styles/main.scss";
import { Link } from "react-router-dom";

const Main = () => {
	const handleLandingDiv = () => {
		return (
			<div className="page_hero__content">
				<img
					src="https://images.unsplash.com/photo-1542226601-bc82e276ae0a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=max-van-den-oetelaar-26GffjN9B0o-unsplash.jpg"
					alt="postcard face"
					className="image"
				/>
				<div className="text-button-container">
					<h3 className="txt-descrption">REALLY NICE CARDS, MAILED FOR YOU.</h3>
					<span className="backdround-text"></span>
					<div className="btn-container">
						<Link to="/main" className="button">
							<span className="button">Check cards</span>
						</Link>
					</div>
					<span className="backdround-text2"></span>
				</div>
			</div>
		);
	};
	return <>{handleLandingDiv()}</>;
};

export default Main;
