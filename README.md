Prometheus data from CI run
====

* Download and extract prometheus data from CI artifacts, e.g. https://gcsweb-ci.svc.ci.openshift.org/gcs/origin-ci-test/pr-logs/pull/openshift_openshift-ansible/10958/pull-ci-openshift-openshift-ansible-devel-40-e2e-aws-scaleup/59/artifacts/e2e-aws-scaleup/metrics/
* Run `run-prom.sh`
  This will start Prometheus on 9090 port and Grafana on 3000
* Open Grafana at http://localhost:3000, add Prometheus source at 'http://<any valid IP>:9090'
  Use `podman inspect` to find out Prometheus IP or use internal/public IP, as both services are 
  listening on 0.0.0.0
* Load the dashboard from 'dashboard.json'
