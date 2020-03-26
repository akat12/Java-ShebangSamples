rule java_exec_network
{
    meta:
        author = "akat"
        date = "22-03-2020"
        description = "Yara detection for java programs that do exec over network"
    
    strings:
        $runtime = "Runtime"
        $exec = "exec"
        $httpserver = "HttpServer"
        $serversocket = "ServerSocket"
    
    condition:
        3 of ($httpserver,$runtime,$exec,$serversocket)

}

rule java_exec_args
{
    meta:
        author = "akat"
        date = "22-03-2020"
        description = "Yara detection for java programs that exec command line arguments"
    
    strings:
        $runtime = "Runtime"
        $exec = "exec(args)"
    
    condition:
        $runtime and $exec

}

