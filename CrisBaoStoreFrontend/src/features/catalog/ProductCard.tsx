import { LoadingButton } from "@mui/lab";
import { Avatar, Button, Card, CardActions, CardContent, CardHeader, CardMedia, Typography } from "@mui/material";
import { Link } from "react-router-dom";
import { Product } from "../../app/models/product";
import { useAppDispatch, useAppSelector } from "../../app/store/configureStore";
import { currencyFormat } from "../../app/util/util";
import { addBasketItemAsync } from "../basket/basketSlice";

interface Props {
    itemProduct: Product;
}

export default function ProductCard({ itemProduct }: Props) {
    const { status } = useAppSelector(state => state.basket);
    const dispatch = useAppDispatch();

    return (
        <Card sx={{ borderRadius: 2.5 }}>
            <CardHeader
                avatar={
                    <Avatar sx={{ bgcolor: 'primary.main' }}>
                        {itemProduct.brand.charAt(0).toUpperCase()} {/*CharAt(0): lấy kí tự thứ index 0, toUpperCase: viết hoa*/}
                    </Avatar>
                }
                title={itemProduct.name}
                titleTypographyProps={{
                    sx: { fontWeight: 'bold', color: 'primary.main' }
                }}
            />
            <CardMedia
                sx={{ height: 210, backgroundSize: 'contain' }}
                image={itemProduct.pictureUrl}
                title="green iguana"
                component={Link}
                to={`/catalog/${itemProduct.id}`}
            />
            <CardContent>
                <Typography gutterBottom color="error" variant="h6">
                    <Typography sx={{ textDecoration: 'line-through' }}>
                        {currencyFormat(itemProduct.price)}
                    </Typography>
                    {currencyFormat(itemProduct.price_KM)}
                </Typography>
                <Typography variant="body2" color="text.secondary">
                    {itemProduct.brand} / {itemProduct.type}
                </Typography>
            </CardContent>
            <CardActions>
                <LoadingButton
                    color='error'
                    variant='outlined'
                    loading={status.includes('pendingAddItem' + itemProduct.id)}
                    onClick={() => dispatch(addBasketItemAsync({ productId: itemProduct.id }))}
                >ADD TO CART</LoadingButton>
                <Button size="small" component={Link} to={`/catalog/${itemProduct.id}`}>VIEW</Button>
            </CardActions>
        </Card>
    )
}