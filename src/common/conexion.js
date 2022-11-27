import { createConnection } from 'mysql';

const connection = createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'mundial'
});
 
connection.connect();

export default connection;