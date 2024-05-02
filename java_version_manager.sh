jdk (){
  command="$1";

  case $command in
  use)
    version="$2";
    use;
    ;;
  set)
    version="$2";
    set;
    ;;
  ls | list)
    list;
    ;;
  current)
    current;
    ;;
  *)
    help;
  esac

  use(){
    unset JAVA_HOME;
    export JAVA_HOME=$(/usr/libexec/java_home -v "$version");
    java -version;
  }

  set(){
    echo "This is a permanent change untill you change it and it will be applied to the system. Continue? (y/N): " && read confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || return;

    oldFixedJH=$(cat ~/.zshrc 2>&1 | grep -Eo 'export JAVA_HOME=.+');
    sed -iE "s#$oldFixedJH#export JAVA_HOME=$(/usr/libexec/java_home -v "$version")#g" ~/.zshrc
    use;
  }

  list(){
    for i in $(/usr/libexec/java_home -V 2>&1 | grep -Eo '\s+[0-9\._]+ \(x86_64\)' | sed -E 's/ |\(x86_64\)//g'); do
      echo "$i";
    done;
  }

  current(){
    java --version;
  }

  help(){
    echo "jdk use <version>     Use the JDK to given version, New version will be available only in current shell (session)";
    echo "                      ex: jdk use 21, jdk use 1.8";
    echo "jdk set <version>     Set the JDK to given version, New version will be permanently set for the system";
    echo "                      ex: jdk set 21, jdk set 1.8";
    echo "jdk list              List down installed JDKs, Use the values from this list to set the JDK";
    echo "jdk current           Show the current active JDK version"
    echo "jdk help              Display the list";
  }
}
