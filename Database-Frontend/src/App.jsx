import React from "react";
import { Outlet } from "react-router-dom";
import NavBar from "./Components/NavBar/NavBar";
import Footer from "./Components/Footer/Footer";

function App() {
  return (
    <div className="flex flex-col">
      <div className="h-[25vh]">
        <NavBar />
      </div>
      <div className="pt-3 px-3">
        <Outlet />
      </div>
      <div>
        <Footer />
      </div>
    </div>
  );
}

export default App;
