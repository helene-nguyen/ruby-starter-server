# TITLE

## Introduction

Ruby is a general-purpose language used to create web applications, as it has development frameworks already installed.

Ruby provides libraries that enable developers to work with various networking protocols at the application level, such as FTP, HTTP, and TCP. These libraries offer a high-level interface, making it easier for developers to access and utilize these protocols in their applications.

This repository contains a simple server implementation written in Ruby. The purpose of this repository is to provide a starting point for developers who want to create a simple web server using pure Ruby.

The server is designed to handle basic HTTP requests, including GET, POST, and PUT requests. It supports static file serving and can be easily extended to include dynamic content generation using Ruby-based templates or other web frameworks.

Hope it can help :)

## Summary

- [Tools and version](#tools-and-versions)
- [Folder structure](#folder-structure)
- [Requirements](#requirements)
- [Makefile usage](#makefile-usage)
- [Project : Object Oriented Programming](#project)
- [Some tips](#tips)

- Useful resources :

- [Sources](#sources)

## Tools and versions

- OS

  - Kali Linux OS - Ruby v3.1.2
  - Windows OS - Ruby v3.2.2

- IDE
  - VSCodium v1.77.1

## Folder structure

```sh
├── Makefile
├── README.md
└── src
|  ├── server.rb
|  ├── server_2.rb
|  └── test_server.rb
```

## Requirements

Ruby installed on your machine.

## Makefile Usage

Considering you already have Ruby and Make on your host machine, you can use make to read any file inside this repo:

Launch server 1:


```sh
make run_server_1
``` 

Launch server 2:

```sh
make run_server_2
```

Launch test


```sh
make run_test
``` 

## Project

### Build a server

## Tips

## Useful resources

---

## Sources

- [Build simple server](https://www.educative.io/answers/how-to-build-a-simple-server-in-ruby)
- [Basics tcp server](https://dev.to/leandronsp/web-basics-a-tcp-server-in-ruby-947)
