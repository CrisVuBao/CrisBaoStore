import { User } from "../../app/models/user";
import { createAsyncThunk, createSlice, isAnyOf } from "@reduxjs/toolkit";
import { FieldValues } from "react-hook-form";
import agent from "../../app/api/agent";
import { router } from "../../app/router/Routes";
import { toast } from "react-toastify";
import { setBasket } from "../basket/basketSlice";

interface AccountState { // create function
    user: User | null;
}

const initialState: AccountState = { // create object
    user: null
}

export const signInUser = createAsyncThunk<User, FieldValues> (
    'account/signInUser',
    async (data, thunkAPI) => {
        try {
            const userDto = await agent.Account.login(data);
            const {basket, ...user} = userDto;
            if (basket) thunkAPI.dispatch(setBasket(basket)); 
            localStorage.setItem('user',JSON.stringify(user)); // Storage user login inside Cookies
            return user;
        } catch (error: any) {
            return thunkAPI.rejectWithValue({error: error.data});
        }
    }
)

export const fetchCurrentUser = createAsyncThunk<User> (
    'account/fetchCurrentUser',
    async (_, thunkAPI) => {
        thunkAPI.dispatch(setUser(JSON.parse(localStorage.getItem('user')!))); // this is action, use set information user from localStorage to inside Redux store
        try {
            const userDto = await agent.Account.currentUser();
            const {basket, ...user} = userDto;
            if (basket) thunkAPI.dispatch(setBasket(basket)); 
            localStorage.setItem('user',JSON.stringify(user)); // Storage user login inside Cookies
            return user;
        } catch (error: any) {
            return thunkAPI.rejectWithValue({error: error.data});
        }
    },
    {
        condition: () => {
            if (!localStorage.getItem('user')) return false;
        }
    }
)

export const accountSlice = createSlice({
    name: 'account',
    initialState,
    reducers: {
        signOut: (state) => {
            state.user = null;
            localStorage.removeItem('user');
            router.navigate('/');
        },
        setUser: (state, action) => {
            state.user = action.payload;
        }
    }, 
    extraReducers: (builder => { // extraReducer: quản lý các action của ứng dụng một cách thú vị và dễ dàng hơn
        builder.addCase(fetchCurrentUser.rejected, (state) => {
            state.user = null;
            localStorage.removeItem('user');
            toast.error("Session expired - please login again");
            router.navigate('/');
        })
        builder.addMatcher(isAnyOf(signInUser.fulfilled, fetchCurrentUser.fulfilled), (state, action) => { // addMatcher: giúp gọi đến nhiều method async
            state.user = action.payload;
        })
        builder.addMatcher(isAnyOf(signInUser.rejected), (state, action) => {
            throw action.payload;
        })
    })
})

export const {signOut, setUser} = accountSlice.actions;