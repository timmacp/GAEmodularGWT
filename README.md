2/10/16

DESCRIPTION Archetype for modular gwt app using new gwt-maven plugin and appengine maven plugin plus eclipse integration. Eclipse launch configurations to run as maven build. No Eclipse plugins required afaik, Gwt 2.8.0-rc3 & appengine are handled by Maven.

SOURCES: T Broyer's modular web app https://github.com/tbroyer/gwt-maven-archetypes

modifications by F Boucher https://github.com/freddyboucher/gwt-storage-objectify.git

debug client, for Java debugging in eclipse : http://stackoverflow.com/questions/13924990/how-do-i-make-eclipse-and-mvn-appenginedevserver-talk-to-each-other

eclipse maven launch configurations: Mohamed ilyes Dimassi https://github.com/ilyes4j/gwt-modular-webapp-archetype.git launch configurations should load in eclipse, access at eclipse toolbar > debug configurations

INSTRUCTIONS

1) from archetype root directory run mvn install

2) In Eclipse, create maven project using snapshots archetypes, local filter Fill in the blanks, modify the module name if you want.

3) Right click parent project > run as maven install

4) run codeserver launch (cs) (from eclipse toolbar > debug configurations)

5) run tomcat launch

6) open browser at http://localhost:8080/

7) stop tomcat

8) run appengine launch

9) run debug client launch

appengine gets the sdm nocache.js

WINDOWS BATCH FILES

killProcesses.bat stops all servers in 1 go. codeserver port 9876 seems to require this.

cleantempdir.bat removes junk left by eclipse.

ISSUES 1) if appengine is launched initially, the sdm nocache.js doesn't reach the browser & sdm recompile requests don't work, so run Tomcat 1st.
Tomcat uses ${project.build.directory}/gwt/launcherDir (defined in the parent pom) gets the sdm nocache.js for recompile requests

2) On re-starting either tomcat or appengine, modifications to the shared classes are lost, until the first compile. 
Seems like the shared project jar as built by the maven install is reapplied.

3) On modifying methods of classes in shared classes, requires clean install of shared project 
(Xxxx-shared clean install config as provided)
