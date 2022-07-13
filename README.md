# oc-pod-uptime-test

Perl script used for OpenShift testing

**Setup**

```
oc new-project uptime
oc new-app https://github.com/chornberger-c2c/oc-pod-uptime-test.git
oc expose svc/oc-pod-uptime-test
```
