import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react';
import {API_URL} from "../env";
import {ICategoryItem} from "../interfaces/categories";

export const categoryApi = createApi({
    reducerPath: 'categoryApi',
    baseQuery: fetchBaseQuery({ baseUrl: `${API_URL}/api` }),
    endpoints: (builder) => ({
        getCategories: builder.query<ICategoryItem[], void>({
            query: () => 'categories',
        }),
        // addPost: builder.mutation({
        //     query: (newPost) => ({
        //         url: 'categories',
        //         method: 'POST',
        //         body: newPost,
        //     }),
        // }),
    }),
});

export const { useGetCategoriesQuery, /*useAddPostMutation*/ } = categoryApi;
