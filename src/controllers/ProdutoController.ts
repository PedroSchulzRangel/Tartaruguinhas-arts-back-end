import { Request, Response } from 'express';
import knex from '../database/connection';


export default {

    async list(request: Request, response: Response) {
        var result = await knex('tb_produto').orderBy('nome');

        return response.status(200).json({ data: result });
    },

    async find(request: Request, response: Response) {
        const { codigo } = request.params;
        const produto = await knex('tb_produto').where({ codigo });

        return response.status(200).json({ data: produto });
    },


}