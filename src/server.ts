import express from 'express';

import routes from './routes';


const app = express();

const PORT = 3333;

app.use(express.json());

app.use(routes);


app.listen(process.env.PORT || PORT , () => console.log(`Server is running at port ${PORT}...`));