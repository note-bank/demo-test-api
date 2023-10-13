# 使用官方的Jenkins LTS镜像作为基础镜像
FROM jenkins/jenkins:lts

# 切换为root用户以安装软件
USER root

# 安装必要的软件包，包括Python 3.11
RUN apt-get update && \
  apt-get install -y python3.11 python3.11-venv

# 切换回Jenkins用户
USER jenkins

# 创建一个Python虚拟环境
RUN python3.11 -m venv /var/jenkins_home/venv

# 在Jenkins用户的.bashrc中添加激活虚拟环境的命令
RUN echo 'source /var/jenkins_home/venv/bin/activate' >> /var/jenkins_home/.bashrc
