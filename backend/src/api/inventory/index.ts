import { Router } from 'express';
import { TestQuery } from './controller';

const router = Router();

router.use('/', TestQuery);

export default router;
