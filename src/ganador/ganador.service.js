import { response } from "express";
import { connection } from "../common/conexion.js";

const find = (req, res = response) => {
  //hacer query para buscar todos
  connection.query(
    `
    SELECT COUNT(contiendas.id_contienda) as cantidad, paises.nombre, contiendas.id_contienda
    FROM contiendas
    INNER JOIN paises ON paises.id_pais = contiendas.id_pais
    GROUP BY paises.nombre
    ORDER BY cantidad DESC
   `,
    [],
    function (err, result, fields) {
      result.length == 0
        ? res.status(404).json({ response: err })
        : res.json(result);
    }
  );
};

export { find };
