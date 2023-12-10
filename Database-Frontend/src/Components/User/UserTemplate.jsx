import { Outlet } from "react-router-dom";
import React from "react";
import Cookies from "js-cookie";
import Login from "./Login";
import AccountInfo from "./AccountInfo";

const UserTemplate = () => {
  return (
    <div className="h-[100vh] w-[100vw]">
      {Cookies.get("token") ? <AccountInfo /> : <Login />}
    </div>
  );
  // return <Outlet />;
};

export default UserTemplate;
