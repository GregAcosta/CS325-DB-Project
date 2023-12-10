import React from "react";

export const Data = ({ title = "TITLE MISSING", text = ["DUMMY", "TEXT"] }) => {
  return (
    <div>
      <div className="text-2xl font-bold">{title}</div>
      <div>
        {text.map((line, index) => (
          <div key={index}>{line}</div>
        ))}
      </div>
    </div>
  );
};

const Contact = () => {
  return (
    <div className="flex flex-col gap-12">
      <div className="font-pixel text-3xl">Contact Us</div>
      <div>
        Got questions? Reach out to us at Retro Replay! Whether it's inquiries
        about classic games, gaming systems, order details, or just a general
        curiosity about retro gaming, our team is ready to assist you. Email or
        speak directly with a Retro Replay representative for expert advice and
        support. Retro Replay is your go-to online hub for all things retro
        gaming. Please note that as an online-exclusive retailer, we do not
        accommodate shopping or customer visits at our home office or
        distribution center. Your understanding is much appreciated. For a
        seamless and fantastic retro gaming experience, Retro Replay is just a
        click away!
      </div>
      <Data
        title="Hours of Operation"
        text={[
          "Monday - Friday: 9:00 AM - 5:00 PM EST",
          "Saturday - Sunday: Closed",
        ]}
      />
      <Data
        title="Email"
        text={[
          "Email us support at retroreplay@hotmail.com",
          "Email us repair at  retrorepairs@hotmail.com",
        ]}
      />
      <Data
        title="Phone"
        text={[
          "Customer Support: +1 (234)-567-8910",
          "Repair Support: +1 (234)-567-8910",
        ]}
      />
      <Data
        title="Mailing Address"
        text={[
          "Retro Replay",
          "1234 Fake Street",
          "Fake City, Fake State, 12345",
        ]}
      />
    </div>
  );
};

export default Contact;
