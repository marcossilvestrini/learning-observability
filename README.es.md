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

## Sobre el proyecto

Este proyecto es para aprender sobre la observabilidad de Kubernetes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

### Construido con

-   [![Github][Github-badge]][Github-url]
-   [![GNULinux][GNULinux-badge]][GNULinux-url]
-   [![Windows][Windows-badge]][Windows-url]
-   [![Bash][Bash-badge]][Bash-url]
-   [![Powershell][Powershell-badge]][Powershell-url]
-   [![Kubernetes][Kubernetes-badge]][Kubernetes-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- GETTING STARTED -->

## Empezando

Este proyecto es para comenzar con las mejores prácticas y herramientas de observabilidad de Kubernetes.

Algunas herramientas para aprender:

-   Prometeo
-   Administrador de alertas
-   Grafana
-   Graffana Loki
-   Hora de Grafana
-   Aleación de Grafana

* * *

### Requisitos previos

-   Sistema Linux arriba
-   Clúster Kubernetes arriba
-   git

* * *

### Instalación

Clonar el repositorio

```sh
git clone https://github.com/marcossilvestrini/kubernetes-observability.git
cd kubernetes-observability || exit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- USAGE EXAMPLES -->

## Uso

Publico algunos ejemplos para su uso en este repositorio.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ROADMAP -->

## Mapa vial

-   [x] Crear repositorio
-   [ ] Prometeo
-   [ ] Administrador de alertas
-   [ ] Grafana
-   [ ] Graffana Loki
-   [ ] Hora de Grafana
-   [ ] Aleación de Grafana
-   [ ] Otras herramientas

Ver el[problemas abiertos](https://github.com/marcossilvestrini/kubernetes-observability/issues)para obtener una lista completa de las características propuestas (y problemas conocidos).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## Prometeo

![prometheus](images/prometheus.png)

Prometheus es un conjunto de herramientas de alerta y monitoreo de sistemas de código abierto creado originalmente en SoundCloud.

Desde su inicio en 2012, muchas empresas y organizaciones han adoptado Prometheus y el proyecto cuenta con una comunidad de desarrolladores y usuarios muy activa.

El ecosistema Prometheus consta de múltiples componentes, muchos de los cuales son opcionales:

-   el servidor principal de Prometheus que extrae y almacena datos de series de tiempo
-   Bibliotecas cliente para instrumentar el código de la aplicación.
-   una puerta de enlace push para respaldar trabajos de corta duración
-   exportadores de propósito especial para servicios como HAProxy, StatsD, Graphite, etc.
-   un administrador de alertas para manejar alertas
-   varias herramientas de apoyo

### Nombres y etiquetas de métricas

**Nombre de métrica de ejemplo:**

```yaml
<metric name>{<label name>=<label value>, ...}
```

**Ejemplo de nombre de métrica con etiquetas:**

```yaml
api_http_requests_total{method="POST", handler="/messages"}
```

Para más información sobre Prometheus acceda a la documentación oficial:  
<https://prometheus.io/docs/introduction/overview/>

### Tipos de métricas

![Metrics Type](images/metrics_type.png)

**[Encimera](https://prometheus.io/docs/concepts/metric_types/#counter)**– acepta y almacena sólo aquellos valores que aumentarán con el tiempo.  
**[Indicador](https://prometheus.io/docs/concepts/metric_types/#gauge)**– almacena los valores que pueden tomar diferentes valores, que pueden tanto aumentar como disminuir.  
**[histograma](https://prometheus.io/docs/concepts/metric_types/#histogram)**– toma muestras de observaciones (generalmente cosas como duraciones de solicitudes o tamaños de respuestas) y las cuenta en grupos configurables. También proporciona una suma de todos los valores observados, lo que le permite calcular promedios.  
**[Resumen](https://prometheus.io/docs/concepts/metric_types/#histogram)**– histograma con una representación de datos más detallada utilizando estadísticas adicionales (cuantiles).

### Trabajos e instancias

![Jobs](images/jobs_instances.png)

En términos de Prometheus, un punto final que puede eliminar se denomina instancia y generalmente corresponde a un único proceso.  
Una colección de instancias con el mismo propósito, por ejemplo un proceso replicado para lograr escalabilidad o confiabilidad, se denomina trabajo.

### Especificación de escritura remota de Prometheus

El protocolo de escritura remota está diseñado para permitir la propagación confiable de muestras en tiempo real desde un remitente a un receptor, sin pérdidas.

-   un "Remitente" es algo que envía datos de escritura remota de Prometheus.
-   un "Receptor" es algo que recibe datos de escritura remota de Prometheus.
-   una "Muestra" es un par de (marca de tiempo, valor).
-   una "Etiqueta" es un par de (clave, valor).
-   una "Serie" es una lista de muestras, identificadas por un conjunto único de etiquetas.

#### Remitentes y receptores compatibles

La especificación pretende describir cómo interactúan los siguientes componentes:

-   Prometeo (como "remitente" y "receptor")
-   Avalanche (como "remitente"): una herramienta de prueba de carga Métricas de Prometheus.
-   Corteza (como "receptor")
-   Agente elástico (como "receptor")
-   Agente de Grafana (como "remitente" y "receptor")
-   GreptimeDB (como "receptor")
-   Agente Telegraf de InfluxData. (como remitente y como receptor)
-   M3 (como "receptor")
-   Mimir (como "receptor")
-   OpenTelemetry Collector (como "remitente" y eventualmente como "receptor")
-   Thanos (como "receptor")
-   Vector (como "remitente" y "receptor")
-   VictoriaMetrics (como "receptor")

### Instalar Prometeo

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

### Configurar Prometeo

Ver mi archivo de configuración[prometheus.yaml](./prometheus/configs/prometheus.yml)

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

### Iniciar Prometeo

```sh
# Start
./prometheus --config.file=prometheus.yml

# Start with PM2 - npm install pm2@latest -g
pm2 start prometheus --name prometheus-server -- --config.file=prometheus.yml
```

### Puntos finales importantes

```sh
http://localhost:9090 # all endpoints
http://localhost:9090/graph # PromQL expressions
http://localhost:9090/metrics # metrics
http://localhost:9090/targets # scrape_configs jobs
```

### Usando el navegador de expresiones

Puede utilizar la expresión en modo Tabla o Gráfico.

Abra la página http&#x3A;//localhost:9090

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

### Exportadores de Prometeo

Un exportador es un binario que se ejecuta junto con la aplicación de la que desea obtener métricas.  
El exportador expone las métricas de Prometheus, normalmente convirtiendo las métricas que se exponen en un formato que no es de Prometheus a un formato compatible con Prometheus.

#### Exportador de nodos

Prometheus Node Exporter expone una amplia variedad de métricas relacionadas con el hardware y el kernel.

##### Exportador de nodos de instalación

```sh
# Download - https://prometheus.io/download#node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

# Extract
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
```

##### Iniciar exportador de nodos

```sh
# Start
./node_exporter

# Start with PM2 - npm install pm2@latest -g
pm2 start node_exporter --name node_exporter
```

##### Exportador de nodos de terminales

```sh
# Access metrics
http://localhost:9100/metrics
```

##### Configurar el exportador de nodos

Para habilitar la chatarra para el exportador de nodos, puede configurar Prometheus.

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

Reinicie el servicio Prometheus para solicitar un nuevo trabajo.

* * *

### PushGateway

Prometheus Pushgateway es un servicio intermediario que permite que trabajos efímeros y por lotes expongan sus métricas a Prometheus.  
Dado que es posible que este tipo de trabajos no existan el tiempo suficiente para ser eliminados, en su lugar pueden llevar sus métricas a un Pushgateway.  
Luego, Pushgateway actúa como un almacén de métricas temporal que Prometheus extrae.

Esta configuración es particularmente útil para capturar el resultado de un trabajo que no se ejecuta continuamente, como un trabajo por lotes en un sistema CI o un script de respaldo que se ejecuta a una hora programada.  
Simplifica el monitoreo de este tipo de trabajos sin necesidad de ejecutar una instancia de Prometheus de larga duración que podría sobrevivir a los trabajos en sí.

#### Instalar PushGateway

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

#### Configurar PushGateway

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

#### Crear métricas para la puerta de enlace de prueba

```sh
echo 'training_completion{course="CKA", status="complete"} 1' > metrics.txt
echo 'training_completion{course="CKS", status="in_progress"} 0.5' >> metrics.txt
echo 'training_completion{course="LPIC2", status="not_started"} 0' >> metrics.txt
curl --data-binary @metrics.txt http://192.168.0.130:9091/metrics/job/training_metrics
```

##### Puerta de enlace de puntos finales

```sh
# Access metrics
http://localhost:9091
```

#### Utilice PromQL para encontrar el objetivo de pushgateway de métricas

![promql-pushgateway](images/promql-pushgateway.png)

* * *

### Administrador de alertas

![alertmanager](images/alertmanager.png)

Para más información sobre Alertmanager acceda a la documentación oficial:  
<https://github.com/prometheus/alertmanager>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## Grafana

* * *

### Graffana Loki

* * *

### Hora de Grafana

* * *

### Aleación de Grafana

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTRIBUTING -->

## Contribuyendo

Las contribuciones son las que hacen de la comunidad de código abierto un lugar increíble para aprender, inspirar y crear. Cualquier contribución que hagas es**apreciado enormemente**.

Si tiene alguna sugerencia que pueda mejorar esto, bifurque el repositorio y cree una solicitud de extracción. También puedes simplemente abrir un problema con la etiqueta "mejora".
¡No olvides darle una estrella al proyecto! ¡Gracias de nuevo!

1.  Bifurcar el proyecto
2.  Crea tu rama de funciones (`git checkout -b feature/AmazingFeature`)
3.  Confirme sus cambios (`git commit -m 'Add some AmazingFeature'`)
4.  Empujar a la rama (`git push origin feature/AmazingFeature`)
5.  Abrir una solicitud de extracción

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- LICENSE -->

## Licencia

Distribuido bajo la licencia MIT. Ver[`LICENSE`](LICENSE)para más información.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTACT -->

## Contacto

-   Marcos Silvestrini -[@mrsilvestrini](https://twitter.com/mrsilvestrini)
-   [marcos.silvestrini@gmail.com](mailto:marcos.silvestrini@gmail.com)

Enlace del proyecto:<https://github.com/marcossilvestrini/kubernetes-observability>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## Expresiones de gratitud

-   [Prometeo](https://prometheus.io/docs/introduction/overview/)
-   [Asignaciones de puertos predeterminadas de Prometheus](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)
-   [puerta de enlace](https://github.com/prometheus/pushgateway/blob/master/README.md)
-   [Exportadores](https://prometheus.io/docs/instrumenting/exporters/)
-   [Exportador de nodos](https://github.com/prometheus/node_exporter)
-   [Artículo de PromQL](https://www.metricfire.com/blog/getting-started-with-promql/)
-   Artículos de Prometeo
    -   <https://devconnected.com/the-definitive-guide-to-prometheus-in-2019/>
-   [Artículo de la pila Kube Prometheus](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

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
