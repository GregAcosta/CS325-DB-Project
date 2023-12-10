import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";
import Cookies from "js-cookie";

const AccountInfo = () => {
  const [passHovering, setPassHovering] = useState(false);

  const password = Cookies.get("password");
  const email = Cookies.get("email");
  const username = Cookies.get("username");

  var dot = "";
  for (var i = 0; i < password.length; i++) {
    dot += "*";
  }

  const navigate = useNavigate();
  return (
    <div className="h-[100%] w-[100%] bg-gradient-to-r from-gray-300 to-gray-600 flex place-content-center place-items-center">
      <div
        className="absolute left-[50px] top-[50px] font-pixel text-2xl transition hover:text-red-600 hover:scale-110"
        onClick={() => navigate("/")}
      >
        RR
      </div>

      <div className="bg-white p-10 rounded-md flex flex-col gap-4 place-content-center place-items-center">
        <div className="font-bold text-3xl">Account Info</div>
        <div className="text-lg">Email: {email}</div>
        <div className="text-lg">Username: {username}</div>
        <div className="flex w-[100%] justify-between ">
          <div>Password:</div>
          <div
            className=""
            onMouseEnter={() => setPassHovering(true)}
            onMouseLeave={() => setPassHovering(false)}
          >
            {passHovering == true ? password : dot}
          </div>
        </div>
      </div>
    </div>
  );
};

export default AccountInfo;
