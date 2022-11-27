import { Router } from "express";
import { find } from "./ganador.service.js";

const ganador = Router();

ganador.use((req, res, next) => {
  next();
});

ganador.get(
  "/",
  find
);

export {
  ganador 
};