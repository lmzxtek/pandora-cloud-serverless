FROM python:3.11

# 进入工作路径
WORKDIR /pandora

# 装载项目文件，安装剩余依赖
COPY . .
RUN pip3 install -r requirements.txt

EXPOSE 8018
# 启动
CMD ["python3", "-u", "main.py"]
