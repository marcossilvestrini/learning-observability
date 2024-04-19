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

## حول المشروع

هذا المشروع مخصص للتعرف على إمكانية ملاحظة kubernetes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

### بنيت مع

-   [![Github][Github-badge]][Github-url]
-   [![GNULinux][GNULinux-badge]][GNULinux-url]
-   [![Windows][Windows-badge]][Windows-url]
-   [![Bash][Bash-badge]][Bash-url]
-   [![Powershell][Powershell-badge]][Powershell-url]
-   [![Kubernetes][Kubernetes-badge]][Kubernetes-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- GETTING STARTED -->

## ابدء

يهدف هذا المشروع إلى البدء باستخدام أدوات مراقبة kubernetes وأفضل الممارسات.

بعض أدوات التعلم:

-   بروميثيوس
-   مدير التنبيه
-   جرافانا
-   جرافانا لوكي

* * *

### المتطلبات الأساسية

-   رفع نظام لينكس
-   مجموعة Kubernetes لأعلى
-   شخص سخيف

* * *

### تثبيت

استنساخ الريبو

```sh
git clone https://github.com/marcossilvestrini/kubernetes-observability.git
cd kubernetes-observability || exit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- USAGE EXAMPLES -->

## الاستخدام

أنشر بعض الأمثلة لاستخدامها في هذا المستودع.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ROADMAP -->

## خريطة الطريق

-   [x] إنشاء مستودع
-   [ ] بروميثيوس
-   [ ] مدير التنبيه
-   [ ] جرافانا
-   [ ] جرافانا لوكي
-   [ ] أدوات أخرى

انظر[القضايا المفتوحة](https://github.com/marcossilvestrini/kubernetes-observability/issues)للحصول على قائمة كاملة بالميزات المقترحة (والمشكلات المعروفة).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

## بروميثيوس

![prometheus](images/prometheus.png)

Prometheus عبارة عن مجموعة أدوات مراقبة وتنبيه للأنظمة مفتوحة المصدر تم إنشاؤها في الأصل على SoundCloud.

منذ إنشائه في عام 2012، اعتمدت العديد من الشركات والمنظمات بروميثيوس، ويمتلك المشروع مجتمع مطورين ومستخدمين نشطين للغاية.

يتكون نظام بروميثيوس البيئي من مكونات متعددة، الكثير منها اختياري:

-   خادم بروميثيوس الرئيسي الذي يقوم بجمع وتخزين بيانات السلاسل الزمنية
-   مكتبات العملاء لأدوات رمز التطبيق
-   بوابة دفع لدعم الوظائف قصيرة الأجل
-   المصدرون لأغراض خاصة لخدمات مثل HAProxy وStatsD وGraphite وما إلى ذلك.
-   مدير التنبيهات للتعامل مع التنبيهات
-   أدوات الدعم المختلفة

لمزيد من المعلومات حول الوصول إلى الوثائق الرسمية لبروميثيوس:  
[هتبص://بروميثيوس.إيه/دكس/انطردكت/فرفو/](https://prometheus.io/docs/introduction/overview/)

* * *

## مدير التنبيه

![alertmanager](images/alertmanager.png)

لمزيد من المعلومات حول الوثائق الرسمية للوصول إلى Alertmanager:  
[هتبص://جذب.كوم/بروميثيوس/الارتمانجر](https://github.com/prometheus/alertmanager)

* * *

## جرافانا

* * *

## جرافانا لوكي

* * *

<!-- CONTRIBUTING -->

## المساهمة

المساهمات هي ما يجعل مجتمع المصادر المفتوحة مكانًا رائعًا للتعلم والإلهام والإبداع. أي مساهمات تقدمها هي**اقدر هذا جدا**.

إذا كان لديك اقتراح من شأنه أن يجعل هذا الأمر أفضل، فيرجى شوكة الريبو وإنشاء طلب سحب. يمكنك أيضًا ببساطة فتح مشكلة بالعلامة "التحسين".
لا تنس أن تعطي المشروع نجمة! شكرًا لك مرة أخرى!

1.  شوكة المشروع
2.  قم بإنشاء فرع الميزات الخاص بك (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  ادفع إلى الفرع (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- LICENSE -->

## رخصة

وزعت بموجب ترخيص معهد ماساتشوستس للتكنولوجيا. يرى[`LICENSE`](LICENSE)للمزيد من المعلومات.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- CONTACT -->

## اتصال

-   ماركوس سيلفستريني -[@mrsilvestrini](https://twitter.com/mrsilvestrini)
-   [ماركوس.سيلفسترن@جميل.كوم](mailto:marcos.silvestrini@gmail.com)

رابط المشروع:[هتبص://جذب.كوم/ماركسيلفصترن/كوبرنتصبصرفبلت](https://github.com/marcossilvestrini/kubernetes-observability)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

* * *

<!-- ACKNOWLEDGMENTS -->

## شكر وتقدير

-   [بروميثيوس](https://prometheus.io/docs/introduction/overview/)
-   [كوبي بروميثيوس ستاك](https://www.kubecost.com/kubernetes-devops-tools/kube-prometheus/)

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
