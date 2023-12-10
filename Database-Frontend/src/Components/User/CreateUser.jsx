import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";
import Cookies from "js-cookie";

const CreateUser = () => {
  const navigate = useNavigate();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [userName, setUserName] = useState("");

  const handleSubmit = (e) => {
    // Store the password, email, and username in a cookie, dont worry about anything else, just store it in a cookie
    Cookies.set("password", password);
    Cookies.set("email", email);
    Cookies.set("username", userName);





    e.preventDefault();
    const url = "http://localhost:8000/users/create/";

    const data = {
      email,
      password,
      username: userName,
    };
    axios
      .post(url, data)
      .then((res) => {
        navigate("/user/");
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div className="h-[100vh] w-[100vw] bg-gradient-to-r from-gray-600 to-gray-300 flex place-content-center place-items-center">
      <div
        className="absolute left-[50px] top-[50px] font-pixel text-2xl transition hover:text-red-600 hover:scale-110"
        onClick={() => navigate("/")}
      >
        RR
      </div>

      <form
        action=""
        className="flex flex-col gap-2 place-items-center bg-white p-10 rounded-md"
      >
        <div className="font-bold text-3xl">Create Account</div>
        <input
          type="email"
          placeholder="email"
          className="bg-slate-100 px-3 py-2 rounded-sm focus:outline-none"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        <input
          type="text"
          placeholder="username"
          className="bg-slate-100 px-3 py-2 rounded-sm focus:outline-none"
          value={userName}
          onChange={(e) => setUserName(e.target.value)}
        />

        <input
          type="password"
          placeholder="password"
          className="bg-slate-100 px-3 py-2 rounded-sm focus:outline-none"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />

        <button
          type="submit"
          className="mt-5 w-[100%] bg-slate-400 py-2 px-3 transition hover:bg-slate-500"
          onClick={handleSubmit}
        >
          Create
        </button>
      </form>
    </div>
  );
};

export default CreateUser;
