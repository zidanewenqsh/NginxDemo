# NginxDemo
My nginx in docker container demo project
# Nginx Docker Setup

本项目使用 Docker 和 docker-compose 来创建、配置和运行一个 Nginx 容器。

## 结构

项目文件结构如下：

```
/
├── src/
│   ├── conf/
│   │   └── ... # Nginx 配置文件 (.conf)
│   ├── html/
│   │   └── ... # 静态网页文件 (.html)
│   └── logs/
│       └── ... # 日志文件夹
├── Dockerfile
└── docker-compose.yml
```

## 使用指南

### 前提条件

确保你已经安装了 Docker 和 docker-compose。

### 克隆仓库：
```bash
git clone https://github.com/zidanewenqsh/NginxDemo.git
cd NginxDemo
```

### 构建和运行

运行以下命令来构建和启动 Nginx 容器：

```bash
docker-compose up --build
```

### 配置

- **Nginx 配置**：将你的 `.conf` 文件放在 `src/conf` 目录中。这些文件会自动映射到容器中的 `/etc/nginx/conf.d`。
- **网页内容**：将你的静态网页文件放在 `src/html` 目录中，它们会被映射到容器的 `/usr/share/nginx/html` 目录。
- **日志**：Nginx 的访问和错误日志会写入到 `src/logs` 目录。

### 映射

`docker-compose.yml` 中定义的卷映射如下：

```yaml
services:
  nginx:
    build: .
    ports:
      - "80:80"
    volumes:
      - ./src/conf:/etc/nginx/conf.d
      - ./src/html:/usr/share/nginx/html
      - ./src/logs:/var/log/nginx
```

## 维护

- **启动服务**：`docker-compose up`
- **停止服务**：`docker-compose down`
- **重启服务**：`docker-compose restart`
- **查看日志**：查看 `src/logs` 目录下的文件。

## 注意事项

- 在更改了 Nginx 配置文件后，你可能需要重新启动容器来使更改生效。
- 使用 `docker-compose down` 命令可以移除容器和网络，但不会删除映射的卷。

## 许可证

本项目采用 MIT 许可证。更多详情请查看 [LICENSE](LICENSE) 文件。


