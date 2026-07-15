const mysql = require("mysql2/promise");
const fs = require("fs");

async function initializeDatabase() {
    let db;

    try {
        db = await mysql.createConnection({
            host: "localhost",
            user: "root",
            password: "",
            multipleStatements: true
        });

        const sqlScript = fs.readFileSync("./setup_db.sql", "utf-8");

        await db.query(sqlScript);

        console.log("Setup database berhasil dijalankan.");
    } catch (err) {
        console.error("Terjadi kesalahan saat setup database:");
        console.error(err);
    } finally {
        if (db) {
            await db.end();
        }
    }
}

initializeDatabase();
