#!/bin/bash -xe
. /etc/sysconfig/jenkins_swarm.templated
exec java ${SWARM_JAVA_ARGS} \
	-jar "{{ jenkins_user_home }}/{{ jswarm_filename }}" \
	-master "${SWARM_MASTER}" \
	-name "${SWARM_SLAVE_NAME}" \
	-executors "${SWARM_EXECUTORS}" \
	-labels "${SWARM_SLAVE_LABEL}" \
	-fsroot "${SWARM_ROOT}" \
	${SWARM_EXTRA_ARGS}
-
