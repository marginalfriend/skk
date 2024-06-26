function filterAndSort(arr) {
	let filteredArr = arr.filter(x => x % 3 !== 0);
	return filteredArr.sort((a, b) => a - b);
}

let n = [12, 9, 13, 6, 10, 4, 7, 2];
let hasil = filterAndSort(n);
console.log(hasil);
