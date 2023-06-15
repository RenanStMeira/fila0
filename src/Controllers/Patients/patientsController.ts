import { Request, Response } from "express";
import { prismaService } from "../Service/prisma/prismaservice";

export class PatientController {
    async create(req: Request, res: Response) {
      await prismaService.pacientes.create({ 
            data: {
                nome: req.body.nome,
                data_nasc: req.body.data_nasc,
                cidade: req.body.cidade,
                cid: req.body.cid                
            }
         })
        return res.json({ message: 'Paciente cadastrado com sucesso' });
    }

    async list(req: Request, res: Response) {
        try {
            const pacientes = await prismaService.pacientes.findMany();
            return res.json(pacientes);
        } catch (error) {
            console.error(error);
            return res.status(500).json({ message: 'erro ao criar paciente' });
        }
    }

    async delete (req: Request, res: Response) {
        const { id } = req.params;

        try {
            await prismaService.pacientes.deleteMany({
                where: {
                    id: id
                }
            })

            return res.json({ message: 'Paciente excluido com sucesso' });
        } catch (error) {
            console.error(error);
            return res.status(500).json({ message: 'Erro ao excluir paciente' }); 
        }
    }

    upload(req: Request, res: Response) {
        res.json({ message: 'Anaminesee inserido com sucesso' })
    }

    uploadImages(req: Request, res: Response) {
        res.json({ message: 'exames inseridos com sucesso' })    }
}