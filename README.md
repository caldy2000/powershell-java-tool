# powershell-java-tool
PS scripts for daily java operations, such as terminate several java processes at once.

Powershell has differencies of cmd, it's OOP, more easier to operate System operations, such as manage local processes,file system, the output of commands can be filter.

# Guide
To use functions provided here, one need to copy what they need from the main branch, a file names `functions.ps1`, to `$profiles.yourprofile`, when PS start, it will load functions contains in that profile file, after initialization done,functions can be used directly.

To check if it has been loaded into runspace, run `get-psdrive`, you will see an item **Alias**, `get-childitem -Path Function:\functionName` to see it is loaded.

For instance, here is a function which can terminate java processes that serves as **GradleDaemon/Server**, calls `terminateGradle`, then you can do these:
```ps
>get-childitem -Path Function:\terminateGradle

>terminateGradle
```

# Use Case
## Environment Variable Alternative
Java Tools used to rely on env variables to work, if tools often run from command line, maybe a specified profile is a good idea, it can split to a fresh session,as you can operate on two or more terminal windows which use different version JDK.

`pwsh -File` option can load a profile to start powershell.


# Powershell Documentation
see Microsoft Powershell
# Plan
1. aggregate functions to a PS module
