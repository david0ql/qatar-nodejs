import { Router } from "express";
import { find, create, remove } from "./paises.services.js";
const paises = Router();


paises.use((req, res, next) => {
  next();
});

paises.get(
  "/",
  find
);

paises.post(
  "/:nombre",
  create
);

paises.delete(
  "/:idPais",
  remove
);

export {
  paises
};