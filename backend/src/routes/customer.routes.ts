import express from 'express';
import { getCustomers } from '../controllers/customers/functions';

const router = express.Router();
router.get('/getCustomers', getCustomers);

export default router;