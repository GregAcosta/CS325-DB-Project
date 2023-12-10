import { Provider } from "react-redux";
import store from "./store.jsx";

import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App.jsx";
import "./index.css";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import HomePage from "./Components/HomePage/HomePage.jsx";

import Contact from "./Components/HomePage/Contact.jsx";
import AboutUs from "./Components/HomePage/AboutUs.jsx";
import ConsoleBrowse from "./Components/ItemsPages/ConsoleBrowse.jsx";
import UserTemplate from "./Components/User/UserTemplate.jsx";
import Cart from "./Components/ItemsPages/Cart.jsx";

import Login from "./Components/User/Login.jsx";
import CreateUser from "./Components/User/CreateUser.jsx";

const TEST = () => {
  return <div>TEST</div>;
};

const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
    children: [
      {
        index: true,
        element: <HomePage />,
      },
      {
        path: "test",
        element: <TEST />,
      },
      {
        path: "contact",
        element: <Contact />,
      },
      {
        path: "about-us",
        element: <AboutUs />,
      },
      {
        path: "console-browse",
        element: <ConsoleBrowse />,
      },

      {
        path: "cart",
        element: <Cart />,
      },
    ],
  },
  {
    path: "user/",
    element: <UserTemplate />,
    // children: [
    //   {
    //     path: "login",
    //     element: <Login />,
    //   },
    //   {
    //     path: "register",
    //     element: <CreateUser />,
    //   },
    //   {
    //     path: "profile",
    //     element: <div>profile</div>,
    //   },
    // ],
  },
  {
    path: "user/create",
    element: <CreateUser />,
  },
]);

// ReactDOM.createRoot(document.getElementById("root")).render(
//   <RouterProvider router={router} />
// );
ReactDOM.createRoot(document.getElementById("root")).render(
  <Provider store={store}>
    <RouterProvider router={router} />
  </Provider>
);
