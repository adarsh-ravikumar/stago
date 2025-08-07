import { Router } from 'express';
import { TestQuery } from './controller';

const router = Router();

router.get('/', TestQuery);

export default router;
