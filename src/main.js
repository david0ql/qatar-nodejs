import express, { json } from "express";
const app = express();
import cors from "cors";
import { paises } from "./paises/paises.controller.js";
import { ganador } from "./ganador/ganador.controller.js";
import { jugadores } from "./jugadores/jugadores.controller.js";
import { contiendas } from "./contiendas/contiendas.controller.js";
import path from 'path';
import {fileURLToPath} from 'url';

const __filename = fileURLToPath(import.meta.url);

// 👇️ "/home/john/Desktop/javascript"
const __dirname = path.dirname(__filename);


app
  .use(cors())
  .use(json())
  .use("/paises", paises)
  .use("/ganador", ganador)
  .use("/jugadores", jugadores)
  .use("/contiendas", contiendas)
  .use('/static', express.static(path.join(__dirname, 'public')))

app.listen(9091)