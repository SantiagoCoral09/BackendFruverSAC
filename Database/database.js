import Sequelize from "sequelize";

const sequelize = new Sequelize("fruver_sac", "root", "", {
    host: "localhost",
    dialect: "mysql",
});

export {
    sequelize
};


