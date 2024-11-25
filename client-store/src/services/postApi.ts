import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react';
import {API_URL} from "../env";

export const postApi = createApi({
    reducerPath: 'postApi',
    baseQuery: fetchBaseQuery({ baseUrl: `${API_URL}/api` }),
    endpoints: (builder) => ({
        getPosts: builder.query({
            query: () => 'posts',
        }),
        // addPost: builder.mutation({
        //     query: (newPost) => ({
        //         url: 'posts',
        //         method: 'POST',
        //         body: newPost,
        //     }),
        // }),
    }),
});

export const { useGetPostsQuery, /*useAddPostMutation*/ } = postApi;
