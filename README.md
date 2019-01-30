Prometheus data from CI run
====

* Download and extract prometheus data from CI artifacts, e.g. https://gcsweb-ci.svc.ci.openshift.org/gcs/origin-ci-test/pr-logs/pull/openshift_openshift-ansible/10958/pull-ci-openshift-openshift-ansible-devel-40-e2e-aws-scaleup/59/artifacts/e2e-aws-scaleup/metrics/
* Run `run-prom.sh`
* Open `https://localhost:9090`
* Adjust time range and end of time graph.
  Check the e2e log and adjust the graph time to start of the test. Namespace is destroyed after 3 hours, so 
  3h time range is a good choice for a start
* Check test container (or build) logs to find out which nodes are workers and which are masters.
  `ip-10-0-130-36.ec2.internal` would translate into `{instance='10.0.130.36:10250'}` in PromQL to clarify the query

## Important metrics:

* `up==0` - show targets which never came up
  In scaleup test we're destroying existing CoreOS workers, so some kubelets may 
* `kubelet_pleg_relist_interval_microseconds{instance="10.0.148.63:10250"}`
