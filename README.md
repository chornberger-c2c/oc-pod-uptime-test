# oc-pod-uptime-test

Perl script used for OpenShift testing - shows uptime of a node.

The application is built - without a Dockerfile - via source-to-image (s2i).

Traffic is coming in via a route object.

**New Project**
```
oc new-project uptime
```

**New Build Config**
```
oc -n uptime new-app https://github.com/chornberger-c2c/oc-pod-uptime-test.git
```

**New Route**
```
oc -n uptime expose svc/oc-pod-uptime-test
```
**Verify**
```
URL="$(oc -n uptime get route oc-pod-uptime-test -o jsonpath='{.spec.host}''{"\n"}')"
curl "${URL}"
```
