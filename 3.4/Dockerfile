FROM grahamdumpleton/mod-wsgi-docker:python-3.4

ENV MOD_WSGI_S2I_VERSION 1.0.0

LABEL io.k8s.description="Builder for Python web applications." \
      io.k8s.display-name="Apache/mod_wsgi (Python 3.4)" \
      io.openshift.expose-services="80:http" \
      io.openshift.tags="builder,mod_wsgi,python-3.4,mod_wsgi-python-3.4" \
      io.openshift.s2i.scripts-url="image:///usr/local/s2i/bin"

ENV STI_SCRIPTS_PATH=/usr/local/s2i/bin

COPY assemble.sh /usr/local/s2i/bin/assemble
COPY run.sh /usr/local/s2i/bin/run
COPY save.sh /usr/local/s2i/bin/save-artifacts
COPY usage.sh /usr/local/s2i/bin/usage

RUN chown -R 33:33 /app

USER 33

EXPOSE 80

CMD [ "/usr/local/s2i/bin/usage" ]
