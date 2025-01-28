---
date: 2025-01-28
title: Building LLM Client - Tech Stacks
description: The tech stacks I used to build the LLM client.
---

**Tech Stacks I choosed for Building an LLM Client**

Choosing the right tech stacks for building an application is crucial for ensuring a robust, scalable, and efficient solution. Here are the tech stacks I chose for my LLM client:
### 1. **Front-end Development**
- [**Vue**](https://vuejs.org/) - A progressive JavaScript framework for building user interfaces. It’s lightweight, fast, and easy to learn, making it an excellent choice for building the front-end of the LLM client. Some people have done benchmarking and found that Vue is faster than React, for example [here](https://medium.com/@danialeshete/comparative-web-performance-evaluation-benchmarking-of-vue-react-using-jswfb-a76982097225).
- [**Vuetify**](https://vuetifyjs.com/en/) - A Vue UI library that provides a set of pre-built UI components and a Material Design theme. It’s designed to be easy to use and highly customizable, making it a great choice for building the user interface of the LLM client. 
- [**https://dexie.org/**](https://dexie.org/) - A lightweight, fast, and easy-to-use IndexedDB wrapper for JavaScript. It’s designed to be easy to use and highly customizable, making it a great choice for building the user interface of the LLM client. I think it's good to give user a choice to save their data completely offline, so they can use the app without internet connection and also from privacy consideration by default there will be no user's chat history saved on the server, everything will be saved locally.


### 2. **Back-end Development**
- [**Go**](https://go.dev/) - A statically typed, compiled programming language that makes it easy to build simple, reliable, and efficient software. It is designed to be easy to use and highly customizable, making it a great choice for building an efficient and high-performance back end for the LLM client.
- [**Fiber**](https://docs.gofiber.io/) - A fast and flexible web framework written in Go. It’s designed to be easy to use and highly customizable, making it a great choice for building any backend back-end using Go. This framework is based on [Fasthttp](https://github.com/valyala/fasthttp) which is a fast and efficient HTTP server and client library for Go.
- [**PostgeSQL**](https://www.postgresql.org/) - A powerful, open source object-relational database system. It’s designed to be easy to use and highly customizable, making it a great choice for building the back end of the LLM client. We can store vector embeddings in PostgreSQL using the [pgvector](https://github.com/pgvector/pgvector) extension, so later when I need to process a large document I can use the pgvector extension to query the database and get the most relevant results (semantic search).
- [**Redis**](https://redis.io/) - An in-memory data structure store, used as a database, cache, and message broker. 
- [**NATS**](https://nats.io/) - A high-performance cloud-native messaging system.


### 3. **Deployment**
- [**Cloudflare Pages**](https://pages.cloudflare.com/) - A serverless platform that makes it easy to deploy and host websites and web applications. It’s designed to be easy to use and highly customizable, making it a great choice for deploying web applications.
- For the API backend, I will use VPS instance for early stage, later I will consider to use [Cloudflare Workers](https://workers.cloudflare.com/) for the API backend.