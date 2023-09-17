import express, { Request, Response } from 'express';
import router from './routes';
import bodyParser from 'body-parser';
// const bodyParser = require('body-parser');

const app = express();
const PORT = 3000;

// Sử dụng body-parser để xử lý dữ liệu từ phần thân của yêu cầu
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(express.json());

app.use('/api', router);

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
