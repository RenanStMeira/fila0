import { Router } from "express";
import { PatientController } from "../Controllers/Patients/patientsController";
import { UploadService } from "../Core/Services/uploadservice";

const router = Router();

const patientController = new PatientController();

const uploadService = new UploadService();

//Rotas para upload de exames e anaminese 
router.post('/upload/exames', uploadService.guard('uploads/exames'), patientController.uploadImages);
router.post('/upload/anaminese', uploadService.guard('uploads/anaminese'), patientController.upload);

//Rotas para criação, busca e deletar pacientes
router.get('/pacientes', patientController.list);
router.post('/criar/pacientes', patientController.create);
router.delete('/excluir/pacientes/:id', patientController.delete);


export { router };