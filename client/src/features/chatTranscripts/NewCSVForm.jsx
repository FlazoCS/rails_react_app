import { useState } from "react";
import { API_CHAT_URL } from "../../constants"; // Ensure this constant is correctly defined

function UploadCSVForm() {
    const [file, setFile] = useState(null); // State to hold the selected file

    const handleFileChange = (e) => {
        setFile(e.target.files[0]); // Set the selected file to state
    };

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (!file) {
            console.log("Please select a file.");
            return;
        }

        const formData = new FormData();
        formData.append("file", file);

        try {
            const response = await fetch(API_CHAT_URL, {
                method: "POST",
                body: formData,
            });

            if (response.ok) {
                console.log("CSV imported successfully!");
                // Optionally handle redirection or display success message
            } else {
                console.error("Failed to import CSV:", response.statusText);
                // Handle error scenario
            }
        } catch (error) {
            console.error("Error uploading CSV:", error.message);
            // Handle network or other errors
        }
    };

    return (
        <div>
            <h2>Upload CSV</h2>
            <form onSubmit={handleSubmit}>
                <div>
                    <input type="file" onChange={handleFileChange} accept=".csv" />
                </div>
                <div>
                    <button type="submit">Upload CSV</button>
                </div>
            </form>
        </div>
    );
}

export default UploadCSVForm;