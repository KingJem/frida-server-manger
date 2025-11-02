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

# 使用自定义仓库安装frida-server (长选项)
install-custom-repo:
  fsm install --repo frida/frida 16.1.4

# 使用自定义仓库安装frida-server (短选项)
install-custom-repo-short:
  fsm install -r frida/frida 16.1.4

# 安装时保留原始文件名 (长选项)
install-keep-name:
  fsm install --keep-name 16.1.4

# 安装时保留原始文件名 (短选项)
install-keep-name-short:
  fsm install -k 16.1.4

# 安装时使用自定义文件名 (长选项)
install-custom-name:
  fsm install --name my-frida-server 16.1.4

# 安装时使用自定义文件名 (短选项)
install-custom-name-short:
  fsm install -n my-frida-server 16.1.4

# 运行默认frida-server
run-default:
  fsm run

# 运行默认frida-server (详细模式)
run-default-verbose:
  fsm -v run

# 运行特定目录下的frida-server (长选项)
run-custom-dir:
  fsm run --dir /data/local/tmp

# 运行特定目录下的frida-server (短选项)
run-custom-dir-short:
  fsm run -d /data/local/tmp

# 运行时传递额外参数给frida-server (例如后台运行) (长选项)
run-with-params:
  fsm run --params "-D"

# 运行时传递额外参数给frida-server (例如后台运行) (短选项)
run-with-params-short:
  fsm run -p "-D"

# 运行特定版本的frida-server (长选项)
run-specific-version:
  fsm run --version 16.1.4

# 运行特定版本的frida-server (短选项)
run-specific-version-short:
  fsm run -V 16.1.4

# 运行特定名称的frida-server文件 (长选项)
run-custom-name:
  fsm run --name my-frida-server

# 运行特定名称的frida-server文件 (短选项)
run-custom-name-short:
  fsm run -n my-frida-server

# 组合使用多个参数 (混合长短选项)
run-combined:
  fsm -v run --dir /data/local/tmp --params "-D" --version 16.1.4

# 组合使用多个参数 (全短选项)
run-combined-short:
  fsm -v run -d /data/local/tmp -p "-D" -V 16.1.4

# 列出frida-server文件
list-files:
  fsm list

# 列出frida-server文件 (详细模式)
list-files-verbose:
  fsm -v list

# 列出特定目录下的frida-server文件 (长选项)
list-custom-dir:
  fsm list --dir /data/local/tmp

# 列出特定目录下的frida-server文件 (短选项)
list-custom-dir-short:
  fsm list -d /data/local/tmp

# 列出运行的进程
ps-list:
  fsm ps

# 列出运行的进程 (详细模式)
ps-list-verbose:
  fsm -v ps

# 列出特定名称的进程 (长选项)
ps-filter-name:
  fsm ps --name frida-server

# 列出特定名称的进程 (短选项)
ps-filter-name-short:
  fsm ps -n frida-server

# 终止frida-server进程
kill-process:
  fsm kill

# 终止frida-server进程 (详细模式)
kill-process-verbose:
  fsm -v kill

# 根据PID终止特定进程 (长选项)
kill-specific-pid:
  fsm kill --pid 12345

# 根据PID终止特定进程 (短选项)
kill-specific-pid-short:
  fsm kill -p 12345

# 根据名称终止进程 (长选项)
kill-by-name:
  fsm kill --name frida-server

# 根据名称终止进程 (短选项)
kill-by-name-short:
  fsm kill -n frida-server

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

# 显示list命令的帮助信息
help-list:
  fsm list --help

# 显示ps命令的帮助信息
help-ps:
  fsm ps --help

# 显示kill命令的帮助信息
help-kill:
  fsm kill --help

# 使用Python模块方式运行fsm
python-module:
  python -m fsm

# 使用Python模块方式安装frida-server
python-module-install:
  python -m fsm install 16.1.4

# 使用Python模块方式运行frida-server
python-module-run:
  python -m fsm run --params "-D"

# 使用Python模块方式列出进程
python-module-ps:
  python -m fsm ps -n frida-server

# 使用Python模块方式终止进程
python-module-kill:
  python -m fsm kill -n frida-server

# 完整工作流程示例：安装、运行、检查、终止
workflow-full:
  @echo "Installing frida-server..."
  fsm install 16.1.4
  @echo "Running frida-server in background..."
  fsm run -V 16.1.4 -p "-D"
  @echo "Checking running processes..."
  fsm ps -n frida-server
  @echo "Listing installed files..."
  fsm list
  @echo "To stop frida-server, run: just workflow-stop"

# 终止完整工作流程
workflow-stop:
  @echo "Stopping frida-server..."
  fsm kill -n frida-server
  @echo "frida-server stopped."

# 快速开发测试循环
dev-test:
  @echo "Quick development test..."
  fsm -v
  fsm -v list
  fsm -v ps

# 显示所有可用的just命令
just-help:
  just --list

# 短选项快速参考
quick-ref:
  @echo "=== FSM Short Options Quick Reference ==="
  @echo ""
  @echo "Install Options:"
  @echo "  -r, --repo     : Custom repository (frida/frida)"
  @echo "  -k, --keep-name: Keep original filename"
  @echo "  -n, --name     : Custom name"
  @echo "  -u, --url      : Custom download URL (supports xz, gz, tar.gz)"
  @echo ""
  @echo "Run Options:"
  @echo "  -d, --dir      : Custom directory"
  @echo "  -p, --params   : Additional parameters"
  @echo "  -V, --version  : Specific version"
  @echo "  -n, --name     : Custom name"
  @echo ""
  @echo "List Options:"
  @echo "  -d, --dir      : Custom directory"
  @echo ""
  @echo "PS Options:"
  @echo "  -n, --name     : Filter by process name"
  @echo ""
  @echo "Kill Options:"
  @echo "  -p, --pid      : Specific PID"
  @echo "  -n, --name     : Process name"
  @echo ""
  @echo "Global Options:"
  @echo "  -v, --verbose  : Verbose output"
  @echo "  -h, --help     : Show help"
