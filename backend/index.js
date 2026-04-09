const express = require('express');
const app = express();
const port = 3000;
const mysql = require('mysql');
const cors = require('cors');
const { createHash } = require('crypto');

let lastRequest = 0;
let counter = 0;
let denyRequests = false;
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'S3cur3P4ssw0rd53!',
  database: 'web'
})

connection.connect();

app.use(express.json());
app.use(cors());

function throttle(){
    if(denyRequests){
	if(Date.now() - lastRequest > 30000)
	    denyRequests = false;
	else
            return true;
    }
    if(Date.now() - lastRequest < 1000)
        counter++;
    lastRequest = Date.now();
    if(counter >= 10){
        denyRequests = true;
    	counter = 0;
	return true;
    }
    
    return false;
}

app.post("/level1/login", (req, res) => {
    if(throttle())
	return res.status(403).json({ success: true, message: "You have been throttled."});
    if(counter > 5){
	return res.status(200).json({ success: false, message: "False positive, you did not actually inject it" });
    }
    if (!req.body || !req.body.username || !req.body.password) {
        return res.status(400).json({ success: false, message: "Missing username or password." });
    }
    let user = req.body.username.toLowerCase();
    let pass = req.body.password.toLowerCase();
    //if(user.includes("and") || pass.includes("and") || user.includes("=") || pass.includes("=") || user.includes("-") || pass.includes("-") || user.includes("union") || pass.includes("union")) return res.status(500).json({ success: false, message: "Invalid character/word found."});
    let query = "SELECT user_id, username FROM users_level1 WHERE username = '" + req.body.username + "' AND password = '" + req.body.password + "';";
    
    connection.query(query, (err, rows, fields) => {
          if (err) {
            console.error("Database query error:", err);
            return res.status(500).json({ success: false, message: err });
          }

        if (rows && rows.length > 0) {
            const user = rows[0];
            res.json({ success: true, message: `Welcome back, ${user.username}! SQL_M3d1um_3759` });
        } else {
            res.status(401).json({ success: false, message: "Invalid username or password." });
        }
	
    });
});

app.get('/', function(req, res){
    res.sendFile(__dirname + "/html/index.html");
});

app.get("/users", function(req, res){
    //if(throttle())
//	return res.status(403).json({ message: "You have been throttled." });
    
    let query = "SELECT user_id, name, email, job_position FROM users_level2 WHERE name LIKE '%";
    if(req.query.search)
	query = query + req.query.search;
    query = query + "%'";
    console.log(query);
    connection.query(query, (err, rows, fields) => {
        if(err) {
	    delete err.sql;
	    err["table"] = "users_level2";
	    return res.status(500).json({ message: err });
	}
        res.status(200).json(rows);	
    });
});

app.get("/login", (req, res) => {
    res.sendFile(__dirname + "/html/login.html");
});

app.post("/level2/login", (req, res) => {
    if(throttle())
	return res.status(403).json({ message: "You have been throttled." });
    let query = "SELECT user_id, email, name FROM users_level2 WHERE email = ? AND password = ?";
    console.log(res.body);
    if(!req.body.email || !req.body.password)
	return res.status(400).json({ success: false, message: "Error: Missing email/password." });
    let hashedPassword = createHash('sha256').update(req.body.password).digest('hex');

    connection.query(query, [req.body.email, hashedPassword], (err, rows) => {
          if (err) {
            console.error("Database query error:", err);
            return res.status(500).json({ success: false, message: "Internal server error." });
          }

        if (rows && rows.length > 0) {
            const user = rows[0];
            res.json({ success: true, message: `Welcome back, ${user.name}! Oblyvius_W4s_H3r3_1273` });
        } else {
            res.status(401).json({ success: false, message: "Invalid username or password." });
        }
    });
});

app.listen(port, () => {
    console.log("Listening on port", port);
});
