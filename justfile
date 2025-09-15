# fsm (frida-server-manager) Justfile
# 这个文件包含了fsm工具所有参数的使用示例
# 使用方法: just <命令名>

# 检查ADB连接状态
default:
  fsm

# 检查详细模式下的ADB连接状态
check-verbose:
  fsm -v

# 安装最新版本的frida-server
install-latest:
  fsm install

# 安装最新版本的frida-server (详细模式)
install-latest-verbose:
  fsm -v install

# 安装特定版本的frida-server
install-version:
  fsm install 16.1.4

# 安装特定版本的frida-server (详细模式)
install-version-verbose:
  fsm -v install 16.1.4

# 使用自定义仓库安装frida-server
install-custom-repo:
  fsm install --repo frida/frida 16.1.4

# 安装时保留原始文件名
install-keep-name:
  fsm install --keep-name 16.1.4

# 安装时使用自定义文件名
install-custom-name:
  fsm install --name my-frida-server 16.1.4

# 运行默认frida-server
run-default:
  fsm run

# 运行默认frida-server (详细模式)
run-default-verbose:
  fsm -v run

# 运行特定目录下的frida-server
run-custom-dir:
  fsm run --dir /data/local/tmp

# 运行时传递额外参数给frida-server (例如后台运行)
run-with-params:
  fsm run --params "-D"

# 运行特定版本的frida-server
run-specific-version:
  fsm run --version 16.1.4

# 运行特定名称的frida-server文件
run-custom-name:
  fsm run --name my-frida-server

# 组合使用多个参数
run-combined:
  fsm -v run --dir /data/local/tmp --params "-D" --version 16.1.4

# 安装并立即运行特定版本的frida-server
install-and-run:
  fsm install 16.1.4 && fsm run --version 16.1.4

# 显示fsm帮助信息
help:
  fsm --help

# 显示install命令的帮助信息
help-install:
  fsm install --help

# 显示run命令的帮助信息
help-run:
  fsm run --help

# 使用Python模块方式运行fsm
python-module:
  python -m fsm

# 使用Python模块方式安装frida-server
python-module-install:
  python -m fsm install 16.1.4

# 使用Python模块方式运行frida-server
python-module-run:
  python -m fsm run --params "-D"
