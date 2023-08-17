import { Link, useNavigate } from "react-router-dom";
import { useAppDispatch } from "../../app/store/configureStore";
import { useForm } from "react-hook-form";
import { LoadingButton } from "@mui/lab";
import { Container, Paper, CssBaseline, Box, Avatar, Typography, TextField, FormControlLabel, Checkbox, Grid, Alert, AlertTitle, List, ListItem, ListItemText } from "@mui/material";
import LockOutlinedIcon from '@mui/icons-material/LockOutlined';
import agent from "../../app/api/agent";
import { useState } from "react";

export default function Register() {
    const [validationErrors, setValidationErrors] = useState([]);
    const { register, handleSubmit, formState: { isSubmitting, errors, isValid } } = useForm({
        mode: 'onTouched'
    })

    return (
        <Container component={Paper} maxWidth="xs">
            <CssBaseline />
            <Box
                sx={{
                    marginTop: 8,
                    display: 'flex',
                    flexDirection: 'column',
                    alignItems: 'center',
                }}
            >
                <Avatar sx={{ m: 1, bgcolor: 'primary.main' }}>
                    <LockOutlinedIcon />
                </Avatar>
                <Typography component="h1" variant="h5">
                    Register
                </Typography>
                <Box component="form" onSubmit={handleSubmit(data => agent.Account.register(data).catch(error => setValidationErrors(error)))} noValidate sx={{ mt: 1 }}>
                    <TextField
                        margin="normal"
                        fullWidth
                        label="Username"
                        {...register('username', { required: 'Username is required' })}
                        error={!!errors.username}
                        helperText={errors?.username?.message as string}
                    />
                    <TextField
                        margin="normal"
                        fullWidth
                        label="Email"
                        {...register('email', { required: 'Email is required' })}
                        error={!!errors.email}
                        helperText={errors?.email?.message as string}
                    />
                    <TextField
                        margin="normal"
                        fullWidth
                        label="Password"
                        type="password"
                        {...register('password', { required: 'Password is required' })}
                        error={!!errors.password}
                        helperText={errors?.password?.message as string}
                    />
                    {validationErrors.length > 0 &&
                        <Alert severity="error">
                            <AlertTitle>Validation Errors</AlertTitle>
                            <List>
                                {validationErrors.map(error => (
                                    <ListItem key={error}>
                                        <ListItemText>{error}</ListItemText>
                                    </ListItem>
                                ))}
                            </List>
                        </Alert>}
                    <FormControlLabel
                        control={<Checkbox value="remember" color="primary" />}
                        label="Remember me"
                    />
                    <LoadingButton
                        loading={isSubmitting}
                        type="submit"
                        fullWidth
                        variant="contained"
                        sx={{ mt: 3, mb: 2 }}
                        disabled={!isValid}
                    >
                        Register
                    </LoadingButton>
                    <Grid container>
                        <Grid item sx={{ mb: 3 }}>
                            <Link to='/login'>
                                {"You have an account? Sign In"}
                            </Link>
                        </Grid>
                    </Grid>
                </Box>
            </Box>
        </Container>
    );
}