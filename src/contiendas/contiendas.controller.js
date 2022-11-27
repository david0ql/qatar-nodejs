import { Router } from "express";
import {  create } from "./contiendas.service.js";
const contiendas = Router();


contiendas.use((req, res, next) => {
  next();
});

contiendas.post(
  "/:idPais",
  create
);

export {
  contiendas
};