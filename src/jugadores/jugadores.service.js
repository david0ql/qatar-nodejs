import { response } from "express";
import { connection } from "../common/conexion.js";

const find = (req, res = response) => {
  //hacer query para buscar todos
  connection.query(
    `
    SELECT jugadores.nombre as nombreJugador, jugadores.foto, paises.nombre as nombrePais
    FROM jugadores
    INNER JOIN paises ON paises.id_pais = jugadores.id_pais
   `,
    [],
    function (err, result, fields) {
      result.length == 0
        ? res.status(404).json({ response: err })
        : res.json(result);
    }
  );
};

export {
  find
}
