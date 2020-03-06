/**
* Real Time chatting app
* @author Shashank Tiwari
*/

/**
* Source code by https://codeburst.io/@MichalMecinski
* https://codeburst.io/node-js-mysql-and-promises-4c3be599909b
*/

const mysql = require('mysql');

class Db {
	constructor(config) {
		this.connection = mysql.createPool({
			connectionLimit: 100,
			host: 'localhost',
			user: 'root',
			password: '123456',
			database: 'chat',
			debug: false
		});
	}
	query(sql, args) {
		return new Promise((resolve, reject) => {
			this.connection.query(sql, args, (err, rows) => {
				if (err)
					return reject(err);
				resolve(rows);
			});
		});
	}
	close() {
		return new Promise((resolve, reject) => {
			this.connection.end(err => {
				if (err)
					return reject(err);
				resolve();
			});
		});
	}
}
module.exports = new Db();