import React from "react";
import "../styles/main.scss";
import { Link } from "react-router-dom";
import Card from "../assets/icons/card_postal.svg";
import Envlope from "../assets/icons/envlope.svg";
import Messaging from "../assets/icons/messaging.svg";
import Typing from "../assets/icons/typing.svg";

let icons = [
	{ type: Envlope, title: "Hi2", descrption: "sometext here have to be added" },
	{ type: Typing, title: "Hi2", descrption: "sometext here have to be added" },
	{
		type: Messaging,
		title: "Hi3",
		descrption: "sometext here have to be added",
	},
	// { type: Card, title: "Hi1", descrption: "sometext here have to be added" },
];

let cards = [
	{
		link:
			"https://d1wli5mq9yq9mw.cloudfront.net/files/cards/stacked_env/YEPPIE113.png?v=90dcfa3b9804a434aa73d1c0b1d9562eb2a6685e",
		title: "Real Paper Card",
		descrption:
			"A truly amazing collection of 100% recycled cards from all of the top designers in the country.",
	},
	
	{
		link:
			"https://d1wli5mq9yq9mw.cloudfront.net/files/banners/png/lrg/banner_invites_std.png?v=90dcfa3b9804a434aa73d1c0b1d9562eb2a6685e",
		title: "CUSTOM INVITATIONS",
		descrption:
			"Gorgeous designer invitations printed, addressed and mailed for you.",
	},
	{
		link:
			"https://d1wli5mq9yq9mw.cloudfront.net/files/cards/stacked_env/RIFLE102.png?v=90dcfa3b9804a434aa73d1c0b1d9562eb2a6685e",
		title: "THANK YOU CARD SALVATION",
		descrption:
			"Just got married? Had a baby? Save yourself 90 hours of agony and type your thank yous with us. Even Martha Stewart Weddings approves!",
	},
];

const Main = () => {
	//dusplay the first part of the page witch is image and desc
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

	const handleDescption = () => {
		return icons.map((ele) => {
			return (
				<div className="icons-container">
					<img src={ele.type} className="card-icon" />
					<h5 className="title2">{ele.title}</h5>
					<p className="para">{ele.descrption}</p>
				</div>
			);
		});
	};

	const displayServices = () => {
		return cards.map((ele, idx) => {
			return (
				<div className={idx % 2 ===0 ? "service-card-right" : "service-card-left"}>
					<img src={ele.link} className={idx % 2 === 0 ? "srv-image2": "srv-image"} />
					<div className={idx % 2 === 0 ? "title-desc-cont2" : "title-desc-cont"}>
						<h5 className={idx % 2 === 0 ? "srv-title2" : "srv-title"}>{ele.title}</h5>
						<p className={idx % 2 === 0 ? "srv-desc2" : "srv-desc"}>{ele.descrption}</p>
					</div>
				</div>
			);
		});
	};
	return (
		<>
			{handleLandingDiv()}
			<div className="container-how-works">
				<h2 className="title">HOW IT WORKS</h2>
				<div className="card-cont">{handleDescption()}</div>
			</div>
			<div className="services__content">{displayServices()}</div>
		</>
	);
};

export default Main;
