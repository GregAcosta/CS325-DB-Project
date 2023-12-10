import React from "react";
import BannerLogo from "../../assets/BannerLogo.png";
import { Link } from "react-router-dom";

const ColumnSection = ({
  title = "TEMPTITLE",
  listOfLinks = [{ subtitle: "SUBTITLE", link: "/" }],
}) => {
  return (
    <div className="flex flex-col p-2">
      <div className="font-pixel text-2xl border-b-2 border-b-black mb-4">
        {title}
      </div>
      <div className="flex flex-col">
        {listOfLinks.map(({ subtitle, link }, index) => (
          <Link
            to={link}
            key={index}
            className="transition hover:bg-gray-500 py-1 pl-1"
          >
            {subtitle}
          </Link>
        ))}
      </div>
    </div>
  );
};

const Footer = () => {
  return (
    <div className="flex flex-col h-[40vh] w-[100%] bg-gray-400 mt-4">
      <div className="flex place-content-center">
        <img src={BannerLogo} alt="Banner Logo" className="p-3 w-[12%]" />
      </div>
      <div className="mt-5 flex flex-row justify-around h-full">
        <ColumnSection
          title="Company"
          listOfLinks={[
            { subtitle: "About Us", link: "/about-us" },
            { subtitle: "Contact", link: "/contact" },
            { subtitle: "Sell Video Games", link: "/sell-video-games" },
          ]}
        />
        <ColumnSection
          title="RR Store"
          listOfLinks={[
            { subtitle: "Home", link: "/" },
            { subtitle: "Shop", link: "/shop" },
            { subtitle: "Cart", link: "/cart" },
            { subtitle: "Account", link: "/account" },
          ]}
        />
      </div>
    </div>
  );
};

export default Footer;
