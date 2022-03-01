const ARRAY = [5, 9, 6, 8, 4, 6];
const recursiveSum = (array) => {
	if (!array.length) {
		return 0;
	} else {
		return array.shift() + recursiveSum(array);
	}
};

const exercise01 = (req, res, next) => {
    console.log(`🌷🌷🌷 Sum of array using recursion is: ${recursiveSum(ARRAY)}`)
	res.status(200).json({
		message: "Exercise 01 solved",
	});
	next();
};

export default exercise01;
