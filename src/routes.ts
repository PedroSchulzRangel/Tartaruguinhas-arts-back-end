import { Router} from 'express';

import ProdutoController from './controllers/ProdutoController';
import CategoriaController from './controllers/CategoriaController';

const routes = Router();

routes.get('/cadastros', ProdutoController.list);
routes.get('/categoria', CategoriaController.list);


export default routes;