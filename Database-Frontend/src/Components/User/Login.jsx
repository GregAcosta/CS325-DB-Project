import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";
import Cookies from "js-cookie";

const Login = () => {
  const navigate = useNavigate();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleSubmit = (e) => {
    e.preventDefault();
    const url = "http://localhost:8000/users/login/";
    const data = { email, password };

    axios
      .post(url, data)
      .then((res) => {
        Cookies.set("token", res.data.token);
        navigate("/");
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div className="h-[100%] w-[100%] bg-gradient-to-r from-gray-300 to-gray-600 flex place-content-center place-items-center">
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
        <div className="font-bold text-3xl">Login</div>
        <input
          type="email"
          placeholder="email"
          className="bg-slate-100 px-3 py-2 rounded-sm focus:outline-none"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        <input
          type="password"
          placeholder="password"
          className="bg-slate-100 px-3 py-2 rounded-sm focus:outline-none"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <div className="w-[100%]">
          <div
            className="text-red-400 transition hover:text-red-700 text-xs"
            onClick={() => {
              navigate("create/");
            }}
          >
            Dont already have an account?
          </div>
        </div>

        <button
          type="submit"
          className="mt-5 w-[100%] bg-slate-400 py-2 px-3 transition hover:bg-slate-500"
          onClick={handleSubmit}
        >
          Login
        </button>
      </form>
    </div>
  );
};

export default Login;
