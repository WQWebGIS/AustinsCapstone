// https://www.sitepoint.com/understanding-module-exports-exports-node-js/

const { Client } = require('pg')
const client = new Client({
	user: 'postgres',
	host: 'localhost',
	database: 'water_quality',
	password: 'password',
	port: 5432,
})
client.connect();
module.exports = {
	getInterpolatedLayer: function (wb_index) {
		// callback
		return new Promise(function (resolve, reject) {
			client.query('SELECT * FROM wq.get_interp_json(' + wb_index + ');')
				.then(function (res) { resolve(res.rows) })
				.catch(function (e) { reject(e.stack) });
		});	
	},
	getSampleStations: function (wb_index) {
		// callback
		return new Promise(function (resolve, reject) {
			client.query('SELECT * FROM wq.get_wb_json(' + wb_index + ');')
				.then(function (res) { resolve(res.rows) })
				.catch(function (e) { reject(e.stack) });
		});	
	},
	getWaterBodies: function () {
		// callback
		client.query('SELECT NOW() as now', (err, res) => {
			if (err) {
				console.log(err.stack)
			} else {
				console.log(res.rows[0])
			}
		});
	},
	uploadCSV: function () {
		//We want to insert an array of arrays (result of CSV pop var)
		//Adapted from https://stackoverflow.com/questions/8899802/how-do-i-do-a-bulk-insert-in-mysql-using-node-js
		//and https://stackoverflow.com/questions/46681278/how-to-insert-multiple-rows-using-node-postgres
		for(var i = 1; i < this.fileRows.length; i++){
			console.log(this.fileRows[i][0]+' '+this.fileRows[i][1]);
			client.query('INSERT INTO wq.samples(site, value) VALUES ($1, $2) RETURNING *', [this.fileRows[i][0], this.fileRows[i][1]], (err, res) => {
				console.log(err, res)
			})
		}
		//Do we need to close the client?
	}
}