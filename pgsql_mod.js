// https://www.sitepoint.com/understanding-module-exports-exports-node-js/
// 

const { Client } = require('pg')

module.exports = {
    test: function() {
		//keeping a variable passed from parent module
        console.log('var is', this.fileRows);
	},
	myClient: function () {
		const client = new Client({
			user: 'postgres',
			host: 'localhost',
			database: 'water_quality',
			password: 'password',
			port: 5432,
		})
	
		client.connect() //Need to make the connection
		//We want to insert an array of arrays (result of CSV pop var)
		//Adapted from https://stackoverflow.com/questions/8899802/how-do-i-do-a-bulk-insert-in-mysql-using-node-js
		//and https://stackoverflow.com/questions/46681278/how-to-insert-multiple-rows-using-node-postgres
		
		for(var i = 0; i < this.fileRows.length; i++){
			console.log(this.fileRows[i][0]+' '+this.fileRows[i][1]);
			client.query('INSERT INTO wq.samples(site, value) VALUES ($1, $2) RETURNING *', [this.fileRows[i][0], this.fileRows[i][1]], (err, res) => {
				console.log(err, res)
			})
		}
		//Do we need to close the client
	}
}