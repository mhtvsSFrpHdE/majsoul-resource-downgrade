# majsoul-resource-downgrade
Yet another html game resource replace tool chain.  

**Why yet another? We have Shimakaze Go, PEROist, etc**  
Running completely China code on my machine is not a option(even if open source).  
I wonder if there is a open source, tool chain based workapproch to implement this.  
The toolchain often come from several author,  
I can't affect them to join my private behavior code,  
thus is much easier to do code security review in order to clarify as trustable.  
Instead of review across a lot of GUI code written by my(or someone) own.  
There were only few short cmd script to review in this project.  

**How to use**  
Under the repository root folder:  
- create a HFS folder to place your own resource file
- download and unpack python, privoxy zipped version to repository root foler
- download and install James, which is a http tool running on Windows system.
- in James, edit config to replace the target URL to local URL you wish.
- in Privoxy, edit config to filter HTTP target URL and all HTTPS to James if the game is HTTPS.

**Known issue**  
Privoxy doesn't do HTTPS URL filter, so all HTTPS traffic have to route to James.
When this behavior act with James, you have to let James access target website directly.  
