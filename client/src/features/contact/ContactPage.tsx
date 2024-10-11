import { Container, Typography, TextField, Button, Box } from '@mui/material';
import { useState } from 'react';

export default function ContactPage() {
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        message: ''
    });

    const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        setFormData({
            ...formData,
            [e.target.name]: e.target.value
        });
    };

    const handleSubmit = (e: React.FormEvent) => {
        e.preventDefault();
        console.log("Form data submitted:", formData);
        // Integration with backend to process the form data goes here
    };

    return (
        <Container maxWidth="sm">
            <Typography variant="h3" gutterBottom align="center">
                Contact Us
            </Typography>
            <Typography paragraph>
                Got a question or feedback? We'd love to hear from you. Send us a message and we'll respond as soon as possible.
            </Typography>
            <form onSubmit={handleSubmit}>
                <TextField
                    fullWidth
                    label="Your Name"
                    name="name"
                    variant="outlined"
                    margin="normal"
                    required
                    value={formData.name}
                    onChange={handleInputChange}
                />
                <TextField
                    fullWidth
                    label="Your Email"
                    name="email"
                    type="email"
                    variant="outlined"
                    margin="normal"
                    required
                    value={formData.email}
                    onChange={handleInputChange}
                />
                <TextField
                    fullWidth
                    label="Your Message"
                    name="message"
                    variant="outlined"
                    margin="normal"
                    multiline
                    rows={4}
                    required
                    value={formData.message}
                    onChange={handleInputChange}
                />
                <Box textAlign="center" mt={2}>
                    <Button type="submit" variant="contained" color="primary">
                        Send Message
                    </Button>
                </Box>
            </form>
        </Container>
    );
}
