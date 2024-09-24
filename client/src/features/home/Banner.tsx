import { Box, Typography, Button } from "@mui/material";
import { Link } from "react-router-dom";

function Banner() {
    return (
        <div key="slide1" style={{ position: 'relative' }}>
            <img src="/images/hero3.jpg" alt="hero1" style={{ display: 'block', width: '100%', maxHeight: 500 }}/>
            <Box sx={{
                position: 'absolute',
                top: '50%',
                left: '50%',
                transform: 'translate(-50%, -50%)',
                color: 'white',
                textAlign: 'center',
                maxWidth: '80%',
                p: 2,
                // Removed bgcolor, adjust text styles for better visibility
                textShadow: '2px 2px 8px rgba(0, 0, 0, 0.7)', // subtle text shadow for readability
            }}>
                <Typography variant="h4" gutterBottom sx={{ fontWeight: 'bold' }}>
                    Free Shipping on orders over $100
                </Typography>
                <Typography variant="subtitle1" sx={{ fontWeight: 'medium' }}>
                    After promotions and discounts are applied.
                </Typography>
                <Button component={Link} to={'/catalog'} variant="contained" color="primary" sx={{ mt: 2 }}>
                    Shop Now
                </Button>
            </Box>
        </div>
    );
}

export default Banner;
