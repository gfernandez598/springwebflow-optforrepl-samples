Spring Web Flow OptForRepl Samples
==================================

Samples of how to use/integrate [Spring Web Flow OptForRepl project](http://gfernandez598.github.io/springwebflow-optforrepl/) into some application platforms.

##Building

Clone the Git repository first and switch to the created directory:

    $ git clone https://github.com/gfernandez598/springwebflow-optforrepl-samples.git

There is one flavor right now:

    $ mvn install -Pjboss-as7

Output files:

./springwebflow-jbossas7-web-granular/target/springwebflow-jbossas7-web-granular.war

##Flavors

At the moment `springwebflow-jbossas7-web-granular.war` is the only one. It shows how to integrate *springwebflow-optforrepl* into a JEE6+Spring Web Flow web application to take benefit of the Jboss AS7 granular session replication.

You can deploy it just copying the springwebflow-jbossas7-web-granular.war to server's deployments directory and start the standalone server in the HA mode:

    $ cp ~/springwebflow-jbossas7-web-granular.war <JBOSS_HOME>/standalone/deployments/
    $ ./bin/standalone.sh -c standalone-ha.xml

Even it runs on any Jboss AS7.1 version, fine-grained functionality works on AS7.1.2 or grater because the issue [AS7-4743](https://issues.jboss.org/browse/AS7-4743).
  
## License

The project is licensed under the Apache License, Version 2.0.
