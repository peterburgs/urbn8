import express from "express";
const server = express();
const PORT = 5000;
import exercise01 from "./exercise-01/exercise-01.js";
import exercise02A from "./exercise-02/a.js";
import exercise02B from "./exercise-02/b.js";

// Exercise 01
server.use("/exercise-01", exercise01);

// Exercise 02
server.use("/exercise-02a", exercise02A);
server.use("/exercise-02b", exercise02B);

server.listen(PORT, () => {
	console.log(`Server is running on port ${PORT}`);
});
