import { createConnection } from 'mysql';

import "dotenv/config.js";

const connection = createConnection({
  host     : 'localhost',
  user     : process.env.MYSQLUSER,
  password : process.env.MYSQLPASSWORD,
  database : process.env.MYSQLDB
});
 
connection.connect();

export  {connection}