<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Create Release](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/release.yml/badge.svg)](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/release.yml)
[![Generate HTML](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/generate-html.yml/badge.svg)](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/generate-html.yml)
[![Slack Notification](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/slack.yml/badge.svg)](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/slack.yml)

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/marcossilvestrini/kubernetes-observability">
    <img src="images/observability.png" alt="observability">
  </a>

<h3 align="center">Kubernetes Observability</h3>

  <p align="center">
    Project for learning about Kubernetes observability.
    <br />
    <a href="https://github.com/marcossilvestrini/kubernetes-observability"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://marcossilvestrini.github.io/kubernetes-observability">Project Page</a>
    -
    <a href="https://github.com/marcossilvestrini/kubernetes-observability/issues">Report Bug</a>
    -
    <a href="https://github.com/marcossilvestrini/kubernetes-observability/issues">Request Feature</a>
  </p>
</div>

---

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

---

<!-- ABOUT THE PROJECT -->
## About The Project

This project is for learning about kubernetes observability.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

### Built With

* [![Github][Github-badge]][Github-url]
* [![GNULinux][GNULinux-badge]][GNULinux-url]
* [![Windows][Windows-badge]][Windows-url]
* [![Bash][Bash-badge]][Bash-url]
* [![Powershell][Powershell-badge]][Powershell-url]
* [![Kubernetes][Kubernetes-badge]][Kubernetes-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- GETTING STARTED -->
## Getting Started

This project is for getting started with kubernetes observability tools and best practices.

Some tools for learning:

* Prometheus
* Alertmanager
* Grafana
* Grafana Loki
* Grafana Tempo

---

### Prerequisites

* Linux System Up
* Cluster Kubernetes Up
* Git

---

### Installation

Clone the repo

```sh
git clone https://github.com/marcossilvestrini/kubernetes-observability.git
cd kubernetes-observability || exit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- USAGE EXAMPLES -->
## Usage

I publish some exemples for use in this repository.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- ROADMAP -->
## Roadmap

* [x] Create repositoty
* [ ] Prometheus
* [ ] Alertmanager
* [ ] Grafana
* [ ] Grafana Loki
* [ ] Grafana Tempo
* [ ] Grafana Alloy
* [ ] Others tools

See the [open issues](https://github.com/marcossilvestrini/kubernetes-observability/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Prometheus

![prometheus](images/prometheus.png)

Prometheus is an open-source systems monitoring and alerting toolkit originally built at SoundCloud.

Since its inception in 2012, many companies and organizations have adopted Prometheus, and the project has a very active developer and user community.

The Prometheus ecosystem consists of multiple components, many of which are optional:

* the main Prometheus server which scrapes and stores time series data
* client libraries for instrumenting application code
* a push gateway for supporting short-lived jobs
* special-purpose exporters for services like HAProxy, StatsD, Graphite, etc.
* an alertmanager to handle alerts
* various support tools

For more information about Prometheus access official documentation:  
<https://prometheus.io/docs/introduction/overview/>

### Metric names and labels

**Example metric name:**

```yaml
<metric name>{<label name>=<label value>, ...}
```

**Example metric name with labels:**

```yaml
api_http_requests_total{method="POST", handler="/messages"}
```

### Metrics Types

![Metrics Type](images/metrics_type.png)

**[Counter](https://prometheus.io/docs/concepts/metric_types/#counter)** – accepts and stores only those values that will increase with time.  
**[Gauge](https://prometheus.io/docs/concepts/metric_types/#gauge)** – stores the values that can take different values, that can both increase and decrease.  
**[Histogram](https://prometheus.io/docs/concepts/metric_types/#histogram)** – samples observations (usually things like request durations or response sizes) and counts them in configurable buckets. It also provides a sum of all observed values, allowing you to calculate averages.  
**[Summary](https://prometheus.io/docs/concepts/metric_types/#histogram )** – histogram with a more detailed data representation using additional statistics (quantiles).

### Jobs and Instances

![Jobs](images/jobs_instances.png)

In Prometheus terms, an endpoint you can scrape is called an instance, usually corresponding to a single process.  
A collection of instances with the same purpose, a process replicated for scalability or reliability for example, is called a job.

### Prometheus remote-write Specification

The remote write protocol is designed to make it possible to reliably propagate samples in real-time from a sender to a receiver, without loss.

* a "Sender" is something that sends Prometheus Remote Write data.
* a "Receiver" is something that receives Prometheus Remote Write data.
* a "Sample" is a pair of (timestamp, value).
* a "Label" is a pair of (key, value).
* a "Series" is a list of samples, identified by a unique set of labels.

#### Compatible Senders and Receivers

The spec is intended to describe how the following components interact:

* Prometheus (as both a "sender" and a "receiver")
* Avalanche (as a "sender") - A Load Testing Tool Prometheus Metrics.
* Cortex (as a "receiver")
* Elastic Agent (as a "receiver")
* Grafana Agent (as both a "sender" and a "receiver")
* GreptimeDB (as a "receiver")
* InfluxData’s Telegraf agent. (as a sender, and as a receiver)
* M3 (as a "receiver")
* Mimir (as a "receiver")
* OpenTelemetry Collector (as a "sender" and eventually as a "receiver")
* Thanos (as a "receiver")
* Vector (as a "sender" and a "receiver")
* VictoriaMetrics (as a "receiver")

### [PromQL](https://prometheus.io/docs/prometheus/latest/querying/basics/)

![promql](images/promql.png)

Prometheus provides a functional query language called PromQL (Prometheus Query Language) that lets the user select and aggregate time series data in real time.  
The result of an expression can either be shown as a graph, viewed as tabular data in Prometheus's expression browser, or consumed by external systems via the HTTP API.

[Query examples](https://prometheus.io/docs/prometheus/latest/querying/examples/)

### [Federation](https://prometheus.io/docs/prometheus/latest/federation/#federation)

![federation](images/federation.png)

Federation allows a Prometheus server to scrape selected time series from another Prometheus server.

#### Hierarchical Federation

Hierarchical federation allows Prometheus to scale to environments with tens of data centers and millions of nodes.

In this use case, the federation topology resembles a tree, with higher-level Prometheus servers collecting aggregated time series data from a larger number of subordinated servers.

This means we have bigger Prometheus servers that collect time-series data from smaller ones. We have a top-down approach where data is gathered from different levels.

![federation-hierarchical](images/federation-hierarchical.png)

#### Cross-service federation

This method involves one Prometheus server monitoring a particular service or group of services, gathering specific time-series data from another server that is monitoring a different set of services.

For example, a cluster scheduler running multiple services might expose resource usage information (like memory and CPU usage) about service instances running on the cluster.

On the other hand, a service running on that cluster will only expose application-specific service metrics.

Often, these two sets of metrics are scraped by separate Prometheus servers. Using federation, the Prometheus server containing service-level metrics may pull in the cluster resource usage metrics about its specific service from the cluster Prometheus, so that both sets of metrics can be used within that server.

By doing this, we can run queries and alerts on the merged data from both servers.

![cross-service-federation](images/cross-service-federation.png)

### HTTP Service Discovery

![http_sd](images/http_sd.png)

Prometheus provides a generic HTTP Service Discovery, that enables it to discover targets over an HTTP endpoint.

The HTTP Service Discovery is complimentary to the supported service discovery mechanisms, and is an alternative to File-based Service Discovery.

* static_configs does not scale to more dynamic environments where instances are added/removed frequently
* Prometheus can integrate with service discovery mechanisms to automatically update it’s view of of running instances
  * when new instances are added Prometheus will begin scraping, when lost from discovery the time series will also be removed
  * built-in integrations with Consul, Azure, AWS or file based if custom mechanism required
* JSON/YAML file can be published by the platform specifying all targets to scrape from. Prometheus uses it to automatically update targets

### Install Prometheus

```sh
# Download files - https://prometheus.io/download/
wget https://github.com/prometheus/prometheus/releases/download/v2.51.2/prometheus-2.51.2.linux-amd64.tar.gz

# Extract files
tar xvfz prometheus-*.tar.gz
rm  prometheus-*.tar.gz
cd prometheus-*

# Check version
./prometheus --version
```

### Configure Prometheus

See my configuration file [prometheus.yaml](./prometheus/configs/prometheus_1.yml)

```sh
vim prometheus.yaml
```

```yaml
# my global config
global:
  scrape_interval: 15s # Set the scrape interval to every 15 seconds. Default is every 1 minute.
  evaluation_interval: 15s # Evaluate rules every 15 seconds. The default is every 1 minute.
  # scrape_timeout is set to the global default (10s).

# Alertmanager configuration
alerting:
  alertmanagers:
    - static_configs:
        - targets:
          # - alertmanager:9093

# Load rules once and periodically evaluate them according to the global 'evaluation_interval'.
rule_files:
  # - "first_rules.yml"
  # - "second_rules.yml"

# A scrape configuration containing exactly one endpoint to scrape:
# Here it's Prometheus itself.
scrape_configs:
  # The job name is added as a label `job=<job_name>` to any timeseries scraped from this config.
  - job_name: "prometheus"

    # metrics_path defaults to '/metrics'
    # scheme defaults to 'http'.

    static_configs:
      - targets: ["localhost:9090"]
```

### Start Prometheus

```sh
# Start
./prometheus --config.file=prometheus.yml

# Start with PM2 - npm install pm2@latest -g
pm2 start prometheus --name prometheus-server -- --config.file=prometheus.yml
```

### Important Endpoints

```sh
http://localhost:9090 # all endpoints
http://localhost:9090/graph # PromQL expressions
http://localhost:9090/metrics # metrics
http://localhost:9090/targets # scrape_configs jobs
```

### Using the expression browser

You can use the expression in Table or Graph mode.

Open the page http://localhost:9090

```sh
# Check all http metrics
promhttp_metric_handler_requests_total

# Check http metrics with http status code 200
promhttp_metric_handler_requests_total{code="200"}

# Count http metrics
count(promhttp_metric_handler_requests_total)

# Rate function
rate(promhttp_metric_handler_requests_total{code="200"}[1m])
```

### Prometheus Exporters

An exporter is a binary running alongside the application you want to obtain metrics from.  
The exporter exposes Prometheus metrics, commonly by converting metrics that are exposed in a non-Prometheus format into a format that Prometheus supports.

#### Node Exporter

The Prometheus Node Exporter exposes a wide variety of hardware- and kernel-related metrics.

##### Instal Node Exporter

```sh
# Download - https://prometheus.io/download#node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

# Extract
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
```

##### Start Node Exporter

```sh
# Start
./node_exporter

# Start with PM2 - npm install pm2@latest -g
pm2 start node_exporter --name node_exporter
```

##### Endpoints Node Exporter

```sh
# Access metrics
http://localhost:9100/metrics
```

##### Configure Node Exporter

For enable scrap for node exporter, you can configure prometheus.

```sh
# Edit prometheus file and add job node
vim prometheus.yaml
```

```yaml
...
scrape_configs:
- job_name: node
  static_configs:
  - targets: ['localhost:9100']
...
```

Restart prometheus service for apply new job.

---

### PushGateway

The Prometheus Pushgateway is an intermediary service which allows ephemeral and batch jobs to expose their metrics to Prometheus.  
Since these kinds of jobs may not exist long enough to be scraped, they can instead push their metrics to a Pushgateway.  
The Pushgateway then acts as a temporary metrics store which Prometheus scrapes.

This setup is particularly useful for capturing the outcome of a job that does not run continuously, such as a batch job in a CI system, or a backup script running at a scheduled time.  
It simplifies monitoring these kinds of jobs without needing to run a long-lived Prometheus instance that might outlive the jobs themselves.

#### Install PushGateway

```sh
# Download 
wget -q https://github.com/prometheus/pushgateway/releases/download/v1.8.0/pushgateway-1.8.0.linux-amd64.tar.gz

# Extract
tar xvfz pushgateway-*.*-amd64.tar.gz
cd pushgateway-*.*-amd64

# Start 
# Start with PM2 - npm install pm2@latest -g
pm2 start pushgateway --name pushgateway -- --web.listen-address "192.168.0.130:9091"
```

#### Configure PushGateway

```sh
# Edit prometheus file and add job pushgateway
vim prometheus.yaml
```

```yaml
scrape_configs:
  - job_name: 'pushgateway'
    honor_labels: true
    static_configs:
      - targets: ['192.168.0.130:9091'] # prometheus server for scraping
```

```sh
# Restart prometheus

# restart with pm2
pm2 restart prometheus-server
```

#### Create metrics for test pushgateway

```sh
echo 'training_completion{course="CKA", status="complete"} 1' > metrics.txt
echo 'training_completion{course="CKS", status="in_progress"} 0.5' >> metrics.txt
echo 'training_completion{course="LPIC2", status="not_started"} 0' >> metrics.txt
curl --data-binary @metrics.txt http://192.168.0.130:9091/metrics/job/training_metrics
```

##### Endpoints PushGateway

```sh
# Access metrics
http://localhost:9091
```

#### Use PromQL for find metrics pushgateway target

![promql-pushgateway](images/promql-pushgateway.png)

### Promlens

#### Install Promlens

*Only work without basic authentication*

```sh
echo "Downloading Promlens..."
wget -q https://github.com/prometheus/promlens/releases/download/v0.3.0/promlens-0.3.0.linux-amd64.tar.gz

echo "Extracting Promlens..."
tar xvfz promlens-*.*-amd64.tar.gz
rm promlens-*.*-amd64.tar.gz
cd promlens-*.*-amd64 || exit

echo "Starting Promlens..."
pm2 start promlens --name promlens -- --web.listen-address "192.168.0.130:8081"
cd || exit
```

#### Promlens endpoints

```sh
# Access query builder
http://192.168.0.130:8081
```

![promlens](images/promlens.png)

---

### Alertmanager

![alertmanager](images/alertmanager.png)

For more information about Alertmanager access official documentation:  
<https://github.com/prometheus/alertmanager>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Grafana

---

### Grafana Loki

---

### Grafana Tempo

---

### Grafana Alloy

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- LICENSE -->
## License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- CONTACT -->
## Contact

* Marcos Silvestrini - [@mrsilvestrini](https://twitter.com/mrsilvestrini)
* <marcos.silvestrini@gmail.com>

Project Link: [https://github.com/marcossilvestrini/kubernetes-observability](https://github.com/marcossilvestrini/kubernetes-observability)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Prometheus](https://prometheus.io/docs/introduction/overview/)
* [Prometheus Configs](https://github.com/alerta/prometheus-config/tree/master/config)
* [Prometheus Default port allocations](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)
* [Pushgateway](https://github.com/prometheus/pushgateway/blob/master/README.md)
* [Exporters](https://prometheus.io/docs/instrumenting/exporters/)
* [Node Exporter](https://github.com/prometheus/node_exporter)
* [PromQL Article](https://www.metricfire.com/blog/getting-started-with-promql/)
* [Prometheus Articles](./README.md)
  * [Prometheus Federation](https://www.dbi-services.com/blog/high-availability-and-hierarchical-federation-with-prometheus/)
  * [Prometheus Monitoring : The Definitive Guide in 2019](https://devconnected.com/the-definitive-guide-to-prometheus-in-2019/)
  * [Prometheus Service Discovery](https://ryanharrison.co.uk/2021/04/05/prometheus-monitoring-guide-part-1-install-instrumentation.html)
  * [Kube Prometheus Stack Article](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/marcossilvestrini/kubernetes-observability.svg?style=for-the-badge
[contributors-url]: https://github.com/marcossilvestrini/kubernetes-observability/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marcossilvestrini/kubernetes-observability.svg?style=for-the-badge
[forks-url]: https://github.com/marcossilvestrini/kubernetes-observability/network/members
[stars-shield]: https://img.shields.io/github/stars/marcossilvestrini/kubernetes-observability.svg?style=for-the-badge
[stars-url]: https://github.com/marcossilvestrini/kubernetes-observability/stargazers
[issues-shield]: https://img.shields.io/github/issues/marcossilvestrini/kubernetes-observability.svg?style=for-the-badge
[issues-url]: https://github.com/marcossilvestrini/kubernetes-observability/issues
[license-shield]: https://img.shields.io/github/license/marcossilvestrini/kubernetes-observability.svg?style=for-the-badge
[license-url]: https://github.com/marcossilvestrini/kubernetes-observability/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/marcossilvestrini
[Github-badge]: https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white
[Github-url]: https://github.com/
[GNULinux-badge]: https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black
[GNULinux-url]: https://www.gnu.org/gnu/linux-and-gnu.en.html
[Windows-badge]: https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white
[Windows-url]: https://www.microsoft.com/
[Powershell-badge]: https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white
[Powershell-url]: https://learn.microsoft.com/en-us/powershell/
[Bash-badge]: https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white
[Bash-url]: https://www.gnu.org/software/bash/

[Kubernetes-badge]: https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white
[Kubernetes-url]: https://kubernetes.io/docs/home/
