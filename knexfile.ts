import path from 'path';

export default {
    development : {
        client: 'mysql2',
        connection: {
            host: 'HOST-HERE',
            user: 'USER-HERE',
            password: 'PASSWORD-HERE',
            database: 'DATABASE-HERE'
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
