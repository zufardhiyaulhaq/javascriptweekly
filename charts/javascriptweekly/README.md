# javascriptweekly charts
Helm chart for javascriptweeklys

### Installing the charts
```
helm repo add zufardhiyaulhaq https://charts.zufardhiyaulhaq.com/
helm install zufardhiyaulhaq/javascriptweekly --name-template javascriptweekly -f values.yaml
```

### Configuration

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| community | string | `"JavaScript Indonesia Community"` |  |
| cronSchedule | string | `"0 8 * * 1"` |  |
| github.branch | string | `"master"` |  |
| github.organization | string | `"zufardhiyaulhaq"` |  |
| github.repository | string | `"community-ops"` |  |
| github.repository_path | string | `"./manifest/javascript-community/"` |  |
| github.token | string | `"your_token"` |  |
| image.name | string | `"javascriptweekly"` |  |
| image.repository | string | `"zufardhiyaulhaq/javascriptweekly"` |  |
| image.tag | string | `"0.0.1"` |  |
| image_url | string | `"https://www.purelogics.net/blog/wp-content/uploads/2019/01/javascript.png"` |  |
| jobHistoryLimit | int | `1` |  |
| namespace | string | `"javascript-community"` |  |
| tags | string | `"weekly,nodejs"` |  |

check & modify values.yaml for details
