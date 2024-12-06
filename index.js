const express = require('express');
const app = express();

app.get('/', (req, res) => {
    console.log(`Server is running on port ${PORT} and APP_NAME ${APP_NAME}`)
    res.send('Hello, CI/CD test tkkt!');
});



const PORT = process.env.PORT || 3000;
const APP_NAME = process.env.APP_NAME
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT} and APP_NAME ${APP_NAME}`);
});

