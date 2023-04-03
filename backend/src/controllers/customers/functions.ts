import { Request, Response } from "express";
import { execute } from "../../db/mysql.connector";
import { CustomerQueries } from "./queries";
import { ICustomerType } from "../../models/customer.models";

export const getCustomers = async (req: Request, res: Response) => {
    try {
        const response = await execute<ICustomerType>(CustomerQueries.GetCustomers, []);
        return res.status(200).json(response);
    } catch (error) {
        console.log(error);
    }
}

export const addCustomer = async (req: Request, res: Response) => {
    try {
        const body : ICustomerType = req.body;
        const { email_id, phone_no, first_name, last_name, name_id, address_id, country, state, city, flat, pincode } = body;
        const response = await execute<ICustomerType>(
            CustomerQueries.InsertCustomer, 
            [email_id, phone_no, first_name, last_name, country, state, city, flat, pincode]
        )
        if (response)    
            return res.status(200).json(response);
        else
            return res.status(400).json({ message: "Customer not added" });
    } catch (error) {
        return res.status(404).json({error : error})
    }
    /*
    Example request body:
    {
        "email_id": "john.doe@xyz.ghi",
        "phone_no": 1234567890,
        "first_name": "John",
        "last_name": "Doe",
        "country": "India",
        "state": "Maharashtra",
        "city": "Mumbai",
        "flat": "Flat 1",
        "pincode": 400001
    }
    */
}