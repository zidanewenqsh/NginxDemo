# 使用官方的Nginx基础镜像
FROM nginx:latest

# 删除默认的配置文件
RUN #rm /etc/nginx/conf.d/default.conf

# 将自定义的配置文件添加到Nginx
#COPY ./your-custom-nginx-config.conf /etc/nginx/conf.d/

# 当Docker容器启动时，Nginx也会随之启动
CMD ["nginx", "-g", "daemon off;"]
