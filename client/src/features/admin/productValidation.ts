import * as yup from 'yup';

export const validationSchema = yup.object({
    name: yup.string().required(),
    brand: yup.string().required(),
    type: yup.string().required(),
    price: yup.number()
        .transform(value => (isNaN(value) ? undefined : value))  // Transform empty string to undefined
        .required('Price is required')  // Message if the value is not provided
        .typeError('Price must be a number')  // Message if the value is not a number
        .moreThan(100, 'Price must be greater than $100'),  // Message if the value is not more than 100
    quantityInStock: yup.number()
        .transform(value => (isNaN(value) ? undefined : value))  // Transform empty string to undefined
        .required('Quantity in stock is required')  // Require the field explicitly
        .typeError('Quantity in stock must be a number')  // Custom message if not a number
        .min(0, 'Quantity in stock cannot be negative'),  // Ensure non-negative numbers
    description: yup.string().required(),
    file: yup.mixed().when('pictureUrl', {
        is: (value: string) => !value,
        then: schema => schema.required('Please provide an image'),
        otherwise: schema => schema.notRequired()
    })
})