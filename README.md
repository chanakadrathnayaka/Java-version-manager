# Java Version Manager
This is a script to switch between JDK versions in MacOS. It's implemented to switch between JDK versions without any hassle. It takes after Node Version Manager(`nvm`).
## Usage
### Install multiple JDKs using brew
`brew install temurin@8 temurin@11 temurin@17 temurin@21`

### Update `~/.zshrc`
Copy the content from `java_version_manager.sh` to your `~/.zshrc`. If you prefer to keep your `~/.zshrc` clean and organized, you can visit my blog to see How I keep my .zshrc file clean

### Commands
Every command should take this pattern `jdk <command> <options>`
1. `use <version>`  
   Use the JDK to given version. New version will be available only in current shell (session). You must have installed the versions that you are going to use. It is not necessary to type the whole 
   version. Only type the first set of values.   
      ex: 
      ```
      1. jdk use 1.8
      2. jdk use 17
      3. jdk use 17.0
      ```
2. `set <version>`  
   Set the JDK to given version. New version will be permanently set for the system. You must have installed the versions that you are going to use. It is not necessary to type the whole 
   version. Only type the first set of values.   
      ex: 
      ```
      1. jdk set 1.8
      2. jdk set 17
      3. jdk set 17.0
      ```
3. `list` or `ls` 
   List down installed JDKs, Use the values from this list to set the JDK.    
   ex:
      ```
      jdk list
      ```
4. `current`  
   Show the current active JDK version   
   ex:
      ```
      jdk current
      ```
5. `help`  
   Display the list of JDKs installed   
   ex:
      ```
      jdk help
      ```
6. If the user just execute `jdk` without any following up commands, it will show the `help` menu

&#128157; If anyone finds this useful, Let me know your thoughts. Here is my email talktochanaka@gmail.com

> There is no license to this script. Take it, Use it and Have fun with it at your own risk.
