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
    <a href="https://marcossilvestrini.github.io/kubernetes-observability">Project Page</a>
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
-   Grafana Loki
-   Heure de Grafana

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
-   [ ] Grafana Loki
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

### Noms et étiquettes des métriques

**Exemple de nom de métrique :**

```yaml
<metric name>{<label name>=<label value>, ...}
```

**Exemple de nom de métrique avec des étiquettes :**

```yaml
api_http_requests_total{method="POST", handler="/messages"}
```

### Types de métriques

![Metrics Type](images/metrics_type.png)

**[Comptoir](https://prometheus.io/docs/concepts/metric_types/#counter)**– accepte et stocke uniquement les valeurs qui augmenteront avec le temps.  
**[Jauge](https://prometheus.io/docs/concepts/metric_types/#gauge)**– stocke les valeurs qui peuvent prendre des valeurs différentes, qui peuvent à la fois augmenter et diminuer.  
**[Histogramme](https://prometheus.io/docs/concepts/metric_types/#histogram)**– échantillonne les observations (généralement des éléments tels que la durée des requêtes ou la taille des réponses) et les compte dans des compartiments configurables. Il fournit également une somme de toutes les valeurs observées, vous permettant de calculer des moyennes.  
**[Résumé](https://prometheus.io/docs/concepts/metric_types/#histogram)**– histogramme avec une représentation plus détaillée des données utilisant des statistiques supplémentaires (quantiles).

### Emplois et instances

![Jobs](images/jobs_instances.png)

En termes de Prometheus, un point de terminaison que vous pouvez gratter est appelé une instance, correspondant généralement à un seul processus.  
Un ensemble d'instances ayant le même objectif, un processus répliqué à des fins d'évolutivité ou de fiabilité par exemple, est appelé un travail.

### Spécification d'écriture à distance Prometheus

Le protocole d'écriture à distance est conçu pour permettre de propager de manière fiable et en temps réel des échantillons d'un émetteur à un récepteur, sans perte.

-   un « expéditeur » est quelque chose qui envoie des données Prometheus Remote Write.
-   un « récepteur » est quelque chose qui reçoit des données Prometheus Remote Write.
-   un « échantillon » est une paire de (horodatage, valeur).
-   un "Label" est une paire de (clé, valeur).
-   une « série » est une liste d'échantillons, identifiés par un ensemble unique d'étiquettes.

#### Émetteurs et récepteurs compatibles

La spécification est destinée à décrire comment les composants suivants interagissent :

-   Prométhée (à la fois en tant qu'"expéditeur" et "récepteur")
-   Avalanche (en tant qu'"expéditeur") - Un outil de test de charge Prometheus Metrics.
-   Cortex (en tant que « récepteur »)
-   Agent Elastic (en tant que "récepteur")
-   Agent Grafana (en tant qu'"expéditeur" et "destinataire")
-   GreptimeDB (en tant que "récepteur")
-   Agent Telegraf d'InfluxData. (en tant qu'expéditeur et en tant que destinataire)
-   M3 (en tant que "récepteur")
-   Mimir (en tant que "récepteur")
-   OpenTelemetry Collector (en tant qu'"expéditeur" et éventuellement en tant que "récepteur")
-   Thanos (en tant que "récepteur")
-   Vecteur (en tant qu'"expéditeur" et "récepteur")
-   VictoriaMetrics (en tant que "récepteur")

### [Lavé](https://prometheus.io/docs/prometheus/latest/querying/basics/)

![promql](images/promql.png)

Prometheus fournit un langage de requête fonctionnel appelé PromQL (Prometheus Query Language) qui permet à l'utilisateur de sélectionner et d'agréger des données de séries chronologiques en temps réel.  
Le résultat d'une expression peut être affiché sous forme de graphique, visualisé sous forme de données tabulaires dans le navigateur d'expressions de Prometheus, ou consommé par des systèmes externes via l'API HTTP.

[Exemples de requêtes](https://prometheus.io/docs/prometheus/latest/querying/examples/)

### [Fédération](https://prometheus.io/docs/prometheus/latest/federation/#federation)

![federation](images/federation.png)

La fédération permet à un serveur Prometheus d'extraire des séries temporelles sélectionnées d'un autre serveur Prometheus.

#### Fédération hiérarchique

La fédération hiérarchique permet à Prometheus de s'adapter à des environnements comprenant des dizaines de centres de données et des millions de nœuds.

Dans ce cas d'utilisation, la topologie de la fédération ressemble à une arborescence, avec des serveurs Prometheus de niveau supérieur collectant des données de séries chronologiques agrégées à partir d'un plus grand nombre de serveurs subordonnés.

Cela signifie que nous disposons de serveurs Prometheus plus gros qui collectent des données chronologiques à partir de serveurs plus petits. Nous avons une approche descendante où les données sont collectées à différents niveaux.

![federation-hierarchical](images/federation-hierarchical.png)

#### Fédération interservices

Cette méthode implique qu'un serveur Prometheus surveille un service ou un groupe de services particulier, collectant des données chronologiques spécifiques à partir d'un autre serveur qui surveille un ensemble de services différent.

Par exemple, un planificateur de cluster exécutant plusieurs services peut exposer des informations sur l'utilisation des ressources (telles que l'utilisation de la mémoire et du processeur) sur les instances de service exécutées sur le cluster.

D'un autre côté, un service exécuté sur ce cluster n'exposera que les métriques de service spécifiques à l'application.

Souvent, ces deux ensembles de métriques sont récupérés par des serveurs Prometheus distincts. Grâce à la fédération, le serveur Prometheus contenant des métriques de niveau de service peut extraire les métriques d'utilisation des ressources du cluster concernant son service spécifique à partir du cluster Prometheus, afin que les deux ensembles de métriques puissent être utilisés au sein de ce serveur.

En faisant cela, nous pouvons exécuter des requêtes et des alertes sur les données fusionnées des deux serveurs.

![cross-service-federation](images/cross-service-federation.png)

### Découverte du service HTTP

![http_sd](images/http_sd.png)

Prometheus fournit un service HTTP générique de découverte, qui lui permet de découvrir des cibles sur un point de terminaison HTTP.

La découverte de services HTTP est complémentaire aux mécanismes de découverte de services pris en charge et constitue une alternative à la découverte de services basée sur les fichiers.

-   static_configs ne s'adapte pas aux environnements plus dynamiques où les instances sont fréquemment ajoutées/supprimées
-   Prometheus peut s'intégrer aux mécanismes de découverte de services pour mettre automatiquement à jour sa vue des instances en cours d'exécution.
    -   lorsque de nouvelles instances sont ajoutées, Prometheus commencera à gratter, en cas de perte de la découverte, la série chronologique sera également supprimée
    -   intégrations intégrées avec Consul, Azure, AWS ou basées sur des fichiers si un mécanisme personnalisé est requis
-   Le fichier JSON/YAML peut être publié par la plateforme en spécifiant toutes les cibles à extraire. Prometheus l'utilise pour mettre à jour automatiquement les cibles

#### Exemple utilisant http sd_file

![http_file_sd](images/http_file_sd.png)

prometheus.yaml pour supprimer les services dans la cible http_sd.json

```yaml
global:
  scrape_interval: 15s
  evaluation_interval: 15s
scrape_configs:  
  # Service Discovery with file_sd  
  - job_name: 'http_sd'
    basic_auth:
      username: "skynet"
      password: "prometheus"
    file_sd_configs:
      - files:
        - /home/vagrant/prometheus-server/http_sd.json
```

http_sd.json

```json
[
    {
        "targets": ["192.168.0.130:9100", "192.168.0.131:9100"],
        "labels": {            
            "__meta_prometheus_job": "node"
        }
    },
    {
        "targets": ["192.168.0.130:9091"],
        "labels": {            
            "__meta_prometheus_job": "pushgateway"
        }
    }    
]
```

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

Voir mon fichier de configuration[prometheus.yaml](./prometheus/configs/prometheus_1.yml)

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
http://localhost:9090/targets # scrape_configs jobs
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

Un exportateur est un binaire exécuté parallèlement à l’application à partir de laquelle vous souhaitez obtenir des métriques.  
L'exportateur expose les métriques Prometheus, généralement en convertissant les métriques exposées dans un format non Prometheus dans un format pris en charge par Prometheus.

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

### Passerelle Push

Prometheus Pushgateway est un service intermédiaire qui permet aux tâches éphémères et par lots d'exposer leurs métriques à Prometheus.  
Étant donné que ces types de tâches n’existent peut-être pas assez longtemps pour être supprimés, ils peuvent plutôt transmettre leurs métriques à un Pushgateway.  
Le Pushgateway agit alors comme un magasin de métriques temporaire que Prometheus récupère.

Cette configuration est particulièrement utile pour capturer le résultat d'une tâche qui ne s'exécute pas en continu, comme une tâche par lots dans un système CI ou un script de sauvegarde s'exécutant à une heure planifiée.  
Cela simplifie la surveillance de ces types de tâches sans avoir besoin d'exécuter une instance Prometheus de longue durée qui pourrait survivre aux tâches elles-mêmes.

#### Installer PushGateway

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

#### Configurer PushGateway

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

#### Créer des métriques pour tester pushgateway

```sh
echo 'training_completion{course="CKA", status="complete"} 1' > metrics.txt
echo 'training_completion{course="CKS", status="in_progress"} 0.5' >> metrics.txt
echo 'training_completion{course="LPIC2", status="not_started"} 0' >> metrics.txt
curl --data-binary @metrics.txt http://192.168.0.130:9091/metrics/job/training_metrics
```

##### Points de terminaison PushGateway

```sh
# Access metrics
http://localhost:9091
```

#### Utilisez PromQL pour rechercher la cible pushgateway des métriques

![promql-pushgateway](images/promql-pushgateway.png)

### Promlens

#### Installer Promlens

_Fonctionne uniquement sans authentification de base_

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

#### Points de terminaison Promlens

```sh
# Access query builder
http://192.168.0.130:8081
```

![promlens](images/promlens.png)

* * *

### Gestionnaire d'alertes

![alertmanager](images/alertmanager.png)

Pour plus d’informations sur Alertmanager, accédez à la documentation officielle :  
<https://github.com/prometheus/alertmanager>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## Grafana

* * *

### Grafana Loki

* * *

### Heure de Grafana

* * *

### Alliage Grafana

<p align="right">(<a href="#readme-top">back to top</a>)</p>

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

-   Marcos Sylvestrini -[@mrsilvestrini](https://twitter.com/mrsilvestrini)
-   [marcos.silvestrini@gmail.com](mailto:marcos.silvestrini@gmail.com)

Lien du projet :<https://github.com/marcossilvestrini/kubernetes-observability>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## Remerciements

-   [Prométhée](https://prometheus.io/docs/introduction/overview/)
-   [Configurations Prometheus](https://github.com/alerta/prometheus-config/tree/master/config)
-   [Allocations de ports par défaut de Prometheus](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)
-   [Passerelle Push](https://github.com/prometheus/pushgateway/blob/master/README.md)
-   [Exportateurs](https://prometheus.io/docs/instrumenting/exporters/)
-   [Exportateur de nœuds](https://github.com/prometheus/node_exporter)
-   [Article PromQL](https://www.metricfire.com/blog/getting-started-with-promql/)
-   [Articles sur Prométhée](./README.md)
    -   [Fédération Prométhée](https://www.dbi-services.com/blog/high-availability-and-hierarchical-federation-with-prometheus/)
    -   [Prometheus Monitoring : Le guide définitif en 2019](https://devconnected.com/the-definitive-guide-to-prometheus-in-2019/)
    -   [Découverte du service Prometheus](https://ryanharrison.co.uk/2021/04/05/prometheus-monitoring-guide-part-1-install-instrumentation.html)
    -   [Article sur la pile Kube Prometheus](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

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
