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
-   Graffana Loki

* * *

### Pré-requisitos

-   Sistema Linux ativado
-   Cluster Kubernetes em alta
-   Git

* * *

### Instalação

Clonar o repositório

```sh
git clone https://github.com/marcossilvestrini/kubernetes-observability.git
cd kubernetes-observability || exit
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
-   [ ] Graffana Loki
-   [ ] Outras ferramentas

Veja o[questões em aberto](https://github.com/marcossilvestrini/kubernetes-observability/issues)para obter uma lista completa dos recursos propostos (e problemas conhecidos).

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

* * *

## Gerenciador de alertas

![alertmanager](images/alertmanager.png)

Para mais informações sobre o Alertmanager acesse a documentação oficial:  
<https://github.com/prometheus/alertmanager>

* * *

## Grafana

* * *

## Graffana Loki

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

Link do projeto:<https://github.com/marcossilvestrini/kubernetes-observability>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## Agradecimentos

-   [Prometeu](https://prometheus.io/docs/introduction/overview/)
-   [Pilha Kube Prometheus](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

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
