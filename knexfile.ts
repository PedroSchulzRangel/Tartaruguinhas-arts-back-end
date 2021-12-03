import path from 'path';

export default {
    development : {
        client: 'mysql2',
        connection: {
            host: 'YOUR HOST HERE',
            user: 'YOUR USER HERE',
            password: 'YOUR PASSWORD HERE',
            database: 'YOUR DATABASE HERE'
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
