import { Request, Response } from "express";

export class AdminController {
    async create (req: Request, res: Response) {
        const { name, email, password, contact, adress } = req.body
    }
}