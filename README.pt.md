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

[![Create Release](https://github.com/marcossilvestrini/learning-observability/actions/workflows/release.yml/badge.svg)](https://github.com/marcossilvestrini/learning-observability/actions/workflows/release.yml)[![Generate HTML](https://github.com/marcossilvestrini/learning-observability/actions/workflows/generate-html.yml/badge.svg)](https://github.com/marcossilvestrini/learning-observability/actions/workflows/generate-html.yml)[![Slack Notification](https://github.com/marcossilvestrini/learning-observability/actions/workflows/slack.yml/badge.svg)](https://github.com/marcossilvestrini/learning-observability/actions/workflows/slack.yml)

[![Contributors][contributors-shield]][contributors-url][![Forks][forks-shield]][forks-url][![Stargazers][stars-shield]][stars-url][![Issues][issues-shield]][issues-url][![MIT License][license-shield]][license-url][![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->

<br />
<div align="center">
  <a href="https://github.com/marcossilvestrini/learning-observability">
    <img src="images/observability.png" alt="observability">
  </a>

<h3 align="center">Learning Observability</h3>

  <p align="center">
    Project for learning about Learning Observability.
    <br />
    <a href="https://github.com/marcossilvestrini/learning-observability"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://marcossilvestrini.github.io/learning-observability">Project Page</a>
    -
    <a href="https://github.com/marcossilvestrini/learning-observability/issues">Report Bug</a>
    -
    <a href="https://github.com/marcossilvestrini/learning-observability/issues">Request Feature</a>
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

## Sobre o projeto

Este projeto é para aprender sobre a observabilidade do Kubernetes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

### Construído com

-   [![Github][Github-badge]][Github-url]
-   [![GNULinux][GNULinux-badge]][GNULinux-url]
-   [![Windows][Windows-badge]][Windows-url]
-   [![Bash][Bash-badge]][Bash-url]
-   [![Powershell][Powershell-badge]][Powershell-url]
-   [![Kubernetes][Kubernetes-badge]][Kubernetes-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- GETTING STARTED -->

## Começando

Este projeto é para começar a usar ferramentas e práticas recomendadas de observabilidade do Kubernetes.

Algumas ferramentas para aprender:

-   Prometeu
-   Gerenciador de alertas
-   Grafana
-   Grafana Loki
-   Grafana Tempo

* * *

### Pré-requisitos

-   Sistema Linux ativado
-   Cluster Kubernetes em alta
-   Git

* * *

### Instalação

Clonar o repositório

```sh
git clone https://github.com/marcossilvestrini/learning-observability.git
cd learning-observability || exit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- USAGE EXAMPLES -->

## Uso

Publico alguns exemplos para uso neste repositório.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ROADMAP -->

## Roteiro

-   [x] Criar repositório
-   [ ] Prometeu
-   [ ] Gerenciador de alertas
-   [ ] Grafana
-   [ ] Grafana Loki
-   [ ] Grafana Tempo
-   [ ] Liga Grafana
-   [ ] Outras ferramentas

Veja o[questões em aberto](https://github.com/marcossilvestrini/learning-observability/issues)para obter uma lista completa dos recursos propostos (e problemas conhecidos).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## Prometeu

![prometheus](images/prometheus.png)

Prometheus é um kit de ferramentas de alerta e monitoramento de sistemas de código aberto originalmente desenvolvido no SoundCloud.

Desde a sua criação em 2012, muitas empresas e organizações adotaram o Prometheus, e o projeto tem uma comunidade de desenvolvedores e usuários muito ativa.

O ecossistema Prometheus consiste em vários componentes, muitos dos quais são opcionais:

-   o principal servidor Prometheus que coleta e armazena dados de séries temporais
-   bibliotecas de cliente para instrumentação de código de aplicativo
-   um gateway push para apoiar empregos de curta duração
-   exportadores para fins especiais de serviços como HAProxy, StatsD, Graphite, etc.
-   um gerenciador de alertas para lidar com alertas
-   diversas ferramentas de suporte

Para mais informações sobre o Prometheus acesse a documentação oficial:  
<https://prometheus.io/docs/introduction/overview/>

### Nomes e rótulos de métricas

**Exemplo de nome de métrica:**

```yaml
<metric name>{<label name>=<label value>, ...}
```

**Exemplo de nome de métrica com rótulos:**

```yaml
api_http_requests_total{method="POST", handler="/messages"}
```

### Tipos de métricas

![Metrics Type](images/metrics_type.png)

**[Contador](https://prometheus.io/docs/concepts/metric_types/#counter)**– aceita e armazena apenas os valores que aumentarão com o tempo.  
**[Medidor](https://prometheus.io/docs/concepts/metric_types/#gauge)**– armazena os valores que podem assumir valores diferentes, que podem aumentar e diminuir.  
**[Histograma](https://prometheus.io/docs/concepts/metric_types/#histogram)**– coleta amostras de observações (geralmente coisas como durações de solicitações ou tamanhos de respostas) e as conta em intervalos configuráveis. Também fornece uma soma de todos os valores observados, permitindo calcular médias.  
**[Resumo](https://prometheus.io/docs/concepts/metric_types/#histogram)**– histograma com representação mais detalhada dos dados utilizando estatísticas adicionais (quantis).

### Empregos e instâncias

![Jobs](images/jobs_instances.png)

Nos termos do Prometheus, um endpoint que você pode raspar é chamado de instância, geralmente correspondendo a um único processo.  
Uma coleção de instâncias com a mesma finalidade, um processo replicado para escalabilidade ou confiabilidade, por exemplo, é chamada de trabalho.

### Especificação de gravação remota do Prometheus

O protocolo de gravação remota foi projetado para possibilitar a propagação confiável de amostras em tempo real de um remetente para um destinatário, sem perdas.

-   um "Remetente" é algo que envia dados de gravação remota do Prometheus.
-   um "Receptor" é algo que recebe dados de gravação remota do Prometheus.
-   uma "amostra" é um par de (timestamp, valor).
-   um "Rótulo" é um par de (chave, valor).
-   uma "Série" é uma lista de amostras, identificadas por um conjunto exclusivo de rótulos.

#### Remetentes e destinatários compatíveis

A especificação pretende descrever como os seguintes componentes interagem:

-   Prometeu (como "remetente" e "receptor")
-   Avalanche (como um "remetente") - Uma ferramenta de teste de carga Prometheus Metrics.
-   Cortex (como um "receptor")
-   Agente Elástico (como um "receptor")
-   Agente Grafana (como "remetente" e "destinatário")
-   GreptimeDB (como um "receptor")
-   Agente Telegraf da InfluxData. (como remetente e como destinatário)
-   M3 (como um "receptor")
-   Mimir (como um "receptor")
-   OpenTelemetry Collector (como "remetente" e eventualmente como "receptor")
-   Thanos (como um "receptor")
-   Vetor (como "remetente" e "destinatário")
-   VictoriaMetrics (como um "receptor")

### [Lavado](https://prometheus.io/docs/prometheus/latest/querying/basics/)

![promql](images/promql.png)

O Prometheus fornece uma linguagem de consulta funcional chamada PromQL (Prometheus Query Language) que permite ao usuário selecionar e agregar dados de séries temporais em tempo real.  
O resultado de uma expressão pode ser mostrado como um gráfico, visualizado como dados tabulares no navegador de expressões do Prometheus ou consumido por sistemas externos por meio da API HTTP.

[Exemplos de consulta](https://prometheus.io/docs/prometheus/latest/querying/examples/)

### [Federação](https://prometheus.io/docs/prometheus/latest/federation/#federation)

![federation](images/federation.png)

A federação permite que um servidor Prometheus extraia séries temporais selecionadas de outro servidor Prometheus.

#### Federação Hierárquica

A federação hierárquica permite que o Prometheus seja dimensionado para ambientes com dezenas de data centers e milhões de nós.

Nesse caso de uso, a topologia de federação se assemelha a uma árvore, com servidores Prometheus de nível superior coletando dados agregados de séries temporais de um número maior de servidores subordinados.

Isso significa que temos servidores Prometheus maiores que coletam dados de séries temporais de servidores menores. Temos uma abordagem de cima para baixo, onde os dados são coletados em diferentes níveis.

![federation-hierarchical](images/federation-hierarchical.png)

#### Federação entre serviços

Este método envolve um servidor Prometheus monitorando um determinado serviço ou grupo de serviços, coletando dados de série temporal específicos de outro servidor que está monitorando um conjunto diferente de serviços.

Por exemplo, um agendador de cluster que executa vários serviços pode expor informações de uso de recursos (como uso de memória e CPU) sobre instâncias de serviço em execução no cluster.

Por outro lado, um serviço em execução nesse cluster exporá apenas métricas de serviço específicas do aplicativo.

Freqüentemente, esses dois conjuntos de métricas são coletados por servidores Prometheus separados. Usando a federação, o servidor Prometheus que contém métricas de nível de serviço pode extrair as métricas de uso de recursos do cluster sobre seu serviço específico do cluster Prometheus, para que ambos os conjuntos de métricas possam ser usados ​​nesse servidor.

Ao fazer isso, podemos executar consultas e alertas nos dados mesclados de ambos os servidores.

![cross-service-federation](images/cross-service-federation.png)

### Descoberta de serviço HTTP

![http_sd](images/http_sd.png)

O Prometheus fornece uma descoberta de serviço HTTP genérica, que permite descobrir alvos em um endpoint HTTP.

A descoberta de serviço HTTP é complementar aos mecanismos de descoberta de serviço suportados e é uma alternativa à descoberta de serviço baseada em arquivo.

-   static_configs não é escalonável para ambientes mais dinâmicos onde instâncias são adicionadas/removidas com frequência
-   O Prometheus pode ser integrado a mecanismos de descoberta de serviço para atualizar automaticamente sua visão das instâncias em execução
    -   quando novas instâncias são adicionadas, o Prometheus começará a ser copiado; quando perdida na descoberta, a série temporal também será removida
    -   integrações integradas com Consul, Azure, AWS ou baseadas em arquivo, se necessário, mecanismo personalizado
-   O arquivo JSON/YAML pode ser publicado pela plataforma especificando todos os alvos dos quais extrair. Prometheus o usa para atualizar alvos automaticamente

#### Exemplo usando http sd_file

![http_file_sd](images/http_file_sd.png)

prometheus.yaml para descartar os serviços no destino http_sd.json

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

### Instale o Prometheus

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

### Configurar o Prometheus

Veja meu arquivo de configuração[prometheus.yaml](./prometheus/configs/prometheus_1.yml)

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

### Inicie o Prometeu

```sh
# Start
./prometheus --config.file=prometheus.yml

# Start with PM2 - npm install pm2@latest -g
pm2 start prometheus --name prometheus-server -- --config.file=prometheus.yml
```

### Pontos finais importantes

```sh
http://localhost:9090 # all endpoints
http://localhost:9090/graph # PromQL expressions
http://localhost:9090/metrics # metrics
http://localhost:9090/targets # scrape_configs jobs
```

### Usando o navegador de expressões

Você pode usar a expressão no modo Tabela ou Gráfico.

Abra a página http&#x3A;//localhost:9090

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

### Prometheus Exportadores

Um exportador é um binário executado junto com o aplicativo do qual você deseja obter métricas.  
O exportador expõe métricas do Prometheus, geralmente convertendo métricas expostas em um formato não Prometheus em um formato compatível com o Prometheus.

#### Exportador de nós

O Prometheus Node Exporter expõe uma ampla variedade de métricas relacionadas a hardware e kernel.

##### Exportador de nó de instalação

```sh
# Download - https://prometheus.io/download#node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

# Extract
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
```

##### Iniciar exportador de nós

```sh
# Start
./node_exporter

# Start with PM2 - npm install pm2@latest -g
pm2 start node_exporter --name node_exporter
```

##### Exportador de nós de endpoints

```sh
# Access metrics
http://localhost:9100/metrics
```

##### Configurar exportador de nós

Para ativar o scrap para o exportador de nós, você pode configurar o prometheus.

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

Reinicie o serviço Prometheus para aplicar um novo trabalho.

* * *

### PushGateway

O Prometheus Pushgateway é um serviço intermediário que permite que trabalhos efêmeros e em lote exponham suas métricas ao Prometheus.  
Como esses tipos de trabalhos podem não existir por tempo suficiente para serem eliminados, eles podem, em vez disso, enviar suas métricas para um Pushgateway.  
O Pushgateway atua então como um armazenamento temporário de métricas que o Prometheus coleta.

Essa configuração é particularmente útil para capturar o resultado de uma tarefa que não é executada continuamente, como uma tarefa em lote em um sistema de CI ou um script de backup em execução em um horário agendado.  
Ele simplifica o monitoramento desses tipos de trabalhos sem a necessidade de executar uma instância do Prometheus de longa duração que pode sobreviver aos próprios trabalhos.

#### Instale o PushGateway

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

#### Crie métricas para teste pushgateway

```sh
echo 'training_completion{course="CKA", status="complete"} 1' > metrics.txt
echo 'training_completion{course="CKS", status="in_progress"} 0.5' >> metrics.txt
echo 'training_completion{course="LPIC2", status="not_started"} 0' >> metrics.txt
curl --data-binary @metrics.txt http://192.168.0.130:9091/metrics/job/training_metrics
```

##### Pontos de extremidade PushGateway

```sh
# Access metrics
http://localhost:9091
```

#### Use PromQL para encontrar o alvo do pushgateway de métricas

![promql-pushgateway](images/promql-pushgateway.png)

### Promlens

#### Instalar Promlens

_Funciona apenas sem autenticação básica_

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

#### Pontos de extremidade do Promlens

```sh
# Access query builder
http://192.168.0.130:8081
```

![promlens](images/promlens.png)

* * *

### Gerenciador de alertas

![alertmanager](images/alertmanager.png)

Para mais informações sobre o Alertmanager acesse a documentação oficial:  
<https://github.com/prometheus/alertmanager>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## Grafana

* * *

### Grafana Loki

* * *

### Grafana Tempo

* * *

### Liga Grafana

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTRIBUTING -->

## Contribuindo

As contribuições são o que tornam a comunidade de código aberto um lugar incrível para aprender, inspirar e criar. Qualquer contribuição que você fizer será**muito apreciado**.

Se você tiver uma sugestão que possa melhorar isso, bifurque o repositório e crie uma solicitação pull. Você também pode simplesmente abrir um problema com a tag “aprimoramento”.
Não se esqueça de dar uma estrela ao projeto! Obrigado novamente!

1.  Bifurque o projeto
2.  Crie sua ramificação de recursos (`git checkout -b feature/AmazingFeature`)
3.  Confirme suas alterações (`git commit -m 'Add some AmazingFeature'`)
4.  Empurre para a filial (`git push origin feature/AmazingFeature`)
5.  Abra uma solicitação pull

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- LICENSE -->

## Licença

Distribuído sob a licença MIT. Ver[`LICENSE`](LICENSE)Para maiores informações.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTACT -->

## Contato

-   Marcos Silvestrini -[@mrsilvestrini](https://twitter.com/mrsilvestrini)
-   [marcos.silvestrini@gmail.com](mailto:marcos.silvestrini@gmail.com)

Link do projeto:<https://github.com/marcossilvestrini/learning-observability>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## Agradecimentos

-   [Prometeu](https://prometheus.io/docs/introduction/overview/)
-   [Configurações do Prometheus](https://github.com/alerta/prometheus-config/tree/master/config)
-   [Alocações de porta padrão do Prometheus](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)
-   [Pushgateway](https://github.com/prometheus/pushgateway/blob/master/README.md)
-   [Exportadores](https://prometheus.io/docs/instrumenting/exporters/)
-   [Exportador de nós](https://github.com/prometheus/node_exporter)
-   [Artigo PromQL](https://www.metricfire.com/blog/getting-started-with-promql/)
-   [Artigos do Prometeu](./README.md)
    -   [Federação Prometeu](https://www.dbi-services.com/blog/high-availability-and-hierarchical-federation-with-prometheus/)
    -   [Monitoramento Prometheus: o guia definitivo em 2019](https://devconnected.com/the-definitive-guide-to-prometheus-in-2019/)
    -   [Descoberta de serviço Prometheus](https://ryanharrison.co.uk/2021/04/05/prometheus-monitoring-guide-part-1-install-instrumentation.html)
    -   [Artigo da pilha Kube Prometheus](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/marcossilvestrini/learning-observability.svg?style=for-the-badge

[contributors-url]: https://github.com/marcossilvestrini/learning-observability/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/marcossilvestrini/learning-observability.svg?style=for-the-badge

[forks-url]: https://github.com/marcossilvestrini/learning-observability/network/members

[stars-shield]: https://img.shields.io/github/stars/marcossilvestrini/learning-observability.svg?style=for-the-badge

[stars-url]: https://github.com/marcossilvestrini/learning-observability/stargazers

[issues-shield]: https://img.shields.io/github/issues/marcossilvestrini/learning-observability.svg?style=for-the-badge

[issues-url]: https://github.com/marcossilvestrini/learning-observability/issues

[license-shield]: https://img.shields.io/github/license/marcossilvestrini/learning-observability.svg?style=for-the-badge

[license-url]: https://github.com/marcossilvestrini/learning-observability/blob/master/LICENSE

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
