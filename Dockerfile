# 使用官方MySQL镜像作为基础镜像
FROM mysql:latest

# 设置MySQL环境变量
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=my_user
ENV MYSQL_PASSWORD=my_password

# 将自定义的my.cnf配置文件复制到容器中
#COPY my.cnf /etc/mysql/my.cnf

# 将初始化脚本复制到容器中，该脚本将在容器启动时执行
#COPY init.sql /docker-entrypoint-initdb.d/

# 暴露MySQL端口
EXPOSE 3306
