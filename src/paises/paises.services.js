import { response } from "express";
import { connection } from "../common/conexion.js";


const find = (req, res = response) => {
  //hacer query para buscar todos
  connection.query(
    `
    SELECT * FROM paises
   `,
    [],
    function (err, result, fields) {
      result.length == 0
        ? res.status(404).json({ response: err })
        : res.json(result);
    }
  );
};

const create = (req, res = response) => {
  connection.query(
    `
  INSERT INTO paises  
  (nombre)
  VALUES (?)`,
    [req.params.nombre],
    function (err, result, fields) {
      err ? res.json(err) : res.json(result);
    }
  );
};

const remove = (req, res = response) => {
  connection.query(
    `
  DELETE FROM paises 
  WHERE id_pais = ?`,
    [req.params.idPais],
    function (err, result, fields) {
      err ? res.json(err) : res.json(result);
    }
  );
};

export { find, create, remove };
