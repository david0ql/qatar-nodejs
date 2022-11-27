import { response } from "express";
import { connection } from "../common/conexion.js";


const create = (req, res = response) => {
  connection.query(
    `
  INSERT INTO contiendas  
  (id_pais)
  VALUES (?)`,
    [req.params.idPais],
    function (err, result, fields) {
      err ? res.json(err) : res.json(result);
    }
  );
};



export { create };
