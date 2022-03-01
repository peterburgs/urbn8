import express from "express";
import path from "path";
const __dirname = path.resolve();
const app = express();
const PORT = 5000;
import exercise01 from "./exercise-01/exercise-01.js";
import exercise02A from "./exercise-02/a.js";
import exercise02B from "./exercise-02/b.js";
import exercise02C from "./exercise-02/c.js";
import exercise03 from "./exercise-03/exercise-03.js";

app.use(express.static(path.join(__dirname, "exercise-03")));

// Exercise 01
app.use("/exercise-01", exercise01);

// Exercise 02
app.use("/exercise-02a", exercise02A);
app.use("/exercise-02b", exercise02B);
app.use("/exercise-02c", exercise02C);

// Exercise 03
app.use("/exercise-03", exercise03);

app.listen(PORT, () => {
	console.log(`Server is running on port ${PORT}`);
});
