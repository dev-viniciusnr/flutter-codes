
/**
 * 
 * Flutter -> DIO -> HTTP -> REST API  > rdbms sqlite  
 */
const express = require('express')
var cors = require('cors')
var bodyParser = require('body-parser')
var sqlite3 = require('sqlite3').verbose();
var db = new sqlite3.Database(':memory:');

const app = express()

app.use(bodyParser.urlencoded({ extended: false }))

app.use(bodyParser.json())

const port = 3000
users = {};
app.use(cors())

app.get('/lista', (req, res) => {
  lista = [];
  data = db.each(`select * from lista`, (err, row) => {
    lista.push(row);
    console.log(row);
  },()=>{
    console.log(lista);
    
    res.json({ "message":"ok", "lista":lista });
  });


})
app.post('/lista', (req, res) => {

  console.log(req.body);
  if (req.body.titulo && req.body.desc) {
    query = `insert into lista values ("${req.body.titulo}"  , "${req.body.desc}")`
    db.run(query, (err) => {
      if (!err) {
        res.json({ "message": "ok" });
        return
      }
      res.json({ "message": "error" });
    });
  }else res.json({ "message": "Insira os dados" });
})


app.get('/user', (req, res) => {
  data = db.get(`select * from users`, (err, row) => {
    console.log(row);

    res.json({ "message":"ok", "login":row['login'] });
  });


})
app.post('/user', (req, res) => {

  console.log(req.body);
  if (req.body.login) {
    db.run("delete from users");
    query = `insert into users(login,passwd) values ("${req.body.login}"  , "${req.body.passwd}")`
    db.run(query, (err) => {
      if (!err) {
        res.json({ "message": "ok" });
        return
      }
      res.json({ "message": "error" });
    });
  }
})

app.post('/auth', (req, res) => {

  // users = {login: req.body.login , passwd: req.body.passwd };
  db.get(`select * from users where login="${req.body.login}"`, (err, row) => {
    console.log(err,row);
    if (row) {

      res.json({ "message": "ok" });
      return;
    }
    else return res.json({ "message": "error" });
  })

})




app.listen(port, () => {
  console.log(`Si700 server app listening at http://localhost:${port}`)
  res = db.run('create table users( login varchar(100), passwd varchar(20) )',(err)=>{
    query = `insert into users(login,passwd) values ("teste","123")`;
    db.run(query);
  
  });
  
  res = db.run('create table lista( titulo  varchar(100), desc varchar(20) )',(err)=>{


    query = `insert into lista values ("Teste titulo","Teste Descrição")`;
    db.run(query);
  });
  
  

})
process.on('SIGINT', function () {
  process.exit();
});
process.on('exit', function () {
  console.log("db close");

  // db.close();
});