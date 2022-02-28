const recursiveSum = (array) => {
	if (!array.length) {
		return 0;
	} else {
		return array.shift() + recursiveSum(array);
	}
};

const exercise01 = (req, res, next) => {
	const array = [5, 9, 6, 8, 4, 6];
	
	res.status(200).json({
        givenArray: array.toString(),
        summary: recursiveSum(array)
	});
	next();
};

export default exercise01;
