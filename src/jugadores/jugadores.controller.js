import { Router } from "express";
import { find } from "./jugadores.service.js";

const jugadores = Router();

jugadores.use((req, res, next) => {
  next();
});

jugadores.get(
  "/",
  find
);

export {
  jugadores
};