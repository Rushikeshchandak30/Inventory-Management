import express from 'express';
import { getCustomers, addCustomer } from '../controllers/customers/functions';

const router = express.Router();
router.get('/getCustomers', getCustomers);
router.post('/addCustomer', addCustomer);

export default router;