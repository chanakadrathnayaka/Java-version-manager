# Java Version Manager
This is a script to switch between JDK versions in MacOS, either for the session of the terminal or in the system. It's implemented to switch between JDK versions without any hassle. It takes after Node Version Manager (nvm`).
## Usage
### Install multiple JDKs using brew
`brew install temurin@8 temurin@11 temurin@17 temurin@21`

### Update `~/.zshrc`
Copy the content from `java_version_manager.sh` to your `~/.zshrc`. If you prefer to keep your `~/.zshrc` clean and organized, you can visit my blog to see How I keep my .zshrc file clean

### Commands
Every command should follow this pattern `jdk <command> <options>`
1. `use <version>`  
   Use the JDK for the given version. The new version will be available only in the current shell (session). You must have installed the versions that you are going to use. It is not necessary to type the whole 
   version. Only type the first set of values.   
      ex: 
      ```
      1. jdk use 1.8
      2. jdk use 17
      3. jdk use 17.0
      ```
2. `set <version>`  
   Set the JDK to the given version. A new version will be permanently set up for the system. A confirmation is required to proceed. The old `~/.zshrc` will be backed up during the process. The default selection is `N`.
   You must have installed the versions that you are going to use. It is not necessary to type the whole version. Only type the first set of values.   
      ex: 
      ```
      1. jdk set 1.8
      2. jdk set 17
      3. jdk set 17.0
      ```
4. `list` or `ls` 
   List down installed JDKs, Use the values from this list to set the JDK.    
   ex:
      ```
      jdk list
      ```
5. `current`  
   Show the current active JDK version   
   ex:
      ```
      jdk current
      ```
6. `help`  
   Display the list of JDKs installed   
   ex:
      ```
      jdk help
      ```
7. If the user just execute `jdk` without any following up commands, it will show the `help` menu

&#128157; If anyone finds this useful, let me know your thoughts. Here is my email talktochanaka@gmail.com

> There is no license for this script. Take it, use it, and have fun with it at your own risk.
