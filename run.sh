#!/usr/bin/env bash

export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/commons-beanutils-1.7.0.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/commons-collections-3.2.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/commons-digester-1.8.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/commons-fileupload-1.2.2.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/commons-io-1.4.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/commons-logging-1.1.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/dom4j-1.6.1.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/jaxen-1.1-beta-6.jar

export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/json.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/mail.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/patch-zip.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/poi-3.7-20101029.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/portlet-api-1.0.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/Downloads/webbuilder/wb/WEB-INF/lib/quartz-all-1.6.6.jar
export CLASSPATH=$CLASSPATH:/Users/stallman/opt/apache-tomcat-7.0.50/lib/servlet-api.jar

if [ $# -ne 1 ]
then
	echo "argument error."
	exit
fi

ProjectJar=Wb.jar

if [ $1 = "c" ]
then
#{
#compile java program

echo "Compile program."

src="source/com/webbuilder/common/*.java source/com/webbuilder/controls/*.java source/com/webbuilder/interact/*.java source/com/webbuilder/task/*.java source/com/webbuilder/tool/*.java source/com/webbuilder/utils/*.java"
javac -d classes -Xlint:deprecation ${src}
jar -cvf ${ProjectJar} -C classes .

#}
fi

if [ $1 = "r" ]
then
#{
#run java program

echo "Run program."

java -cp ${ProjectJar} Main

#}
fi

echo "Over!"
