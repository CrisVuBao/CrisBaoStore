import * as React from 'react';
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import IconButton from '@mui/material/IconButton';
import Typography from '@mui/material/Typography';
import Menu from '@mui/material/Menu';
import MenuIcon from '@mui/icons-material/Menu';
import Container from '@mui/material/Container';
import Avatar from '@mui/material/Avatar';
import Button from '@mui/material/Button';
import Tooltip from '@mui/material/Tooltip';
import MenuItem from '@mui/material/MenuItem';
import AdbIcon from '@mui/icons-material/Adb';
import { grey } from '@mui/material/colors';
import ImportantDevicesIcon from '@mui/icons-material/ImportantDevices';
import SearchIcon from '@mui/icons-material/Search';
import { alpha, styled } from '@mui/material/styles';
import InputBase from '@mui/material/InputBase';
import { Badge, FormControlLabel, FormGroup, List, ListItem, Switch, debounce } from '@mui/material';
import { Link, NavLink } from 'react-router-dom';
import { ShoppingCart } from '@mui/icons-material';
import PermPhoneMsgIcon from '@mui/icons-material/PermPhoneMsg';
import ProductSearch from '../../features/catalog/ProductSearch';
import { useAppDispatch, useAppSelector } from '../store/configureStore';
import { setProductParams } from '../../features/catalog/catalogSlice';
import ProductList from '../../features/catalog/ProductList';
import Catalog from '../../features/catalog/Catalog';
import logo from "./VuBaoStore.png";
import SingedInMenu from './SignedInMenu';

const settings = ['Profile', 'Account', 'Dashboard', 'Logout'];

const Search = styled('div')(({ theme }) => ({
  position: 'relative',
  borderRadius: theme.shape.borderRadius,
  backgroundColor: alpha(theme.palette.common.white, 0.15),
  '&:hover': {
    backgroundColor: alpha(theme.palette.common.white, 0.25),
  },
  marginRight: theme.spacing(2),
  marginLeft: 0,
  width: '100%',
  [theme.breakpoints.up('sm')]: {
    marginLeft: theme.spacing(3),
    width: 'auto',
  },
}));

const SearchIconWrapper = styled('div')(({ theme }) => ({
  padding: theme.spacing(0, 2),
  height: '100%',
  position: 'absolute',
  pointerEvents: 'none',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
}));

const StyledInputBase = styled(InputBase)(({ theme }) => ({
  color: 'inherit',
  '& .MuiInputBase-input': {
    padding: theme.spacing(1, 1, 1, 0),
    // vertical padding + font size from searchIcon
    paddingLeft: `calc(1em + ${theme.spacing(4)})`,
    transition: theme.transitions.create('width'),
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '20ch',
    },
  },
}));

const rightLinks = [
  { title: 'Login', path: '/login' },
  { title: 'Register', path: '/register' }
]

const midLinks = [
  { title: 'Home', path: '/' },
  { title: 'Product', path: '/catalog' },
  { title: 'About', path: '/about' },
  { title: 'Contact', path: '/contact' }
]

const navStyles = {
  color: 'inherit',
  textDecoration: 'none',
  typography: "h6",
  '&:hover': {
    color: 'grey.500'
  },
  '&.active': {
    color: 'text.secondary'
  }
}

interface Props {
  darkMode: boolean;
  handleThemeChange: () => void;
}

