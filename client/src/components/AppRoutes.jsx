import React from "react";
import { Route, Routes } from "react-router-dom";

import PostsList from "../features/posts/PostsList";
import PostsDetails from "../features/posts/PostsDetails";
// Add new routes here
function AppRoutes() {
    return (
        <Routes>
            <Route path="/" element={<PostsList />} />
            <Route path="posts/:id" element={<PostsDetails />} />
            <Route path="/new" element={<h1>New Post Form</h1>} />
        </Routes>
    );
}

export default AppRoutes;