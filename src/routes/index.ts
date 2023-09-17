import { Router } from "express";
import "reflect-metadata";
import danhmucRouter from "./danhmucRouter";

const router = Router();

router.use("/danh-muc", danhmucRouter);

export default router;
