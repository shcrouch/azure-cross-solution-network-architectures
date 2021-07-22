# appdev-database-networking

This is a repo of cross solution network connectivity designs with Azure PaaS services and on-premise connectivity. The goal is to create a reusable reference architectures and content based on real world examples based out of working with partners and collaborating with cross solution CSAs. This repo will contain downloadable artifacts like visios, postman collections and test applications for various designs. Learn about tools of trades from various SME CSAs to validate designs,connectivity, view application and traffic flows.

# Cross Solution Network Architectures

1. [Azure Database Services](database-services/README.md)

   - [SQL Managed Instance (Single Region and Multi region with Replication)](database-services/README.md)
   - Azure Data Factory(ADF) Managed VNET,Private Endpoints and Integration Runtime (IR)
   - Azure SQL Database
   - Azure Syanpse
   - OSS databases - mysql and postgres

2. [Azure API Management(APIM)](apim/README.md)

   - [External network mode](apim/README.md)
   - [Securing APIM with Internal network mode(apim/README.md) and application gateway](apim/README.md)
   - [Self hosted gateway](apim/README.md)
   - [Azure Private DNS Zones integration](apim/README.md)
   - APIM Custom Domain
   - APIM with Azure firewall/NVA
   - APIM Multi-region Architecture
   - APIM AAD and B2C Integration

3. [Azure Kubernetes Services (AKS)](aks/README.md)

   - Docker Networking
   - [Basic/Kubenet Networking](aks/README-kubenet.md)
   - [Advanced/Azure CNI Networking](aks/README-advanced.md)
   - [AKS Private Cluster](aks/README-private-cluster.md)
   - [AKS Ingress Controllers](aks/README-ingress-controllers.md)
   - [AKS Private Cluster with Azure Front Door](https://github.com/nehalineogi/aks-private-cluster-with-afd-premium)
   - Ingress Controllers
     - [AKS nginx ingress controller](https://github.com/nehalineogi/aks-nginx-ingress)
     - [AKS Application gateway as ingress controller](https://github.com/nehalineogi/aks-app-gw-ingress)
   - AKS with Azure firewall/NVA
   - Core DNS and Azure DNS Integrations
   - Kubernetes Network Model (Multus, Flannel,Weave, Calico, Cilium)
   - Kubernets Serivce Mesh (Istio, Linkerd and Consul)

4. [Azure App-service Webapp](webapp/README.md)

   - Private Endpoint
   - VNET Integration
   - NAT Gateway
   - Azure Private DNS Zone

5. Bicep Automated Deployments

# Tools of Trade

1. Database

   - SQl Server Management Studio
   - Azure Data Management Studio

2. Networking

   - Wireshark

3. Application
   - python
   - html
   - node.js
4. DevOps
   - Postman

# Sample Applications

1. Simple CRUD API Application
2. Simple http server
3. Simple 3-tier application for AKS
