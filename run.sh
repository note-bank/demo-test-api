#!/bin/bash
# 虚拟环境名称
venv_name="venv"

# 检查虚拟环境是否存在
if [ ! -d "$venv_name" ]; then
    echo "虚拟环境 $venv_name 不存在，请先创建虚拟环境。"
    exit 1
fi

# 激活虚拟环境
source "$venv_name/bin/activate"

# 安装Python依赖项
pip install -r requirements.txt

# 运行Python项目
python app.py

# 停止虚拟环境
deactivate