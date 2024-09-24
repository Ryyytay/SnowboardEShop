import { Box, Typography } from "@mui/material";
import ProductCarousel from './ProductCarousel';
import useProducts from "../../app/hooks/useProducts";
import PromoCard from "./PromoCard";
import Banner from "./Banner";
import FeatureSection from "./Features";

export default function HomePage() {
  const { products, productsLoaded } = useProducts();

  const contentPadding = 5;

  return (
  <>
    <Box padding={contentPadding}>

      <Banner />

      <ProductCarousel products={products} />

      <PromoCard />

      <FeatureSection />
      
    </Box>
  </>
  );
}
