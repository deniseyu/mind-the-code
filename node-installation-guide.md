# JavaScript Installation

### If you are a beginner..

Don't worry about anything server-side for today. Focus on practicing client-side JS. Create a file in the public/ directory, and call it app.js -- this will contain all of the JavaScript you write for your application. Ask your coach for guidance on linking up your JavaScript to index.html.

You can open up the page from the file system or in your Terminal by running:

```
open public/index.html
```

This will launch the page in your default browser.

### If you are a bit more experienced...

Download or clone this repository:

```
git clone git@github.com:deniseyu/mind-the-code.git
cd mind-the-code
```

Make sure you have Node installed:

https://nodejs.org/download/

Run ```node -v``` in your Terminal to make sure that Node exists locally! You may have to restart your Terminal. (If it is successfully installed, it will tell you which version.)

Now run ```npm install```. This will automatically install the dependencies needed to run this application. In this case, all we need is Express, which is a lightweight Node.js web application framework.

NPM stands for Node Package Manager, and it is a tool to help manage Node libraries that can be ported onto any Node application to get additional functionality with ease.

Once you are in the mind-the-code directory, run

```
npm start
```

This will start the node server.

If all went well, the output in your terminal will look something like:

```
> mind-the-code@1.0.0 start /Users/deniseyu/Dropbox/Makers/projects/mind-the-code
> node server.js
Server started: http://localhost:3000/
```

This means that the server is alive and running on port 3000. Open a web browser and go to http://localhost:9292. Try changing the content of public/index.html and refresh the page!
