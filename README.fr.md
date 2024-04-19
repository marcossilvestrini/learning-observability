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

## À propos du projet

Ce projet vise à en apprendre davantage sur l'observabilité de Kubernetes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

### Construit avec

-   [![Github][Github-badge]][Github-url]
-   [![GNULinux][GNULinux-badge]][GNULinux-url]
-   [![Windows][Windows-badge]][Windows-url]
-   [![Bash][Bash-badge]][Bash-url]
-   [![Powershell][Powershell-badge]][Powershell-url]
-   [![Kubernetes][Kubernetes-badge]][Kubernetes-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- GETTING STARTED -->

## Commencer

Ce projet permet de démarrer avec les outils d'observabilité et les meilleures pratiques de Kubernetes.

Quelques outils pour apprendre :

-   Prométhée
-   Gestionnaire d'alertes
-   Grafana
-   Graffana Loki
-   Heure de Grafana
-   Alliage Grafana

* * *

### Conditions préalables

-   Système Linux en place
-   Cluster Kubernetes activé
-   Git

* * *

### Installation

Cloner le dépôt

```sh
git clone https://github.com/marcossilvestrini/kubernetes-observability.git
cd kubernetes-observability || exit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- USAGE EXAMPLES -->

## Usage

Je publie quelques exemples à utiliser dans ce référentiel.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ROADMAP -->

## Feuille de route

-   [x] Créer un référentiel
-   [ ] Prométhée
-   [ ] Gestionnaire d'alertes
-   [ ] Grafana
-   [ ] Graffana Loki
-   [ ] Heure de Grafana
-   [ ] Alliage Grafana
-   [ ] Autres outils

Voir le[questions ouvertes](https://github.com/marcossilvestrini/kubernetes-observability/issues)pour une liste complète des fonctionnalités proposées (et des problèmes connus).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## Prométhée

![prometheus](images/prometheus.png)

Prometheus est une boîte à outils open source de surveillance et d'alerte des systèmes, initialement conçue sur SoundCloud.

Depuis sa création en 2012, de nombreuses entreprises et organisations ont adopté Prometheus, et le projet compte une communauté de développeurs et d'utilisateurs très active.

L'écosystème Prometheus se compose de plusieurs composants, dont beaucoup sont facultatifs :

-   le serveur principal Prometheus qui récupère et stocke les données de séries chronologiques
-   bibliothèques clientes pour instrumenter le code d'application
-   une passerelle push pour prendre en charge les emplois de courte durée
-   exportateurs spécialisés pour des services comme HAProxy, StatsD, Graphite, etc.
-   un gestionnaire d'alertes pour gérer les alertes
-   divers outils d'assistance

Pour plus d’informations sur Prometheus, accédez à la documentation officielle :  
<https://prometheus.io/docs/introduction/overview/>

### Installer Prometheus

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

### Configurer Prometheus

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

### Démarrer Prométhée

```sh
# Start
./prometheus --config.file=prometheus.yml

# Start with PM2 - npm install pm2@latest -g
pm2 start prometheus --name prometheus-server -- --config.file=prometheus.yml
```

### Points finaux importants

```sh
http://localhost:9090 # all endpoints
http://localhost:9090/graph # PromQL expressions
http://localhost:9090/metrics # metrics
```

### Utilisation du navigateur d'expressions

Vous pouvez utiliser l'expression en mode Tableau ou Graphique.

Ouvrez la page http&#x3A;//localhost:9090

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

### Exportateurs de Prométhée

#### Exportateur de nœuds

Prometheus Node Exporter expose une grande variété de métriques liées au matériel et au noyau.

##### Installer l'exportateur de nœuds

```sh
# Download - https://prometheus.io/download#node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

# Extract
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
```

##### Démarrer l'exportateur de nœuds

```sh
# Start
./node_exporter

# Start with PM2 - npm install pm2@latest -g
pm2 start node_exporter --name node_exporter
```

##### Exportateur de nœuds de points de terminaison

```sh
# Access metrics
http://localhost:9100/metrics
```

##### Configurer l'exportateur de nœuds

Pour activer le scrap pour l'exportateur de nœuds, vous pouvez configurer prometheus.

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

Redémarrez le service Prometheus pour appliquer un nouvel emploi.

* * *

### Gestionnaire d'alertes

![alertmanager](images/alertmanager.png)

Pour plus d’informations sur Alertmanager, accédez à la documentation officielle :  
<https://github.com/prometheus/alertmanager>

* * *

## Grafana

* * *

### Graffana Loki

* * *

### Heure de Grafana

* * *

### Alliage Grafana

* * *

<!-- CONTRIBUTING -->

## Contribuant

Les contributions sont ce qui fait de la communauté open source un endroit si formidable pour apprendre, inspirer et créer. Toutes les contributions que vous apportez sont**très appréciée**.

Si vous avez une suggestion pour améliorer les choses, veuillez créer le dépôt et créer une pull request. Vous pouvez aussi simplement ouvrir un ticket avec la balise « amélioration ».
N'oubliez pas de donner une étoile au projet ! Merci encore!

1.  Forkez le projet
2.  Créez votre branche de fonctionnalités (`git checkout -b feature/AmazingFeature`)
3.  Validez vos modifications (`git commit -m 'Add some AmazingFeature'`)
4.  Pousser vers la succursale (`git push origin feature/AmazingFeature`)
5.  Ouvrir une demande de tirage

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- LICENSE -->

## Licence

Distribué sous licence MIT. Voir[`LICENSE`](LICENSE)pour plus d'informations.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTACT -->

## Contact

-   Marcos Silvestrini - [@mrsilvestrini](https://twitter.com/mrsilvestrini)
-   [marcos.silvestrini@gmail.com](mailto:marcos.silvestrini@gmail.com)

Lien du projet :<https://github.com/marcossilvestrini/kubernetes-observability>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## Remerciements

-   [Prométhée](https://prometheus.io/docs/introduction/overview/)
-   [Exportateur de nœuds](https://github.com/prometheus/node_exporter)
-   [Allocations de ports par défaut de Prometheus](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)
-   [Pile Kube Prometheus](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

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