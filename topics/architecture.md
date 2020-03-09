# [![Home](/img/home.png)](../README.md "Home") | Architecture

This page contains all resources about general architecture topics on Cloud Computing or Azure and helps you to wisely prepare strategies or even challenge the strategies you have already established. You will find abstracted models, technical recommendations, solution designs and much more.

![Architecture](/img/architecture.png)

## Contents
- [Contents](#contents)
    - [Common Resources](#common-resource)
    - [Design](#design)
    - [Comparison](#comparison)
    - [Templates](#templates)
    - [Articles & Guides](#articles-&-guides)
    - [Books](#books)
    - [Sessions](#sessions)

## Common Resources
|                                                                         Title/Link                                                                          | Description                                                                                               | Author               |
| :---------------------------------------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------- | :------------------- |
|                                                  [Azure Services Map](https://aka.ms/azure-services-map/)                                                   | All Azure services with references to its docs.                                                           | Anton Romanov (MSFT) |
|                                      [Azure Architecture Center](https://docs.microsoft.com/en-us/azure/architecture/)                                      | Landing page for everything Azure Architecture.                                                           | Docs                 |
|                             [Azure Application Architecture Guide](https://docs.microsoft.com/en-us/azure/architecture/guide/)                              | Structured approach for designing applications.                                                           | Docs                 |
|                               [Azure Architecture Framework](https://docs.microsoft.com/en-us/azure/architecture/framework/)                                | Guiding tenets that can be used to improve the quality of a workload                                      | Docs                 |
|                                              [Azure Assessment](https://docs.microsoft.com/en-us/assessments/)                                              | Customers can evaluate their business strategies and receive curated guidance from Microsoft Assessments. | MSFT                 |
|                      [Microsoft Cloud Adoption Framework for Azure](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/)                       | The framework gives customers a set of tools, guidance, and narratives.                                   | MSFT                 |
| [Recommended naming and tagging conventions](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging) | Well-defined naming and metadata tagging conventions help to quickly locate and manage resources.         | MSFT                 |

## Design 
|                                                                         Title/Link                                                                         | Description                                                                                                             | Author |
| :--------------------------------------------------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------- | :----- |
| [Choose an Azure compute service for your application](https://docs.microsoft.com/en-us/azure/architecture/guide/technology-choices/compute-decision-tree) | Including a flowchart that will help you to choose a compute service for your application.                              | MSFT   |
|              [Choose the right data store](https://docs.microsoft.com/en-us/azure/architecture/guide/technology-choices/data-store-overview)               | Overview on the different data store and on how to pick the best fit.                                                   | MSFT   |
|    [Overview of load-balancing options in Azure](https://docs.microsoft.com/en-us/azure/architecture/guide/technology-choices/load-balancing-overview)     | Decision tree for load balancing in Azure                                                                               | MSFT   |
|             [Asynchronous messaging options in Azure](https://docs.microsoft.com/en-us/azure/architecture/guide/technology-choices/messaging)              | This article describes the different types of messages and the entities that participate in a messaging infrastructure. | MSFT   |
|                                  [Cloud Design Patterns ](https://docs.microsoft.com/en-us/azure/architecture/patterns/)                                   | Building reliable, scalable, secure applications in the cloud.                                                          | Docs   |


## Comparison 
|                                                    Title/Link                                                     | Description                          | Author      |
| :---------------------------------------------------------------------------------------------------------------: | :----------------------------------- | :---------- |
|       [Azure for AWS Professionals](https://docs.microsoft.com/en-us/azure/architecture/aws-professional/)        | Azure for AWS people.                | Docs        |
| [AWS to Azure services comparison](https://docs.microsoft.com/en-us/azure/architecture/aws-professional/services) | AWS to Azure services comparison     | Docs        |
|                [Google Cloud for Azure professionals](https://cloud.google.com/docs/compare/azure)                | Google Cloud for Azure professionals | Google Docs |

## Templates
|                                                              Title/Link                                                              | Description                                                                                                                | Author |
| :----------------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------------------- | :----- |
| [Architectures - Reference Architectures](https://docs.microsoft.com/en-us/azure/architecture/architectures/reference-architectures) | Recommended architectures for Azure.                                                                                       | MSFT   |
|       [Architectures - Example Workloads](https://docs.microsoft.com/en-us/azure/architecture/architectures/example-workloads)       | Workload examples covering the implementation of specific business or technical challenges using Azure                     | MSFT   |
|              [Architectures - Azure Solution Ideas](https://docs.microsoft.com/en-us/azure/architecture/architectures/)              | Solution ideas with architecture proposal.                                                                                 | MSFT   |
|                            [Managing Azure Blueprints as Code](https://github.com/Azure/azure-blueprints)                            | A library of sample Blueprints that can be easily imported via API or PowerShell                                           | MSFT   |
|                           [Code Samples](https://docs.microsoft.com/en-us/samples/browse/?products=azure)                            | This doc provides seamless samples to developer tools and technologies offering from Microsoft.                            | MSFT   |
|                         [Azure Quickstart Templates](https://azure.microsoft.com/en-us/resources/templates/)                         | With this resource, you would get access to community contributed templates that empowers you to get more done in no time. | MSFT   |

## Articles & Guides 
|                                                                                          Title/Link                                                                                           | Description                                                                                                                                                              | Author                   |
| :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------- |
|             [Is Public Cloud Cheaper Than Running Your Own Data Center?](https://blogs.gartner.com/marco-meinardi/2018/11/30/public-cloud-cheaper-than-running-your-data-center/)             | Great guide about TCO calculation for Cloud in general.                                                                                                                  | Marco Meinardi (Gartner) |
|                                  [Your Cloud Journeys is Unique, but Not Unknown](https://securosis.com/blog/your-cloud-journeys-is-unique-but-not-unknown)                                   | “Network Operations and Security Professionals’ Guide to Managing Public Cloud Journeys” pt.1                                                                            | Rich Mogull              |
|                           [Defining the Journey—the Four Cloud Adoption Patterns](https://securosis.com/blog/defining-the-journey-the-four-cloud-adoption-patterns)                           | “Network Operations and Security Professionals’ Guide to Managing Public Cloud Journeys” pt.2                                                                            | Rich Mogull              |
| [Mastering the Journey—Building Network Manageability and Security for your Path](https://securosis.com/blog/mastering-the-journey-building-network-manageability-and-security-for-your-path) | “Network Operations and Security Professionals’ Guide to Managing Public Cloud Journeys” pt.3                                                                            | Rich Mogull              |
|                    [Introduction - Moving to Cloud, but with a real Strategy — part 1](https://www.linkedin.com/pulse/moving-cloud-real-strategy-part-1-david-das-neves/)                     | Typical errors from customers moving to the Cloud.                                                                                                                       | David das Neves          |
|              [Introduction - Moving to Cloud, but with a real Strategy — part 2](https://www.linkedin.com/pulse/introduction-moving-cloud-real-strategy-part-2-david-das-neves/)              | This article provides a crash-course on what a good strategy and vision should contain.                                                                                  | David das Neves          |
|                            [Overarching IT Architecture & Roadmap](https://www.linkedin.com/pulse/introduction-moving-cloud-real-strategy-part-2-david-das-neves/)                            | IT Infrastructure Architecture from a CIO point of view for an Enterprise company and demonstrate the necessity for an Overarching IT Architecture, including a Roadmap. | David das Neves          |

## Sessions
|                                                Title/Link                                                | Description                                                                                   | Author       |
| :------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------- | :----------- |
| [Set Up Microsoft Visio for Azure Architecture Diagramming](https://www.youtube.com/watch?v=UjPZAC1AbKc) | In this lesson Tim demonstrates how to set up Visio for creating Azure architecture drawings. | Tim Warner   |
|  [The Architect Elevator: Connecting Penthouse and Engine](https://www.youtube.com/watch?v=Zq2VcRZmz78)  | What is actually the work of an IT Architect and what are the challenges?                     | Gregor Hohpe |

## Books
|                                      Title/Link                                       | Description                                               | Author       |
| :-----------------------------------------------------------------------------------: | :-------------------------------------------------------- | :----------- |
| [37 Things One Architect Knows About IT Transformation](https://leanpub.com/37things) | A Chief Architect's Journey                               | Gregor Hohpe |
|                  [Cloud Strategy](https://leanpub.com/cloudstrategy)                  | An Architect Elevator Guide to Successful Cloud Migration | Gregor Hohpe |

___
 <a href="#top" title="Back to the top.">↑Top</a>