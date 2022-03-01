import path from "path";
const __dirname = path.resolve();
const exercise03 = (req, res, next) => {
	res.sendFile(path.join(__dirname, "exercise-03","index.html"));
};

export default exercise03;
