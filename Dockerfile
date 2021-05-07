FROM ibmcom/pipeline-base-image:2.12

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

