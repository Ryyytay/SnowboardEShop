import { Box, Card, Typography, Grid } from '@mui/material';
import { AccessTime, AttachMoney, Snowboarding, RotateRight } from '@mui/icons-material';

const features = [
    {
        Icon: AccessTime,
        title: 'Quick Gear Setup',
        description: 'Get your gear ready for the slopes in just 10 minutes with our quick setup stations.'
    },
    {
        Icon: AttachMoney,
        title: 'Best Prices & Offers',
        description: 'Find the best prices on snowboards and gear, with seasonal discounts and offers.'
    },
    {
        Icon: Snowboarding,
        title: 'Wide Assortment',
        description: 'Choose from a wide range of snowboards, apparel, and accessories to suit all levels.'
    },
    {
        Icon: RotateRight,
        title: 'Easy Returns',
        description: 'Not satisfied with your purchase? Return it within 30 days for a full refund.'
    }
];

function FeatureSection() {
    return (
        <Box sx={{ flexGrow: 1, my: 4 }}>
            <Grid container spacing={2} justifyContent="center">
                {features.map((feature, index) => (
                    <Grid item xs={12} sm={6} md={3} key={index}>
                        <Card sx={{ p: 2, display: 'flex', flexDirection: 'column', alignItems: 'center', height: '100%' }}>
                            <feature.Icon sx={{ fontSize: 40, color: 'primary.main' }} />
                            <Typography variant="h6" component="div" sx={{ mt: 2, fontWeight: 'bold' }}>
                                {feature.title}
                            </Typography>
                            <Typography variant="subtitle1" sx={{ mt: 1, textAlign: 'center', color: 'text.primary' }}>
                                {feature.description}
                            </Typography>
                        </Card>
                    </Grid>
                ))}
            </Grid>
        </Box>
    );
}

export default FeatureSection;
