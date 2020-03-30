export CLASSPATH = ./target

assemble:
	mkdir -p ./target
	java -jar jasmin.jar -d ./target src/Base.j

javap:
	javac -d target src/Main.java
	javap -c Main

run:
	java Base
