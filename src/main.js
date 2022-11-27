import express, { json } from "express";
const app = express();
import cors from "cors";
import { paises } from "./paises/paises.controller.js";



app
  .use(cors())
  .use(json())
  .use("/paises", paises)


app.listen(9091)