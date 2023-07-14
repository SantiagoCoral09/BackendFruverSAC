import { DataTypes } from 'sequelize';
import { sequelize } from '../Database/database.js';
import { Carrito } from './carritos.js';

//Relacionar la variable Producto con la tabla productos de la BD
const Compra = sequelize.define('compras', {
  // Model attributes are defined here. Los atributos de la tabla
  idCompra: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: true
  },
  idCarritoCompra: {
    type: DataTypes.INTEGER,
    allowNull: false,
    foreignKey: 'idCarrito'
  },
  // identificacion: {
  //   type: DataTypes.STRING
  // },
  nombres: {
    type: DataTypes.STRING
  },
  correo: {
    type: DataTypes.STRING
  },
  direccion: {
    type: DataTypes.STRING
  },
  metodo_pago:{
    type: DataTypes.STRING
  },
  fechaCompra: {
    type: DataTypes.DATE,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP')
  }
},
{
  timestamps: false,
});

// `sequelize.define` also returns the model
// console.log(Producto === sequelize.models.Producto); // true

export{
    Compra
}