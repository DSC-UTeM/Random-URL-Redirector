import * as http from "http";

import { urlList } from "../urlList";

//create a server object:
http
  .createServer(function (req, res) {
    var myURL = urlList[Math.ceil(Math.random() * 1000) % (urlList.length - 1)];
    console.log(myURL);

    res.writeHead(301, { Location: myURL });
    res.end(); //end the response
  })
  .listen(8080); //the server object listens on port 8080
