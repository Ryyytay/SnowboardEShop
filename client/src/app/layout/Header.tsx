import { AppBar, Switch, Toolbar, Typography } from "@mui/material";
import CustomizedSwitches from "./Switch";

interface Props {
    darkMode: boolean;
    handleThemeChange: () => void;
}

export default function Header({darkMode, handleThemeChange}: Props) {
    return (
        <AppBar position="static" sx={{mb: 4}}>
            <Toolbar>
                <Typography variant='h6'>
                    Snowboard Store
                </Typography>
                <CustomizedSwitches darkMode={darkMode} handleThemeChange={handleThemeChange} />
            </Toolbar>
        </AppBar>
    )
}