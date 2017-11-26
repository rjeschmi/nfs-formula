{% from "nfs/map.jinja" import nfs with context %}

nfs-client-deps:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_client|json }}

{% if nfs.client_services %}
nfs-client-services:
    service.running:
      - name: {{ nfs.client_services }}
      - enable: True
{% endif %}
