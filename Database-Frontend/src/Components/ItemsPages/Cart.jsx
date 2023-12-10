import React, { useState } from "react";
import { useSelector } from "react-redux";
import TrashBin from "../../assets/trash-bin.svg";
import { useDispatch } from "react-redux";
import { removeItem } from "../../action.jsx";

const Item = ({ name, model, price, image }) => {
  const [hovering, setHovering] = useState(false);
  const dispatch = useDispatch();

  return (
    <div
      className="p-4 my-2 flex border-4 w-[350px]"
      onMouseEnter={() => setHovering(true)}
      onMouseLeave={() => setHovering(false)}
    >
      {hovering && (
        <img
          src={TrashBin}
          alt="trash-bin"
          className="h-[25px] transition hover:scale-90"
          onClick={() => dispatch(removeItem({ name, model, price }))}
        />
      )}
      <img src={image} alt="console" className="h-[100px] mr-1" />
      <div className="flex flex-col place-content-center">
        <div className="font-bold">
          {name} {model}
        </div>
        <div className="font-semibold text-green-500">{price}</div>
        <div></div>
      </div>
    </div>
  );
};

const Cart = () => {
  const items = useSelector((state) => state.items);

  return (
    <div>
      <div className="text-4xl font-pixel mb-10">Cart Items</div>
      {items.length > 0 ? (
        <ul>
          {items.map((item, index) => (
            <Item
              key={index}
              name={item.name}
              model={item.model}
              price={item.price}
              image={item.src_}
            />
          ))}
        </ul>
      ) : (
        <div>Your cart is empty.</div>
      )}
    </div>
  );
};

export default Cart;
