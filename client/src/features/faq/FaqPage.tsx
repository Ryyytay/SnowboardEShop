import { useState } from 'react';
import { Container, Typography, Accordion, AccordionSummary, AccordionDetails, Box } from '@mui/material';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';

export default function FAQPage() {
    const [expanded, setExpanded] = useState<string | false>(false);

    const handleChange = (panel: string) => (_event: React.SyntheticEvent, newExpanded: boolean) => {
        setExpanded(newExpanded ? panel : false);
    };

    const faqs = [
        {
            id: 'panel1',
            question: 'How do I return a product?',
            answer: 'You can return products within 30 days of purchase. Please contact our support for a free return label.'
        },
        {
            id: 'panel2',
            question: 'How long does delivery take?',
            answer: 'Delivery typically takes 3-5 business days. Remote areas might take up to 7 business days.'
        },
        {
            id: 'panel3',
            question: 'Do you ship internationally?',
            answer: 'Yes, we ship to over 50 countries. International shipping costs will apply, and will be added at checkout.'
        },
        {
            id: 'panel4',
            question: 'How can I track my order?',
            answer: 'Once your order is shipped, you will receive an email with tracking information.'
        },
        {
            id: 'panel5',
            question: 'Can I change my order after placing it?',
            answer: 'You can change your order within 24 hours of placement. Please contact customer service for assistance.'
        }
    ];

    return (
        <Container maxWidth="md">
            <Typography variant="h4" gutterBottom>
                Frequently Asked Questions
            </Typography>
            <Box sx={{ mt: 2 }}>
                {faqs.map((faq) => (
                    <Accordion key={faq.id} expanded={expanded === faq.id} onChange={handleChange(faq.id)}>
                        <AccordionSummary expandIcon={<ExpandMoreIcon />}>
                            <Typography>{faq.question}</Typography>
                        </AccordionSummary>
                        <AccordionDetails>
                            <Typography>
                                {faq.answer}
                            </Typography>
                        </AccordionDetails>
                    </Accordion>
                ))}
            </Box>
        </Container>
    );
}
