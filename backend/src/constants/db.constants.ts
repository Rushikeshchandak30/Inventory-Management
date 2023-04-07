import 'dotenv/config';

export const DB_HOST= process.env.MY_SQL_DB_HOST;
export const DB_USER= process.env.MY_SQL_DB_USER;
export const DB_PASSWORD= process.env.MY_SQL_DB_PASSWORD;
export const DB_PORT= process.env.MY_SQL_DB_PORT;
export const DB_DATABASE= process.env.MY_SQL_DB_DATABASE;
export const DB_CONNECTION_LIMIT= process.env.MY_SQL_DB_CONNECTION_LIMIT ? parseInt(process.env.MY_SQL_DB_CONNECTION_LIMIT) : 4;