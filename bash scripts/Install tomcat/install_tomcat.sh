#!/bin/bash
req_tom_ver="10.0.27"
tom_m_v=$(echo $req_tom_ver|cut -c 1,2)
url="https://dlcdn.apache.org/tomcat/tomcat-${tom_m_v}/v${req_tom_ver}/bin/apache-tomcat-${req_tom_ver}.tar.gz"
wget $url
tar -xvzf apache-tomcat-${req_tom_ver}.tar.gz
mv apache-tomcat-${req_tom_ver} tomcat${tom_m_v}
rm -rf apache-tomcat-${req_tom_ver}.tar.gz
