#simple-es6-sass-boilerpalte

A really simple ES6 SASS boilerplate for quick experiments. Just download the ZIP, make sure your machine fulfills the requirements and run `./run.sh`. Now you can open [http://localhost:7777](http://localhost:7777) to see the result.

##Basic idea
I was tired of being stopped in the middle of having an idea. I just wanted to give some thought a try but usually this meant something like cloning my old [grunt boilerplate](https://github.com/pixelkritzel/pixelGrunt) running *npm install* keeping fingers crossed that no dependency changed. Fixing dependencies. After two hours every motivation was lost and the *node_modules* of this stillborn project idea weights 200MB on my hard drive.

I wanted something simple which runs in the command line. So I got the idea of building my own Node based build tool, which I only had to install once and which could scaffold a new project for me. It got a little bit out of hand, fast.

Basically what I wanted is there. Babel and SASS have CLIs which are much easier to use than configuring these in something like ... *webpack*. (Great (no irony) project, guys - but didn't you learn anything from the Grunt configuration hell?)

##Requirements
* Unix shell
* [Node + npm](https://nodejs.org/en/)
* [babel-cli](https://www.npmjs.com/package/babel-cli)
* [watchify](https://github.com/substack/watchify)
* [node-sass](https://www.npmjs.com/package/node-sass)
* [Python](https://www.python.org/)

If you work on a Linux or OS X machine you have a Unix shell and Python. If your on Windows - I never tested it there. Maybe it runs on Cygwin. But probably it's easier to port the shell scripts.

The other stuff are NPM packages which you need in your `$PATH`

Just run:`npm install -g babel-cli watchify node-sass`

##Usage
1. Download the Zip-File and uncompress it
2. Enter the boilerplate folder in a terminal
3. Run `./run.sh`
4. Open [http://localhost:7777](http://localhost:7777)

##Folderstructure
* Boilerplate folder
* `dist` - *this is the folder you see in your browser, do not edit here, everything in this folder will be deleted or overwritten by `run.sh`*
* `.tmp` - Temp folder
* `src` - *Here is where you code*
	* `assets` - This folder will be copied to `dist`
	* `scripts` - Your javascript folder. You need to keep the script.js as entry point for the module bundler.
	* `scss` - Your SASS folder

##Drawbacks
1. You have to call `./copy.sh` if you changed some HTML files or assets. If you some command line tool which copies files after change please tell me
2. You need to refresh your browser manually
3. I would not use it for big project

##Feedback and participation
If you have any feedback please tell me. If you find bugs please open an issue or better a pull request. I'm open to many ideas so long they keep in the spirit of the project:

> You shouldn't start a frontend experiment by fixing npm dependencies