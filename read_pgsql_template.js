// https://node-postgres.com/features/connecting
// https://www.w3schools.com/nodejs/nodejs_modules.asp
const { Pool, Client } = require('pg')

const pool = new Pool({
	user: 'postgres',
	host: 'localhost',
	database: 'gru',
	password: 'dont_check_pass_into_git',
	port: 5432,
})

pool.query('SELECT NOW()', (err, res) => {
  console.log(err, res)
  pool.end()
})

const client = new Client({
	user: 'postgres',
	host: 'localhost',
	database: 'gru',
	password: 'dont_check_pass_into_git',
	port: 5432,
})
client.connect()

client.query('SELECT * FROM gru.building_footprints', (err, res) => {
  console.log(err, res)
  client.end()
})