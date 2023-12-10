import React, { useEffect, useState } from "react";
import GameBoyImage from "../../assets/GameBoy.jpg";

const DealOfTheDay = ({ img_src = GameBoyImage, description = "" }) => {
  if (description === "") {
    description =
      "Today, we're rolling back the years with an irresistible offer on the iconic Gameboy Classic! This timeless handheld console, a gem from the 90s, is available at an unbelievable discount, exclusively for you. Embark on a journey of nostalgia with the Gameboy Classic. Remember the joy of playing 'Tetris', 'Super Mario Land', and 'The Legend of Zelda'? Now, you can relive those moments! Our Gameboy comes in its original, compact design, providing the authentic feel of gaming from yesteryears. Its robust build and simple, user-friendly interface make it a perfect pick for both vintage game lovers and new explorers of classic gaming. But wait, there's more! Along with a hefty discount on the console, we're throwing in three classic games for FREE. Yes, you heard that right – free! This deal includes the Gameboy Classic, a charger, and three legendary games that defined an era of handheld gaming. Why buy a Gameboy Classic? It's not just a gaming console; it's a piece of history. Perfect for collectors, nostalgic gamers, or as a unique gift, the Gameboy Classic offers a trip down memory lane to the golden age of gaming. Hurry, though! This deal is as rare as the console itself and is valid only for today. Don't miss your chance to own a piece of gaming history. Add the Gameboy Classic to your cart, and get ready to dive into a world of pixelated adventures and timeless fun! 🎮✨ Shop now and experience the magic of retro gaming!";
  }
  return (
    <div className="flex place-items-center bg-gray-300 p-6 rounded mb-10">
      <div className="w-1/3">
        <img
          src={img_src}
          className="h-fit w-fit border-2 border-black"
          alt="GameBoy"
        />
      </div>
      <div className="w-2/3 flex flex-col place-items-center">
        <div className="font-pixel text-3xl text-center mb-10">
          DEAl OF THE DAY
        </div>
        <div className="ml-5">{description}</div>
      </div>
    </div>
  );
};

const Item = ({
  img_src = GameBoyImage,
  item_title = "Nintendo Gameboy Classic",
  price = 100.47,
}) => {
  const prevPrice = price * 1.3;

  return (
    <div className="rounded flex flex-col gap-2 border-4 border-black h-[421px] w-[335px]">
      <img src={img_src} alt={item_title} />
      <div className="flex flex-col place-items-center font-pixel">
        <div className="text-center">{"**FAN FAVIROTE** " + item_title}</div>
        <div>
          <div className="text-red-500 line-through">${prevPrice}</div>
          <div className="text-green-500">${price}</div>
        </div>
      </div>
    </div>
  );
};

const PopularItems = () => {
  const [signedUp, setSignedUp] = useState(false);

  return (
    <div className="p-3 flex flex-col place-items-center mb-10 ">
      <div className="text-3xl font-extrabold font-pixel mb-11 bg-slate-200 w-[100] p-4 rounded-md shadow-lg shadow-red-600">
        Register for our weekly newsletter!
      </div>
      <div className="font-pixel text-sm">
        Dive into nostalgia with our weekly retro gaming newsletter! Get
        exclusive access to deals like the recent offer on the Gameboy Classic,
        insights into legendary games like 'Tetris', and a treasure trove of
        collector's items. Relive the golden age of gaming and stay ahead with
        rare finds and special discounts. Perfect for collectors, nostalgic
        gamers, and new explorers alike. Don't miss out on your chance to own a
        piece of gaming history. Subscribe now and join our community of retro
        gaming enthusiasts!
      </div>
      <div className="text-2xl font-pixel mt-10"> Sign up below</div>

      <div className="flex gap-10 mt-10">
        {signedUp == true ? (
          <div className="flex place-items-center font-semibold">
            <div className="text-xl">Email Sent</div>
            <div className="ml-1 text-2xl text-green-600">✓</div>
          </div>
        ) : (
          <div>
            <input
              type="text"
              placeholder="Enter your email"
              className="bg-slate-100 rounded-md p-2 focus:outline-none"
            />
            <button
              className="ml-10 bg-red-200 rounded-md p-2 transition hover:bg-red-400"
              onClick={() => setSignedUp(true)}
            >
              Subscribe
            </button>
          </div>
        )}
      </div>
    </div>
  );
};

const HomePage = () => {
  return (
    <div className="h-[100%] w-[100%]">
      <DealOfTheDay />
      <PopularItems />
    </div>
  );
};

export default HomePage;
