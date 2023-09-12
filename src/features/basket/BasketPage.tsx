import { Button, Grid, IconButton, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Typography } from "@mui/material";
import BasketSumTotal from "./BasketSumTotal";
import { Link } from "react-router-dom";
import { useAppDispatch, useAppSelector } from "../../app/store/configureStore";
import BasketTable from "./BasketTable";

export default function BasketPage() {
  const { basket } = useAppSelector(state => state.basket); // {basket} là giá trị được tham chiếu tới useStoreContext() để lấy các dữ liệu, thuộc tính từ bên useStoreContext()
  const dispatch = useAppDispatch();

  if (!basket) return <Typography variant="h3">Basket Empty !!!</Typography>

  return (
    <>
      <BasketTable items={basket.items} />
      <Grid container>
        <Grid item xs={6} />
        <Grid item xs={6}>
          <BasketSumTotal /> {/**Component tổng tiền */}
          <Button
            component={Link} // của React Router, để link đến các Route
            to='/checkout'
            variant='contained'
            size='large'
            fullWidth
          >
            Checkout
          </Button>
        </Grid>
      </Grid>
    </>
  )
}