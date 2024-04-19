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

## プロジェクトについて

このプロジェクトは、Kubernetes の可観測性について学習するためのものです。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

### で構築

-   [![Github][Github-badge]][Github-url]
-   [![GNULinux][GNULinux-badge]][GNULinux-url]
-   [![Windows][Windows-badge]][Windows-url]
-   [![Bash][Bash-badge]][Bash-url]
-   [![Powershell][Powershell-badge]][Powershell-url]
-   [![Kubernetes][Kubernetes-badge]][Kubernetes-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- GETTING STARTED -->

## はじめる

このプロジェクトは、kubernetes 可観測性ツールとベスト プラクティスを開始するためのものです。

学習用のいくつかのツール:

-   プロメテウス
-   アラートマネージャー
-   グラファナ
-   グラファナ ロキ
-   グラファナ時間
-   グラファナ合金

* * *

### 前提条件

-   Linux システムアップ
-   クラスタ Kubernetes アップ
-   ギット

* * *

### インストール

リポジトリのクローンを作成する

```sh
git clone https://github.com/marcossilvestrini/kubernetes-observability.git
cd kubernetes-observability || exit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- USAGE EXAMPLES -->

## 使用法

このリポジトリで使用するためにいくつかの例を公開します。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ROADMAP -->

## ロードマップ

-   [x] リポジトリの作成
-   [ ] プロメテウス
-   [ ] アラートマネージャー
-   [ ] グラファナ
-   [ ] グラファナ ロキ
-   [ ] グラファナ時間
-   [ ] グラファナ合金
-   [ ] その他のツール

を参照してください。[未解決の問題](https://github.com/marcossilvestrini/kubernetes-observability/issues)提案された機能 (および既知の問題) の完全なリストについては、こちらをご覧ください。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## プロメテウス

![prometheus](images/prometheus.png)

Prometheus は、もともと SoundCloud で構築されたオープンソースのシステム監視および警告ツールキットです。

2012 年の開始以来、多くの企業や組織が Prometheus を採用しており、このプロジェクトには非常に活発な開発者とユーザーのコミュニティがあります。

Prometheus エコシステムは複数のコンポーネントで構成されており、その多くはオプションです。

-   時系列データを収集して保存するメインの Prometheus サーバー
-   アプリケーション コードをインストルメントするためのクライアント ライブラリ
-   短期間のジョブをサポートするためのプッシュ ゲートウェイ
-   HAProxy、StatsD、Graphite などのサービスの専用エクスポーター。
-   アラートを処理するためのアラートマネージャー
-   各種サポートツール

Prometheus の詳細については、公式ドキュメントにアクセスしてください。  
[ｈっｔｐｓ：／／ｐろめてぇうｓ。いお／どｃｓ／いんｔろづｃちおん／おゔぇｒゔぃえｗ／](https://prometheus.io/docs/introduction/overview/)

### プロメテウスをインストールする

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

### プロメテウスの構成

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

### プロメテウスを起動する

```sh
# Start
./prometheus --config.file=prometheus.yml

# Start with PM2 - npm install pm2@latest -g
pm2 start prometheus --name prometheus-server -- --config.file=prometheus.yml
```

### 重要なエンドポイント

```sh
http://localhost:9090 # all endpoints
http://localhost:9090/graph # PromQL expressions
http://localhost:9090/metrics # metrics
```

### 式ブラウザの使用

式はテーブル モードまたはグラフ モードで使用できます。

ページ http&#x3A;//localhost:9090 を開きます

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

### プロメテウスエクスポーター

#### ノードエクスポーター

Prometheus Node Exporter は、さまざまなハードウェアおよびカーネル関連のメトリクスを公開します。

##### ノードエクスポーターのインストール

```sh
# Download - https://prometheus.io/download#node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

# Extract
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
```

##### ノードエクスポーターの開始

```sh
# Start
./node_exporter

# Start with PM2 - npm install pm2@latest -g
pm2 start node_exporter --name node_exporter
```

##### エンドポイントノードエクスポーター

```sh
# Access metrics
http://localhost:9100/metrics
```

##### ノードエクスポーターの構成

ノード エクスポーターのスクラップを有効にするために、prometheus を設定できます。

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

新しいジョブを適用するために prometheus サービスを再起動します。

* * *

### アラートマネージャー

![alertmanager](images/alertmanager.png)

Alertmanager の詳細については、公式ドキュメントにアクセスしてください。  
[ｈっｔｐｓ：／／ぎてゅｂ。こｍ／ｐろめてぇうｓ／あぇｒｔまなげｒ](https://github.com/prometheus/alertmanager)

* * *

## グラファナ

* * *

### グラファナ ロキ

* * *

### グラファナ時間

* * *

### グラファナ合金

* * *

<!-- CONTRIBUTING -->

## 貢献する

オープンソース コミュニティは、貢献によって、学び、インスピレーションを与え、創造するための素晴らしい場所になります。あなたが行う貢献はすべて、**とても感謝しています**。

これを改善するための提案がある場合は、リポジトリをフォークしてプル リクエストを作成してください。 「拡張」タグを付けて問題を開くこともできます。
プロジェクトにスターを付けることを忘れないでください。再度、感謝します！

1.  プロジェクトをフォークする
2.  機能ブランチを作成します (`git checkout -b feature/AmazingFeature`）
3.  変更をコミットします (`git commit -m 'Add some AmazingFeature'`）
4.  ブランチにプッシュ (`git push origin feature/AmazingFeature`）
5.  プルリクエストを開く

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- LICENSE -->

## ライセンス

MIT ライセンスに基づいて配布されます。見る[`LICENSE`](LICENSE)詳細については。

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTACT -->

## 接触

-   マルコス・シルヴェストリーニ -[@rsilvestrini](https://twitter.com/mrsilvestrini)
-   [まｒこｓ。しｌゔぇｓｔりに＠ｇまいｌ。こｍ](mailto:marcos.silvestrini@gmail.com)

プロジェクトリンク:[ｈっｔｐｓ：／／ぎてゅｂ。こｍ／まｒこっしｌゔぇｓｔりに／くべｒねてｓーおｂせｒゔぁびぃｔｙ](https://github.com/marcossilvestrini/kubernetes-observability)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## 謝辞

-   [プロメテウス](https://prometheus.io/docs/introduction/overview/)
-   [ノードエクスポーター](https://github.com/prometheus/node_exporter)
-   [Prometheus のデフォルトのポート割り当て](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)
-   [キューブプロメテウス スタック](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

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