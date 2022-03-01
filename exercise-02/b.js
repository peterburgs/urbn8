const result = 1;
const result2 = 2;
const result3 = 3;

const api = new Promise(function (resolve, reject) {
	resolve(result);
});

const api2 = new Promise(function (resolve, reject) {
	resolve(result2);
});

const api3 = new Promise(function (resolve, reject) {
	resolve(result3);
});
const exercise02B = (req, res, next) => {
	api.then(() => {
		console.log("result: ", result);
		api2.then(() => {
			console.log("result2: ", result2);
			api3.then(() => {
				console.log("result3: ", result3);
			});
		});
	});

	res.status(200).json({
		message: "Exercise 02 B solved",
	});
	next();
};

export default exercise02B;
