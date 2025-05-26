# syntastic
A simple lookup tool to that simplifies finding command syntax that doesn't involve man pages. 

This little system involves two files:
1. A bash script (syntastic.sh) that parses the main file for command syntax. Enter whichever terms you want like "hydra ssh" to see the syntax for brute forcing an ssh server or the syntax for ffuf.
2. The main file (syntax.txt) is a repo of nearly 6,000 lines of command syntax, http or ftp op codes, port assignments, ip addressing, Linux commands and other miscellaneous Linux usage information.

!! You may need to run dos2unix syntax.sh because of how github mangles end of line characters.
Just run this in the git dir:
dos2unix syntastic.sh
chmod +x syntastic.sh
./syntastic.sh to start the script. 

The syntax.txt file is indeed a mess but it is also full of really useful information for interacting with a Linux or Unix system.
The beautify of it is, you can very quickly find exactly the command syntax you want without having to dig through and study poorly-written and boring documents. 

Ideally, I'd recommend that you make your own syntax file so that you learn about all the commands, building your knowlege but this is a quick and easy way to become proficient with Linux commands. 

Another, similar tool is https://cht.sh/ which is a far more advanced tool.
I just wanted to put mine out there to assist my students (Army Cyber Command) in their learning. 
