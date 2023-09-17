import { Box, Typography } from "@mui/material";
import Slider from 'react-slick';

export default function HomePage() {
    const settings = {
        dots: true,
        infinite: true,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1
    };

    return (
        <>
            <Slider {...settings}>
                <div>
                    <img src="/images/img2.png" alt="hero" style={{ display: 'block', width: '100%', maxHeight: 800 }} />
                </div>
                <div>
                    <img src="/images/img3.webp" alt="hero" style={{ display: 'block', width: '100%', maxHeight: 800 }} />
                </div>
                <div>
                    <img src="/images/img1.jpg" alt="hero" style={{ display: 'block', width: '100%', maxHeight: 800 }} />
                </div>
            </Slider>
            <Box display='flex' justifyContent='center' sx={{ p: 4 }} >
                <Typography variant='h3'>
                    Welcome to Cris-Store!
                </Typography>
            </Box>
        </>
    )
}