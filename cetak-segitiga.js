function cetakSegitiga(n) {
	for (let i = 1; i <= n; i++) {
			let baris = "";
			for (let j = 1; j <= n; j++) {
					if (j <= i) {
							baris += i;
					} else {
							baris += j;
					}
			}
			console.log(baris);
	}
}

let n = 5;
cetakSegitiga(n);
