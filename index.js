import express from "express";
const server = express();
const PORT = 5000;
import exercise01 from "./exercise-01.js";

server.use("/exercise-01", exercise01);

server.listen(PORT, () => {
	console.log(`Server is running on port ${PORT}`);
});
