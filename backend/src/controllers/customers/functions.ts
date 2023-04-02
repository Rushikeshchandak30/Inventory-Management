import { Request, Response } from "express";
import { execute } from "../../db/mysql.connector";
import { CustomerQueries } from "./queries";

export const getCustomers = async (req: Request, res: Response) => {
    try {
        const response = await execute(CustomerQueries.GetCustomers, []);
        return res.status(200).json(response);
    } catch (error) {
        console.log(error);
    }
}