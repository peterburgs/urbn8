const result = 1;
const result2 = 2;
const result3 = 3;

const api = async (callback) => await callback(result);

const api2 = async (callback) => await callback(result2);

const api3 = async (callback) => await callback(result3);

const exercise02C = async (req, res, next) => {
	await api(async () => {
		setTimeout(() => {
			console.log("result: ", result);
		}, 200);
		await api2(async () => {
			setTimeout(() => {
				console.log("result2: ", result2);
			}, 700);
			await api3(async () => {
				setTimeout(() => {
					console.log("result3: ", result3);
				}, 500);
			});
		});
	});

	res.status(200).json({
		message: "Exercise 02 C solved",
	});
	next();
};

export default exercise02C;
