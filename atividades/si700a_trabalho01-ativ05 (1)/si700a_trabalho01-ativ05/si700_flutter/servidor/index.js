
const express = require('express')
var cors = require('cors')
var bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({ extended: false }))

app.use(bodyParser.json())
const port = 3000
users = {};
app.use(cors())
app.get('/users', (req, res) => {
  res.send(users)
})
app.post('/user', (req, res) => {
    
    users = {login: req.body.login , passwd: req.body.passwd };
    res.json({"message":"ok"});
  })

app.listen(port, () => {
  console.log(`Si700 server app listening at http://localhost:${port}`)
})