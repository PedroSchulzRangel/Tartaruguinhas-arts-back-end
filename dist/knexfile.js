"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const path_1 = __importDefault(require("path"));
const dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
exports.default = {
    development: {
        client: 'mysql2',
        connection: {
            host: process.env.DATABASE_SQL_HOST,
            user: process.env.DATABASE_SQL_USER,
            password: process.env.DATABASE_SQL_PASSWORD,
            database: process.env.DATABASE_SQL_DATABASE_NAME
        },
        migrations: {
            tableName: 'knex_migrations',
            directory: path_1.default.resolve(__dirname, 'src', 'database', 'migrations'),
        },
        seeds: {
            directory: path_1.default.resolve(__dirname, 'src', 'database', 'seeds'),
        },
    },
};
