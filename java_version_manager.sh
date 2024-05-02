jdk (){
  command="$1";

  case $command in
  use)
    version="$2";
    use;
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
    JAVA_HOME=$(/usr/libexec/java_home -v "$version");
    export JAVA_HOME;
    java -version;
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
    echo "jdk use <version>     Set the JDK to given version";
    echo "                      ex: jdk use 21, jdk use 1.8";
    echo "jdk list              List down installed JDKs, Use the values from this list to set the JDK";
    echo "jdk current           Show the current active JDK version"
    echo "jdk help              Display the list";
  }
}
