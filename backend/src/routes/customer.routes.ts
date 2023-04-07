import express from 'express';
import { getCustomers, addCustomer, getCustomerWithBounds } from '../controllers/customers/functions';

const router = express.Router();
router.get('/getCustomers', getCustomers);
router.get('/getCustomers/:pageNo', getCustomerWithBounds);
router.post('/addCustomer', addCustomer);

export default router;