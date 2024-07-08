import React from "react";
import { Route, Routes } from "react-router-dom";

import PostsList from "../features/posts/PostsList";
import PostsDetails from "../features/posts/PostsDetails";
import NewPostForm from "../features/posts/NewPostForm";
import NewCSVForm from "../features/chatTranscripts/NewCSVForm";

// Add new routes here
function AppRoutes() {
    return (
        <Routes>
            <Route path="/" element={<PostsList />} />
            <Route path="posts/:id" element={<PostsDetails />} />
            <Route path="/new" element={<NewPostForm />} />
            <Route path="/upload-csv" element={<NewCSVForm />} />
        </Routes>
    );
}

export default AppRoutes;