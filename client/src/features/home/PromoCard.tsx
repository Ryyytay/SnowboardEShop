import { Card, Button, Typography, Box } from '@mui/material';
import { Link } from 'react-router-dom';

function PromoCard() {
    return (
        <Box sx={{pt: 4, pb: 4}}>
            <Card sx={{
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'space-between',
                padding: 3,
                boxShadow: 3,
            }}>
                <Box>
                    <Typography variant="h5" component="div" sx={{ fontWeight: 'bold' }}>
                        Your Ultimate Snowboarding Gear Hub
                    </Typography>
                    <Typography variant="subtitle1" sx={{ mb: 1.5, color: 'text.primary' }}>
                        Gear up for the slopes! Explore top-of-the-line snowboards, apparel, and accessories all in one place.
                    </Typography>
                    <Button component={Link} to="/catalog" variant="contained" color="primary">
                        Shop Now & Save
                    </Button>
                </Box>
                <Box component="img" src="/images/snowboarder.png" sx={{ width: 250, height: 'auto' }} alt="Snowboarding Gear" />
            </Card>
        </Box>
    );
}


export default PromoCard;
