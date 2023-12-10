import React, { useEffect, useState } from "react";
import { useLocation } from "react-router-dom";
import Cookies from "js-cookie";
import { useDispatch } from "react-redux";
import { addItem } from "../../action.jsx";

const SingleConsole = ({ name, model, src_, price = 100.0 }) => {
  const [isHovering, setIsHovering] = useState(false);
  const dispatch = useDispatch();

  return (
    <div
      className="flex flex-col place-items-center place-content-center border-4 p-2 relative"
      onMouseEnter={() => setIsHovering(true)}
      onMouseLeave={() => setIsHovering(false)}
    >
      {isHovering && (
        <div
          className="absolute z-10 bg-red-300 p-3 rounded-xl transition hover:bg-red-500 shadow-2xl shadow-black"
          onClick={() => dispatch(addItem({ name, model, price, src_ }))}
        >
          Add to Cart
        </div>
      )}
      <img
        className={`h-[250px] ${isHovering ? "filter blur-sm" : ""}`}
        src={src_}
        alt={`${name} ${model}`}
      />
      <div className="text-xl font-extrabold">
        {name} {model}
      </div>
      <div className="text-green-500">${price}</div>
    </div>
  );
};

const ConsoleBrowse = () => {
  const [temp, setTemp] = useState(null);
  const [sortHover, setSortHover] = useState(false);

  const [consoles, setConsoles] = useState([]);
  const location = useLocation();
  const { console, model } = location.state || {
    console: null,
    model: null,
  };

  useEffect(() => {
    const fetchConsoles = async () => {
      try {
        const queryParams = new URLSearchParams({
          name: console,
          model,
        }).toString();
        const url = `http://127.0.0.1:8000/console/search-consoles/?${queryParams}`;
        const res = await fetch(url);
        const data = await res.json();
        setConsoles(data);
      } catch (error) {
        console.log("Error fetching data:", error);
      }
    };

    fetchConsoles();
  }, [console, model]);

  return (
    <div className="flex gap-10">
      <div className="w-[15%] flex flex-col place-items-center">
        {/* <div>
          <div>Sort by low-high</div>
          <div>Sort by high-low</div>
        </div> */}

        <div
          className="w-[200px] text-xl font-semibold border-2 px-4 py-1"
          onMouseEnter={() => setSortHover(true)}
          onMouseLeave={() => setSortHover(false)}
        >
          Sort By
        </div>
      </div>
      <div className="w-[85%] grid grid-cols-5 gap-4">
        {consoles.map((console, index) => (
          <SingleConsole
            key={index}
            price={console.price}
            hrome
            name={console.name}
            model={console.model}
            src_={`data:image/jpeg;base64,${console.image_data}`}
          />
        ))}
      </div>
    </div>
  );
};

export default ConsoleBrowse;
