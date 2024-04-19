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

[![Create Release](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/release.yml/badge.svg)](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/release.yml)[![Generate HTML](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/generate-html.yml/badge.svg)](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/generate-html.yml)[![Slack Notification](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/slack.yml/badge.svg)](https://github.com/marcossilvestrini/kubernetes-observability/actions/workflows/slack.yml)

[![Contributors][contributors-shield]][contributors-url][![Forks][forks-shield]][forks-url][![Stargazers][stars-shield]][stars-url][![Issues][issues-shield]][issues-url][![MIT License][license-shield]][license-url][![LinkedIn][linkedin-shield]][linkedin-url]

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
    <a href="https://github.com/marcossilvestrini/kubernetes-observability">View Demo</a>
    -
    <a href="https://github.com/marcossilvestrini/kubernetes-observability/issues">Report Bug</a>
    -
    <a href="https://github.com/marcossilvestrini/kubernetes-observability/issues">Request Feature</a>
  </p>
</div>

* * *

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

* * *

<!-- ABOUT THE PROJECT -->

## 關於該項目

這個專案是為了學習 kubernetes 可觀察性。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

### 內建

-   [![Github][Github-badge]][Github-url]
-   [![GNULinux][GNULinux-badge]][GNULinux-url]
-   [![Windows][Windows-badge]][Windows-url]
-   [![Bash][Bash-badge]][Bash-url]
-   [![Powershell][Powershell-badge]][Powershell-url]
-   [![Kubernetes][Kubernetes-badge]][Kubernetes-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- GETTING STARTED -->

## 入門

該計畫旨在開始使用 kubernetes 可觀察性工具和最佳實踐。

一些學習工具：

-   普羅米修斯
-   警報管理器
-   格拉法納
-   格拉法娜·洛基
-   格拉法納時間
-   格拉法納合金

* * *

### 先決條件

-   Linux系統啟動
-   叢集 Kubernetes 啟動
-   git

* * *

### 安裝

克隆儲存庫

```sh
git clone https://github.com/marcossilvestrini/kubernetes-observability.git
cd kubernetes-observability || exit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- USAGE EXAMPLES -->

## 用法

我發布了一些在此存儲庫中使用的範例。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ROADMAP -->

## 路線圖

-   [x] 建立儲存庫
-   [ ] 普羅米修斯
-   [ ] 警報管理器
-   [ ] 格拉法納
-   [ ] 格拉法娜·洛基
-   [ ] 格拉法納時間
-   [ ] 格拉法納合金
-   [ ] 其他工具

請參閱[開放式問題](https://github.com/marcossilvestrini/kubernetes-observability/issues)取得建議功能（和已知問題）的完整清單。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## 普羅米修斯

![prometheus](images/prometheus.png)

Prometheus 是一個開源系統監控和警報工具包，最初是在 SoundCloud 建置的。

自2012年推出以來，許多公司和組織都採用了Prometheus，該專案擁有非常活躍的開發者和用戶社群。

Prometheus 生態系統由多個組件組成，其中許多組件是可選的：

-   主要的 Prometheus 伺服器，用於抓取和儲存時間序列數據
-   用於檢測應用程式程式碼的客戶端庫
-   支援短期工作的推送網關
-   HAProxy、StatsD、Graphite 等服務的特殊用途導出器。
-   處理警報的警報管理器
-   各種支援工具

有關 Prometheus 的更多資訊請訪問官方文件：  
<https://prometheus.io/docs/introduction/overview/>

### 安裝普羅米修斯

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

### 配置普羅米修斯

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

### 啟動普羅米修斯

```sh
# Start
./prometheus --config.file=prometheus.yml

# Start with PM2 - npm install pm2@latest -g
pm2 start prometheus --name prometheus-server -- --config.file=prometheus.yml
```

### 重要端點

```sh
http://localhost:9090 # all endpoints
http://localhost:9090/graph # PromQL expressions
http://localhost:9090/metrics # metrics
```

### 使用表達式瀏覽器

您可以在表格或圖表模式下使用表達式。

開啟頁面http&#x3A;//localhost:9090

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

### 普羅米修斯出口商

#### 節點導出器

Prometheus Node Exporter 公開了各種與硬體和核心相關的指標。

##### 安裝節點導出器

```sh
# Download - https://prometheus.io/download#node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

# Extract
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
```

##### 啟動節點導出器

```sh
# Start
./node_exporter

# Start with PM2 - npm install pm2@latest -g
pm2 start node_exporter --name node_exporter
```

##### 端點節點導出器

```sh
# Access metrics
http://localhost:9100/metrics
```

##### 配置節點導出器

若要為節點匯出器啟用廢料，您可以設定 prometheus。

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

重新啟動普羅米修斯服務以申請新工作。

* * *

### 警報管理器

![alertmanager](images/alertmanager.png)

關於Alertmanager的更多資訊請參閱官方文件：  
<https://github.com/prometheus/alertmanager>

* * *

## 格拉法納

* * *

### 格拉法娜·洛基

* * *

### 格拉法納時間

* * *

### 格拉法納合金

* * *

<!-- CONTRIBUTING -->

## 貢獻

貢獻使開源社群成為學習、啟發和創造的絕佳場所。您所做的任何貢獻都是**不勝感激**.

如果您有更好的建議，請分叉該儲存庫並建立拉取請求。您也可以簡單地使用標籤“增強”來開啟問題。
不要忘記給該項目一顆星！再次感謝！

1.  分叉項目
2.  建立您的功能分支（`git checkout -b feature/AmazingFeature`)
3.  提交您的更改（`git commit -m 'Add some AmazingFeature'`)
4.  推送到分支（`git push origin feature/AmazingFeature`)
5.  打開拉取請求

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- LICENSE -->

## 執照

根據 MIT 許可證分發。看[`LICENSE`](LICENSE)了解更多。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTACT -->

## 接觸

-   馬科斯·西爾維斯特里尼 -[@西爾維斯特里尼先生](https://twitter.com/mrsilvestrini)
-   [marcos.silvestrini@gmail.com](mailto:marcos.silvestrini@gmail.com)

項目連結：<https://github.com/marcossilvestrini/kubernetes-observability>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## 致謝

-   [普羅米修斯](https://prometheus.io/docs/introduction/overview/)
-   [節點導出器](https://github.com/prometheus/node_exporter)
-   [Prometheus 預設連接埠分配](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)
-   [Kube Prometheus 堆疊](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

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