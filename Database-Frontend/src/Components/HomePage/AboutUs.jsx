import React from "react";
import { Data } from "./Contact";

const AboutUs = () => {
  return (
    <div className="flex flex-col gap-12">
      <div className="font-pixel text-3xl">About Us</div>
      <div>
        Welcome to Retro Replay, the ultimate destination for all retro gaming
        enthusiasts! With a passion for nostalgia and a commitment to delivering
        the best in vintage gaming, we've established ourselves as a premier
        online retailer for classic video games, consoles, and accessories.
      </div>
      <Data
        title="Our Mission"
        text={[
          "At Retro Replay, our mission is twofold. First, we aim to keep the golden era of gaming alive by offering a vast and diverse collection of classic games and systems. From the legendary NES and Sega Genesis to the beloved PlayStation and Game Boy, we cover the entire spectrum of retro gaming. Second, we strive to connect with our community, sharing a deep love for the games that have shaped our lives.",
        ]}
      />

      <Data
        title="Our Collection"
        text={[
          "Our extensive catalog features a meticulously curated selection of games, consoles, and accessories. We pride ourselves on the quality of our products, ensuring that each item is not just a piece of nostalgia but also a fully functional piece of gaming history. Whether you're looking to revisit your favorite childhood game or discover a classic you missed, Retro Replay has something for everyone.",
        ]}
      />

      <Data
        title="Our Commitment to Quality"
        text={[
          "Quality is paramount at Retro Replay. Each product undergoes rigorous testing to ensure it meets our high standards. We understand the importance of authenticity and reliability in retro gaming, and we are committed to providing our customers with products that deliver an authentic gaming experience.",
        ]}
      />

      <Data
        title="Our Community"
        text={[
          "Retro Replay isn't just a store; it's a community. We regularly engage with our customers through social media, blogs, and gaming events. We celebrate the culture of retro gaming, sharing stories, tips, and insights into the world of classic gaming. Our community is a place where memories are shared, friendships are formed, and the spirit of gaming is alive and well.",
        ]}
      />

      <Data
        title="Sustainability and Responsibility"
        text={[
          "In an era of fast-paced technological advancement, we recognize the importance of sustainability. By giving new life to old games and consoles, we contribute to a more sustainable and responsible consumption of technology. We believe in the power of recycling and reusing, ensuring that the joy of gaming is passed on to future generations.",
        ]}
      />

      <Data
        title="Our Promise"
        text={[
          "At Retro Replay, we promise to provide not just products, but an experience. An experience that takes you back in time, to the days of pixelated graphics and simple yet captivating gameplay. We are committed to upholding the highest standards of customer service, ensuring that every interaction with us is as enjoyable as the games we offer.",
        ]}
      />
    </div>
  );
};

export default AboutUs;
