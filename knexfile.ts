import path from 'path';
import dotenv from 'dotenv';

dotenv.config();

export default {
    development : {
        client: 'mysql2',
        connection: {
            host: process.env.DATABASE_SQL_HOST,
            user: process.env.DATABASE_SQL_USER,
            password: process.env.DATABASE_SQL_PASSWORD,
            database: process.env.DATABASE_SQL_DATABASE_NAME
        },
        migrations: {
            tableName: 'knex_migrations',
            directory: path.resolve(__dirname, 'src', 'database', 'migrations'),
        },
        seeds: {
            directory: path.resolve(__dirname, 'src', 'database', 'seeds'),
        },
    },
};
