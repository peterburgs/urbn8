const result = 1;
const result2 = 2;
const result3 = 3;
const api = (callback) => callback(result);

const api2 = (callback) => callback(result2);

const api3 = (callback) => callback(result3);

const exercise02A = (req, res, next) => {
	api(function (result) {
		console.log("result: ", result);
		api2(function (result2) {
			console.log("result2: ", result2);
			api3(function (result3) {
				console.log("result3: ", result3);
			});
		});
	});
	res.status(200).json({
		message: "Exercise 02 A solved",
	});
	next();
};

export default exercise02A;
