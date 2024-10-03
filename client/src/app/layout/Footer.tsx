import { Box, Container, Typography, Link, Grid } from '@mui/material';


function Footer() {
    return (
        <Box component="footer" sx={{
            bgcolor: 'primary.dark',
            color: 'text.primary',       
            py: 3,
            mt: 4
        }}>
            <Container maxWidth="lg">
                <Grid container spacing={4}>
                    <Grid item xs={12} sm={4}>
                        <Typography variant="h6" component="div" sx={{ fontWeight: 'bold' }}>
                            SnowboardTown
                        </Typography>
                        <Typography variant="body2" sx={{ mt: 1 }}>
                            Your one-stop shop for all snowboarding gear.
                        </Typography>
                    </Grid>
                    <Grid item xs={12} sm={4}>
                        <Typography variant="h6" component="div" sx={{ fontWeight: 'bold' }}>
                            Quick Links
                        </Typography>
                        <Box sx={{ display: 'flex', flexDirection: 'column', mt: 1 }}>
                            <Link href="#" sx={{ color: 'text.secondary' }}>About Us</Link>
                            <Link href="#" sx={{ color: 'text.secondary' }}>Contact</Link>
                            <Link href="#" sx={{ color: 'text.secondary' }}>Support</Link>
                        </Box>
                    </Grid>
                    <Grid item xs={12} sm={4}>
                        <Typography variant="h6" component="div" sx={{ fontWeight: 'bold' }}>
                            Contact
                        </Typography>
                        <Typography variant="body2" sx={{ mt: 1 }}>
                            Email: contact@snowboardtown.com
                        </Typography>
                        <Typography variant="body2">
                            Phone: (555) 123-4567
                        </Typography>
                    </Grid>
                </Grid>
                <Typography variant="body2" sx={{ mt: 4, textAlign: 'center' }}>
                    © {new Date().getFullYear()} SnowboardTown. All rights reserved.
                </Typography>
            </Container>
        </Box>
    );
}

export default Footer;
