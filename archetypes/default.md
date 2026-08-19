---
date: '{{ .Date }}'
draft: true
title: '{{ replace .File.ContentBaseName "-" " " | title }}'
# Tags: only the allowed list in identity.md
tags: []
---
