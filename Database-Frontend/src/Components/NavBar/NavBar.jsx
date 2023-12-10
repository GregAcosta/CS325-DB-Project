import React, { useState, useRef, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";

import BannerLogo from "../../assets/BannerLogo.png";
import ShoppingCart from "../../assets/shopping-cart-outline.svg";
import ShippingLogo from "../../assets/shipping-logo.svg";
import MagnifyingGlass from "../../assets/magnifying-glass.svg";

const DropDown = ({
  Console,
  ListOfLinks = [],
  styling_className = "bg-gray-500 h-full w-full flex justify-center items-center hover:bg-gray-600 transition duration-500",
}) => {
  const [width, setWidth] = useState(0);
  const [isHovering, setIsHovering] = useState(false);
  const titleRef = useRef(null);
  const navigate = useNavigate();

  useEffect(() => {
    if (titleRef.current) {
      setWidth(titleRef.current.offsetWidth * 1.2);
    }
  }, []);

  return (
    <div
      className="relative z-50"
      onMouseEnter={() => setIsHovering(true)}
      onMouseLeave={() => setIsHovering(false)}
    >
      <div ref={titleRef} className={styling_className}>
        {Console}
      </div>

      {isHovering && (
        <div
          className="mt-[1px] absolute bg-gray-500 p-2"
          style={{ width: width }}
        >
          <div className="bg-gray-400">
            {ListOfLinks.map(({ model, link = "console-browse" }, index) => (
              <Link
                to={link}
                key={index}
                onClick={(e) => {
                  e.preventDefault();
                  navigate("/console-browse", {
                    state: { console: Console, model: model },
                  });
                }}
              >
                <div className="transition hover:bg-gray-500 p-1" key={index}>
                  {Console} {model}
                </div>
              </Link>
            ))}
          </div>
        </div>
      )}
    </div>
  );
};

const NavBar = () => {
  return (
    <div className="h-[100%]">
      <div className="h-[20%] flex justify-center place-items-center bg-gray-400">
        <div className="flex flex-row justify-center place-items-center w-[100%]">
          <img
            src={ShippingLogo}
            alt="Shipping Logo"
            className="h-[40px] transition hover:scale-110"
          />
          <div className="ml-[1%]">FREE US SHIPPING with orders over $15</div>
        </div>
      </div>
      <div className="h-[80%]">
        <div className="h-[50%] flex justify-between bg-gray-300">
          <div className="w-[25%] flex justify-around place-items-center">
            <Link to="/contact" className="transition hover:scale-110">
              <div>Contact</div>
            </Link>

            <Link to="/about-us" className="transition hover:scale-110">
              <div>About Us</div>
            </Link>
          </div>
          <div className="w-[50%] flex place-content-center p-3">
            <Link to="/">
              <img
                src={BannerLogo}
                alt="Banner Logo"
                className="h-[100%] w-[100%]  transition hover:scale-110"
              />
            </Link>
          </div>
          <div className="w-[25%] flex justify-around place-items-center">
            <div className="transition hover:scale-110 hover:cursor-pointer">
              Sell Video Games
            </div>
            <Link
              to="user/"
              className="transition hover:scale-110 hover:text-red-700"
            >
              Account
            </Link>
            <Link to="/cart">
              <img
                src={ShoppingCart}
                alt="Shopping Cart"
                className="h-[30px] transition hover:scale-125"
              />
            </Link>
          </div>
        </div>

        <div className="h-[40%] w-full bg-gray-300">
          <div className="grid grid-cols-5 h-full gap-[1px]">
            <DropDown
              Console="Xbox"
              ListOfLinks={[{ model: "Original" }, { model: "360" }]}
            />
            <DropDown
              Console="Nintendo"
              ListOfLinks={[
                { model: "NES" },
                { model: "SNES" },
                { model: "DS" },
                { model: "Wii" },
              ]}
            />
            <DropDown
              Console="PlayStation"
              ListOfLinks={[{ model: "1" }, { model: "2" }, { model: "Vita" }]}
            />
            <DropDown
              Console="Sega"
              ListOfLinks={[{ model: "Dreamcast" }, { model: "Genisis" }]}
            />

            <form className="bg-gray-500 h-full w-full flex justify-center items-center">
              <input
                type="search"
                name=""
                id=""
                placeholder="Search the store"
                className="py-1 px-2 rounded-sm focus:outline-none"
              />
              <button
                type="submit"
                className="ml-2 bg-red-200 p-1 rounded-sm transition hover:bg-red-300"
              >
                <img
                  src={MagnifyingGlass}
                  alt="Magnifying Glass"
                  className="h-[20px]"
                />
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
};

export default NavBar;
