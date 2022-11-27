import express, { json } from "express";
const app = express();
import cors from "cors";
import { paises } from "./paises/paises.controller.js";
import { ganador } from "./ganador/ganador.controller.js";
import { jugadores } from "./jugadores/jugadores.controller.js";
import { contiendas } from "./contiendas/contiendas.controller.js";

app
  .use(cors())
  .use(json())
  .use("/paises", paises)
  .use("/ganador", ganador)
  .use("/jugadores", jugadores)
  .use("/contiendas", contiendas)
app.listen(9091)