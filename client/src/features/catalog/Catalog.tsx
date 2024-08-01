import LoadingComponent from "../../app/layout/LoadingComponent";
import { useAppDispatch, useAppSelector } from "../../app/store/configureStore";
import { fetchFilters, fetchProductsAsync, productSelectors } from "./catalogSlice";
import ProductList from "./ProductList";
import { useEffect } from "react";

export default function Catalog() {
  const products = useAppSelector(productSelectors.selectAll);
  const {productsLoaded, status, filtersLoaded} = useAppSelector(state => state.catalog);
  const dispatch = useAppDispatch();

  useEffect(() => {
    if (!productsLoaded) dispatch(fetchProductsAsync());
    if (!filtersLoaded) dispatch(fetchFilters());
  }, [productsLoaded, dispatch, filtersLoaded]);

  if (status.includes('pending')) return <LoadingComponent message='Loading products...'></LoadingComponent>

  return (
    <>
      <ProductList products={products} />
    </>
  );
}