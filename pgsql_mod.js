// https://www.sitepoint.com/understanding-module-exports-exports-node-js/
const { Client } = require('pg')

exports.myClient = function () {
	const client = new Client({
		user: 'postgres',
		host: 'localhost',
		database: 'gru',
		password: 'password',
		port: 5432,
	})
	client.connect()

	return client.query('SELECT * FROM gru.building_footprints', (err, res) => {
	  console.log(err, res)
	  client.end()
	})
}
