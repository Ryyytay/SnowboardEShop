import { Container, Typography, Box, Paper, Grid} from '@mui/material';

export default function AboutPage() {
    return (
        <Container maxWidth="md">
            <Typography variant="h2" gutterBottom align="center">
                About Snowboard Town
            </Typography>
            <Typography variant="subtitle1" paragraph>
                Welcome to Snowboard Town, your ultimate destination for high-quality snowboarding gear, expert advice, and everything you need to hit the slopes with style and confidence. Our mission is to empower snowboarding enthusiasts with the best products and knowledge.
            </Typography>

            <Box component="section" my={4}>
                <Typography variant="h4" gutterBottom>
                    Our Team
                </Typography>
                <Grid container spacing={2}>
                    <Grid item xs={12} sm={6} md={4}>
                        <Paper elevation={3} sx={{ p: 2 }}>
                            <Typography variant="h6">Ray Lee</Typography>
                            <Typography>Founder & CEO</Typography>
                            <Typography variant="body2" color="textSecondary">
                                Ray has over a decade of experience in snowboarding and is passionate about bringing the best of the sport to enthusiasts worldwide.
                            </Typography>
                        </Paper>
                    </Grid>
                    <Grid item xs={12} sm={6} md={4}>
                        <Paper elevation={3} sx={{ p: 2 }}>
                            <Typography variant="h6">Lucia Si</Typography>
                            <Typography>Head of Sales</Typography>
                            <Typography variant="body2" color="textSecondary">
                                Lucia's expertise in retail management and customer service ensures that our customers receive first-class service every time.
                            </Typography>
                        </Paper>
                    </Grid>
                    <Grid item xs={12} sm={6} md={4}>
                        <Paper elevation={3} sx={{ p: 2 }}>
                            <Typography variant="h6">Emily White</Typography>
                            <Typography>Product Specialist</Typography>
                            <Typography variant="body2" color="textSecondary">
                                Emily is an expert in snowboard technology and gear, always ready to help you find the perfect fit for your riding style.
                            </Typography>
                        </Paper>
                    </Grid>
                </Grid>
            </Box>
        </Container>
    );
}
