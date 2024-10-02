const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Sample route
app.get('/', (req, res) => {
    res.send('Hello, World!');
});

// New route
app.get('/hello', (req, res) => {
    res.send('Hello from /hello route! new code');
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
