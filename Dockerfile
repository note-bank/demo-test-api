# 使用官方的Jenkins LTS镜像作为基础镜像
FROM jenkins/jenkins:lts

# 切换为root用户以安装软件
USER root

# 更新APT存储库并安装Python 3
RUN apt-get update && apt-get install -y python3 python3.11-venv

# 在Jenkins用户的家目录中创建一个名为demo-env的虚拟环境
RUN python3 -m venv /var/jenkins_home/demo-env

# 在构建过程中激活虚拟环境并将其添加到.bashrc
RUN echo "source /var/jenkins_home/demo-env/bin/activate" >> /var/jenkins_home/.bashrc
