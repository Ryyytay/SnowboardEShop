import { Box, Typography, Pagination } from "@mui/material";
import { MetaData } from "../models/pagination";

interface Props {
    metaData: MetaData;
    onPageChange: (page: number) => void;
}

export default function AppPagination({metaData, onPageChange}: Props) {
    const {currentPage, totalCount, totalPages, pageSize} = metaData;
    return (
        <Box display='flex' justifyContent='space-between' alignItems='center'>
          <Typography>
            Showing {(currentPage-1)*pageSize+1}-{currentPage*pageSize > totalCount 
            ? totalCount 
            : currentPage*pageSize} of {totalCount} products
          </Typography>
          <Pagination
            color='secondary'
            size='large'
            count={totalPages}
            page={currentPage}
            onChange={(_e, page) => onPageChange(page)}
          />
        </Box>
    )
}