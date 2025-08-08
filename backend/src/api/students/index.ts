import { Router } from 'express';
import { TestQuery } from './controller';

const router = Router();

router.get('/get-student/:id', TestQuery);

export default router;
