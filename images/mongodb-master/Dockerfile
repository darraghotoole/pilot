FROM mongo:2.6.9
COPY ./entrypoint.sh /
COPY ./setup.sh /
RUN chmod +x /entrypoint.sh /setup.sh
EXPOSE 27017
ENTRYPOINT ["/entrypoint.sh"]
