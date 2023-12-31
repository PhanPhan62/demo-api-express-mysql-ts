import { Router } from "express";
import { container } from "tsyringe";
import { DanhMucController } from "../controllers/danhmucController";

const danhmucRouter = Router();
const danhmucController = container.resolve(DanhMucController);

danhmucRouter.get(
  "/getbyid/:id",
  danhmucController.getBranchById.bind(danhmucController)
);
danhmucRouter.get(
  "/get-all",
  danhmucController.getDanhMucAll.bind(danhmucController)
);
danhmucRouter.put(
  "/update",
  danhmucController.updateDanhMuc.bind(danhmucController)
);
danhmucRouter.post(
  "/create",
  danhmucController.createDanhMuc.bind(danhmucController)
);
danhmucRouter.delete(
  "/delete/:id",
  danhmucController.deleteDanhMuc.bind(danhmucController)
);

export default danhmucRouter;
