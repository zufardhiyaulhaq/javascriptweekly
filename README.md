# javascriptweekly

Get data from javascript news and create Weekly CRDs based on community-operator and push to git datastore

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square) [![made with Go](https://img.shields.io/badge/made%20with-Go-brightgreen)](http://golang.org) [![Github master branch build](https://img.shields.io/github/workflow/status/zufardhiyaulhaq/javascriptweekly/Master)](https://github.com/zufardhiyaulhaq/javascriptweekly/actions/workflows/master.yml) [![GitHub issues](https://img.shields.io/github/issues/zufardhiyaulhaq/javascriptweekly)](https://github.com/zufardhiyaulhaq/javascriptweekly/issues) [![GitHub pull requests](https://img.shields.io/github/issues-pr/zufardhiyaulhaq/javascriptweekly)](https://github.com/zufardhiyaulhaq/javascriptweekly/pulls)

## Installing the Chart

To install the chart with the release name `my-release` and secret `foo`:

```console
kubectl apply -f secret.yaml

helm repo add zufardhiyaulhaq https://charts.zufardhiyaulhaq.com/
helm install javascriptweekly zufardhiyaulhaq/javascriptweekly --values values.yaml --set secret=foo
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cronSchedule | string | `"0 8 * * 0"` |  |
| image.repository | string | `"zufardhiyaulhaq/javascriptweekly"` |  |
| image.tag | string | `"v1.0.0"` |  |
| secret | string | `""` |  |
| weekly.community | string | `"JavaScript Indonesia Community"` |  |
| weekly.image_url | string | `"https://www.purelogics.net/blog/wp-content/uploads/2019/01/javascript.png"` |  |
| weekly.namespace | string | `"javascript-community"` |  |
| weekly.tags | string | `"weekly,nodejs"` |  |

