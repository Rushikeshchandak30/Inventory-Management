import express from 'express';
import CustomerRoutes from './routes/customer.routes';

const router = express.Router();
router.get('/', (req, res) => {
    res.status(200).send('API IS RUNNING');
});
router.use('/customer', CustomerRoutes); /* /api/customer */

export default router;