mkdir -p ${path_tmp} ${JVM_PATH}
echo "-> Key Variables";
echo "PATH is $PATH"
echo "JAVA_HOME is $JAVA_HOME"
echo "-- Done";
echo "";

echo "-> Updating all installed packages on OS";
apt-get -y update
echo "-- Done";
echo "";

echo "-> Installing required tools";
yum -y install openssl openssh-server curl unzip jq sed iputils hostname;
echo "-- Done";
echo "";

echo "Present working directory - `pwd`"
curl -LO "https://awsdevopsartifactory.jfrog.io/artifactory/FRDS/openjdk-1128_linux-x64_bin.tar.gz"
mv openjdk-1128_linux-x64_bin.tar.gz ${path_tmp}/jdk.tar.gz
echo "-> Installing Java at ${JVM_PATH}";
tar -zxvf ${path_tmp}/jdk.tar.gz -C ${JVM_PATH}/
echo "-> all details";
ls -ltrh ${path_tmp} ; ls -ltrh ${JVM_PATH}
echo "-- Done";
echo "";

echo "-> Checking Java";
echo "-- JAVA_HOME is set to ${JAVA_HOME}";
java -version;
echo "-- Done";
echo ""

echo "-> Cleaning up";
rm -rf ${path_tmp};
echo "-- Done";
echo "";
