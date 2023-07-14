// const express = require('express');
import express from "express";
// const routes=require('./Routes/routes.js');
import router from "./Routes/routes.js";
import { sequelize } from "./Database/database.js";
import { Producto } from "./Models/productos.js";
import cors from 'cors';
//Crear instancia de express
const app = express();

app.use(cors());
app.use(express.json());
app.use(router);
app.set('port', 3000);

//Test a la base de datos
const testDb = async () => {
    try {
        // await sequelize.authenticate();
        await sequelize.sync();
        console.log('Conexion realizada con exito');

        app.listen(app.get('port'), () => {
            console.log(`Servidor corriendo en http://localhost:${app.get('port')}`);
        });
    } catch (error) {
        console.error(`Error al realizar conexion::: ${error}`);
    }
};

testDb();



