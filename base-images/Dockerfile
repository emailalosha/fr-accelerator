FROM redhat/ubi8:8.5-239.1651231664-source

ARG path_tmp=/tmp/java

# Environment Variables
# ---------------------
ENV JVM_PATH=/usr/lib/jvm
ENV JAVA_HOME=${JVM_PATH}/jdk-11
ENV PATH="$JAVA_HOME/bin:$PATH" JAVA_CACERTS=${JAVA_HOME}/lib/security/cacerts

# Setup default shell to Bash
# ---------------------------
SHELL ["/bin/bash", "-c"]

# Copy required files
# -------------------

COPY files/setup.sh ${path_tmp}/
# Required for GCP only
# COPY files/gcp-gcs-service-account.json ${path_tmp}/

# Setting up the base image
# -------------------------
RUN chmod +x ${path_tmp}/setup.sh
RUN ${path_tmp}/setup.sh

CMD ["java","-version"]
