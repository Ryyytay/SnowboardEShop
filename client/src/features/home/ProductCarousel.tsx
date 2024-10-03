import Slider from "react-slick";
import { Box, Typography } from "@mui/material";
import ProductCard from "../catalog/ProductCard";
import { Product } from "../../app/models/product";

interface Props {
  products: Product[];
}

function ProductCarousel({products}: Props) {
  const settings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 5,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
        }
      }
    ]
  };

  return (
    <Box sx={{ pt:4, pb:4 }}>
        <Typography variant="h5" gutterBottom sx={{ fontWeight: 'bold' }}>
            Featured Products
        </Typography>
        <Slider {...settings}>
        {products.map((product) => (
            <Box key={product.id} padding={1}> 
                <ProductCard product={product} />
            </Box>
        ))}
        </Slider>
    </Box>
  );
}

export default ProductCarousel;
