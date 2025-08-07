import { Router } from 'express';
import studentsRoutes from '@api/students';
import inventoryRoutes from '@api/inventory';

const router = Router();

router.use('/students', studentsRoutes);
router.use('/inventory', inventoryRoutes);

export default router;