export default function Header({ handleThemeChange, darkMode }: Props) {

  const { user } = useAppSelector(state => state.account);
  const { basket } = useAppSelector((state => state.basket));
  const itemCount = basket?.items.reduce((sum, item) => sum + item.quantity, 0);

  const { productParams } = useAppSelector(state => state.catalog)
  const [searchTerm, setSearchTerm] = React.useState(productParams.searchTerm);
  const dispatch = useAppDispatch();

  const debouncedSearch = debounce((event: any) => {
    dispatch(setProductParams({ searchTerm: event.target.value }))
  }, 1000); // chờ khoảng thời gian nào đó thì mới gửi action lên cho Redux, để thực hiện chức năng Search truy vấn sản phẩm



  const [anchorElNav, setAnchorElNav] = React.useState<null | HTMLElement>(null);
  const [anchorElUser, setAnchorElUser] = React.useState<null | HTMLElement>(null);

  const handleOpenNavMenu = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorElNav(event.currentTarget);
  };
  const handleOpenUserMenu = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorElUser(event.currentTarget);
  };

  const handleCloseNavMenu = () => {
    setAnchorElNav(null);
  };

  const handleCloseUserMenu = () => {
    setAnchorElUser(null);
  };


  const MaterialUISwitch = styled(Switch)(({ theme }) => ({
    width: 62,
    height: 34,
    padding: 7,
    '& .MuiSwitch-switchBase': {
      margin: 1,
      padding: 0,
      transform: 'translateX(6px)',
      '&.Mui-checked': {
        color: '#fff',
        transform: 'translateX(22px)',
        '& .MuiSwitch-thumb:before': {
          backgroundImage: `url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" height="20" width="20" viewBox="0 0 20 20"><path fill="${encodeURIComponent(
            '#fff',
          )}" d="M4.2 2.5l-.7 1.8-1.8.7 1.8.7.7 1.8.6-1.8L6.7 5l-1.9-.7-.6-1.8zm15 8.3a6.7 6.7 0 11-6.6-6.6 5.8 5.8 0 006.6 6.6z"/></svg>')`,
        },
        '& + .MuiSwitch-track': {
          opacity: 1,
          backgroundColor: theme.palette.mode === 'dark' ? '#8796A5' : '#aab4be',
        },
      },
    },
    '& .MuiSwitch-thumb': {
      backgroundColor: theme.palette.mode === 'dark' ? '#003892' : '#001e3c',
      width: 32,
      height: 32,
      '&:before': {
        content: "''",
        position: 'absolute',
        width: '100%',
        height: '100%',
        left: 0,
        top: 0,
        backgroundRepeat: 'no-repeat',
        backgroundPosition: 'center',
        backgroundImage: `url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" height="20" width="20" viewBox="0 0 20 20"><path fill="${encodeURIComponent(
          '#fff',
        )}" d="M9.305 1.667V3.75h1.389V1.667h-1.39zm-4.707 1.95l-.982.982L5.09 6.072l.982-.982-1.473-1.473zm10.802 0L13.927 5.09l.982.982 1.473-1.473-.982-.982zM10 5.139a4.872 4.872 0 00-4.862 4.86A4.872 4.872 0 0010 14.862 4.872 4.872 0 0014.86 10 4.872 4.872 0 0010 5.139zm0 1.389A3.462 3.462 0 0113.471 10a3.462 3.462 0 01-3.473 3.472A3.462 3.462 0 016.527 10 3.462 3.462 0 0110 6.528zM1.665 9.305v1.39h2.083v-1.39H1.666zm14.583 0v1.39h2.084v-1.39h-2.084zM5.09 13.928L3.616 15.4l.982.982 1.473-1.473-.982-.982zm9.82 0l-.982.982 1.473 1.473.982-.982-1.473-1.473zM9.305 16.25v2.083h1.389V16.25h-1.39z"/></svg>')`,
      },
    },
    '& .MuiSwitch-track': {
      opacity: 1,
      backgroundColor: theme.palette.mode === 'dark' ? '#8796A5' : '#aab4be',
      borderRadius: 20 / 2,
    },
  }));


  return (
    <AppBar position="static" color='primary' >
      <Container maxWidth="xl">
        <Toolbar disableGutters sx={{ display: 'flex', alignItems: 'center' }}>
          <Box display='flex' alignItems='center'>
            <a href='/'>
              <img src={logo} alt='Logo' width={200} />
            </a>
            <Search
              onChange={(event: any) => {
                setSearchTerm(event.target.value) // set giá trị(nhập tên vào ô input)
                debouncedSearch(event); // bắt đầu search sau 1 giây
              }}
            >
              <SearchIconWrapper>
                <SearchIcon />
              </SearchIconWrapper>
              <StyledInputBase
                placeholder="Search…"
                inputProps={{ 'aria-label': 'search' }}
              />
            </Search>
            <FormGroup>
              <FormControlLabel
                // checked={darkMode} giá trị mặc định của darkMode là false(light), còn khi onChange={handleThemChange} là true(dark)
                control={<MaterialUISwitch sx={{ m: 0.5 }} defaultChecked checked={darkMode} onChange={handleThemeChange} />}
                label="Switch"
              />
            </FormGroup>
          </Box>
          <Box sx={{ display: 'flex', mr: 15, ml: 5 }} alignItems='center'>
            <List sx={{ display: 'flex' }}>
              {midLinks.map(({ title, path }) => (
                <ListItem
                  component={NavLink}
                  to={path}
                  key={path}
                  sx={navStyles}
                >
                  {title}
                </ListItem>
              ))}
            </List>
          </Box >
          <Box sx={{ flexGrow: 0 }} display='flex' alignItems='center'>
            <PermPhoneMsgIcon sx={{ width: 25 }} />
            <Typography sx={{ mr: 4, fontSize: 14 }}>
              0123456789
            </Typography>
            <IconButton component={Link} to='/basket' size='large' edge='start' color='inherit' sx={{ mr: 1.5 }}>
              <Badge badgeContent={itemCount} color="secondary">
                <ShoppingCart />
              </Badge>
            </IconButton>
            {user ? (
              <SingedInMenu />
            ) : (
              <List sx={{ display: 'flex' }}>
                {rightLinks.map(({ title, path }) => (
                  <ListItem
                    component={NavLink}
                    to={path}
                    key={path}
                    sx={navStyles}
                  >
                    {title}
                  </ListItem>
                ))}
              </List>
            )}

          </Box>
        </Toolbar>
      </Container>
    </AppBar>
  );
}
