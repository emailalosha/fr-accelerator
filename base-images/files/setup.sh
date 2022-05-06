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
curl https://awsdevopsartifactory.jfrog.io/artifactory/FRDS/openjdk-11%2B28_linux-x64_bin.tar.gz -o "${path_tmp}/jdk.tar.gz"

echo "-> Installing Java";
tar -xf ${path_tmp}/jdk.tar.gz -C ${JVM_PATH}/
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
