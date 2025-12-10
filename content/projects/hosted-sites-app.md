---
title: "Hosted Sites Billing App"
date: 2025-12-03
weight: 102
tags: ["Blazor", "Dataverse"]
summary: "Domain model and billing integration for hosted WordPress sites."
image: "/images/projects/hosted-sites-billing-app.png"
badges:
  - "Dataverse"
  - "Blazor"
---

## Overview
The **Hosted Sites Billing App** is an internal Blazor application designed to manage billing for hosted WordPress sites. It integrates with **RapidStart CRM (Dataverse)** to pull client and subscription data, and automates invoice creation in **Stripe Invoicing**. This solution streamlines billing workflows for recurring hosting plans and ensures accurate synchronisation between CRM and payment systems.

## Technologies Used
- **Blazor** — modern .NET web framework for building interactive UIs.
- **Dataverse** — secure data platform powering RapidStart CRM.
- **Stripe Invoicing** — automated invoice generation and payment tracking.
- **Azure App Service** — hosting for the Blazor application.
- **Application Insights** — monitoring and diagnostics for performance and reliability.

## Key Features
- **Domain-driven design** — clean architecture with HostedSite and Billing entities.
- **Automated invoicing** — generates Stripe invoices based on CRM data.
- **Secure API integration** — OAuth-based authentication for Dataverse and Stripe.
- **Responsive UI** — intuitive dashboard for managing hosted site subscriptions.
- **Error handling and logging** — integrated telemetry for troubleshooting.

## Live Site
*As this was an internal app, there is no publically accessibly live site available.*


---

This project demonstrates how Microsoft 365 and modern .NET technologies can be combined to deliver robust billing automation for managed WordPress hosting services.
