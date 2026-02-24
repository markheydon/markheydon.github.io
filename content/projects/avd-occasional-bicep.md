---
title: "Occasional Use Azure Virtual Desktop (AVD) Bicep"
date: 2026-02-21
tags: ["Azure", "Bicep", "IaC"]
summary: "A Bicep-driven Azure Virtual Desktop deployment designed for quick, occasional use."
description: "A Bicep-driven Azure Virtual Desktop deployment designed for quick, occasional use."
image: "/images/projects/avd-occasional-bicep.png"
badges:
  - "Azure"
  - "Bicep"
  - "IaC"
links:
  - icon: fas fa-link
    url: https://markheydon.me.uk/avd-occasional/
  - icon: fab fa-github
    url: "https://github.com/markheydon/avd-occasional"
---

## Overview

**avd‑occasional** is a practical, infrastructure‑as‑code solution for deploying a full Azure Virtual Desktop (AVD) environment on demand. The idea came from my own recurring need: when travelling or visiting family, I often require a capable development machine — something far beyond what my lightweight laptop can manage.

Having built AVD manually in the past, I knew how many interconnected steps were involved, and how unrealistic it was to remember them months later when I needed the environment again. I wanted a setup I could summon with a single deployment, use for a few days, then tear down without hesitation.

This project delivers exactly that. Using **Bicep**, it automates all AVD components into a clean, reproducible workflow. It also served as my first real Bicep project — a surprisingly enjoyable way to learn the language while solving a real‑world problem.

## Technologies Used

- **Azure Virtual Desktop** — cloud‑hosted Windows desktops for development and testing.
- **Azure Bicep** — modular infrastructure‑as‑code used to orchestrate every component.
- **Azure Resource Manager** — underlying deployment platform.
- **Azure Networking** — virtual networks, subnets, extensions, and connectivity.
- **Entra ID** — identity and optional domain join.
- **Azure CLI** — command‑line deployment interface.
- **GitHub** — source control and open‑source hosting.
- **GitHub Pages** — docs site with config and setup details.

## Key Features

- **Full AVD deployment** — host pool, workspace, application group, VM(s), and extensions.
- **Clean modular Bicep structure** — easy to read, extend, and troubleshoot.
- **One‑command provisioning** — deploy a complete environment from parameters.
- **Designed for occasional use** — perfect for a short‑term dev box.
- **Cost‑efficient** — destroy the resource group to instantly stop all spend.
- **Real‑world ready** — handles the wiring, RBAC, networking, and identity steps that are tedious to configure manually.

## Docs Site

👉 [https://markheydon.me.uk/avd-occasional/](https://markheydon.me.uk/avd-occasional/)

## Repository

👉 [GitHub Repo](https://github.com/markheydon/avd-occasional)

---

This project is a lightweight set of scripts and Azure AVD configuration that saves hours of manual setup, ensures consistent environment configuration, and showcases the power of Bicep for orchestrating complex Azure services.
