import { configureStore } from '@reduxjs/toolkit';
import { postApi } from '../services/postApi.ts';
import { categoryApi } from '../services/categoryApi.ts';

const store = configureStore({
    reducer: {
        [postApi.reducerPath]: postApi.reducer,
        [categoryApi.reducerPath]: categoryApi.reducer,
    },
    middleware: (getDefaultMiddleware) =>
        getDefaultMiddleware().concat(
            postApi.middleware,
            categoryApi.middleware),
});

export default store;
