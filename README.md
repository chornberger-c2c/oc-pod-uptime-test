# oc-pod-uptime-test

Perl script used for OpenShift testing - shows uptime of a node

**New Project**
```
oc new-project uptime
```

**New Build Config**
```
oc new-app https://github.com/chornberger-c2c/oc-pod-uptime-test.git
```

**New Route**
```
oc expose svc/oc-pod-uptime-test
```
**Verify**
```
URL=$(oc get route oc-pod-uptime-test -o jsonpath='{.spec.host}''{"\n"}')
curl ${URL}
```
