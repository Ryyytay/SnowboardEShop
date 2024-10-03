import {
  Container,
  createTheme,
  CssBaseline,
  ThemeProvider,
} from "@mui/material";
import Header from "./Header";
import { useCallback, useEffect, useState } from "react";
import { Outlet, useLocation } from "react-router-dom";
import { ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import LoadingComponent from "./LoadingComponent";
import { useAppDispatch } from "../store/configureStore";
import { fetchBasketAsync } from "../../features/basket/basketSlice";
import { fetchCurrentUser } from "../../features/account/accountSlice";
import HomePage from "../../features/home/HomePage";

function App() {
  const location = useLocation();
  const dispatch = useAppDispatch();
  const [loading, setLoading] = useState(true);

  const initApp = useCallback(async () => {
    try {
      await dispatch(fetchCurrentUser());
      await dispatch(fetchBasketAsync());
    } catch (error) {
      console.log(error);
    }
  }, [dispatch]);

  useEffect(() => {
    initApp().then(() => setLoading(false));
  }, [initApp]);

  const [darkMode, setDarkMode] = useState(false);

  const theme = createTheme({
    palette: {
      mode: darkMode ? "dark" : "light",
      primary: {
        main: darkMode ? '#577ec1' : '#3e65a8', 
      },
      secondary: {
        main: darkMode ? '#8db0e8' : '#173a72', 
      },
      background: {
        default: darkMode ? '#05070a' : '#f5f7fa', 
        paper: darkMode ? '#2c2f33' : '#eaeef3',
      },
      text: {
        primary: darkMode ? '#eeeff1' : '#0e0f11',
        secondary: darkMode ? '#eeeff1': '#0e0f11',
      },
    },
  });

  function handleThemeChange() {
    setDarkMode(!darkMode);
  }

  return (
    <>
      <ThemeProvider theme={theme}>
        <ToastContainer
          position="bottom-right"
          hideProgressBar
          theme="colored"
        />
        <CssBaseline />
        <Header darkMode={darkMode} handleThemeChange={handleThemeChange} />
        {loading ? (
          <LoadingComponent message="Initialising app" />
        ) : location.pathname === "/" ? (
          <HomePage />
        ) : (
          <Container sx={{mt: 4}}>
            <Outlet />
          </Container>
        )}
      </ThemeProvider>
    </>
  );
}

export default App;
