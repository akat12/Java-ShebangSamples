# JAVA SHEBANG SAMPLES

From JAVA release 11 onwards the java launcher can run a program supplied as a java source code file. The full details regarding this feature can be found here; [jeps 330](https://openjdk.java.net/jeps/330). This elicited me to experiment and convert some older webshell samples into shebang to target java webapplication servers. The attackers can also put the scripts in any directory and set the HttpContext to mimic webapplication server URIs. This will bypass any FIM based detections set on the webapplication's run folder.

## Repository browser

detection/ - Contains the yara rule for detecting these samples and the Virustotal scores for these samples.

samples/ - Contains the samples mentioned in the Sample List.

## Sample List
catalina.sn:- cmd echoer, use stickybits to escalate priveleges. no rshell

servers.xml:- binds a TCP shell listening on port 6666.

modulez.xml:- client for TCP rshell. pass the ip and port in cmdline

SampleApp.xml:- Http listener shell. Default password is trebuchet. Usage example:

    GET : curl -X GET "http://127.0.0.1:8089/examples/Sampleappz.jsp?huskarl=trebuchet&paladin=whoami"
				
    POST : curl -X POST "http://127.0.0.1:8089/examples/Sampleappz.jsp" -d "huskarl=trebuchet&paladin=whoami"

