# System metrics

A custom dashboard model in Grafana that shows various system metrics.

![dashboard](/static/grafana_dashboard.png) 

## Used input plugins

- cpu
- disk
- diskio
- kernel
- mem
- processes
- swap
- system
- ethtool
- exec with `/bin/viruses.bash` script with the following configuration:

```
[[inputs.exec]]
    commands = ["/usr/bin/viruses.bash viruses"]
    name_override = "viruses"
    timeout = "2s"
    data_format = "value"
    data_type = "integer"
```