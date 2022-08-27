# javascriptweekly

Get data from javascript news and create Weekly CRDs based on community-operator and push to git datastore

![Version: 2.0.0](https://img.shields.io/badge/Version-2.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.0](https://img.shields.io/badge/AppVersion-2.0.0-informational?style=flat-square) [![made with Go](https://img.shields.io/badge/made%20with-Go-brightgreen)](http://golang.org) [![Github master branch build](https://img.shields.io/github/workflow/status/zufardhiyaulhaq/javascriptweekly/Master)](https://github.com/zufardhiyaulhaq/javascriptweekly/actions/workflows/master.yml) [![GitHub issues](https://img.shields.io/github/issues/zufardhiyaulhaq/javascriptweekly)](https://github.com/zufardhiyaulhaq/javascriptweekly/issues) [![GitHub pull requests](https://img.shields.io/github/issues-pr/zufardhiyaulhaq/javascriptweekly)](https://github.com/zufardhiyaulhaq/javascriptweekly/pulls)

## Installing the Chart

To install the chart with the release name `my-javascriptweekly` and secret `foo`:

```console
kubectl apply -f secret.yaml

helm repo add javascriptweekly https://zufardhiyaulhaq.com/javascriptweekly/charts/releases/
helm install my-javascriptweekly javascriptweekly/javascriptweekly --values values.yaml
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cronSchedule | string | `"0 8 * * 0"` |  |
| image.repository | string | `"zufardhiyaulhaq/javascriptweekly"` |  |
| image.tag | string | `"v2.0.0"` |  |
| secret | string | `""` |  |
| weekly.community | string | `"javascript"` |  |
| weekly.image_url | string | `"https://www.purelogics.net/blog/wp-content/uploads/2019/01/javascript.png"` |  |
| weekly.namespace | string | `"community"` |  |
| weekly.tags | string | `"weekly,javascript"` |  |

