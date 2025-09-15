# fsm (frida-server-manager)

[中文说明](#中文说明)

A command-line tool to manage frida-server on Android devices.

## Features

- Install frida-server on Android devices
- Run frida-server with custom options
- List frida-server files on the device and show their versions
- Check frida versions and compatibility
- Easy-to-use command-line interface

## Installation

```bash
pip install fsm
```

## Usage

### Basic Commands

#### Check ADB connection
```bash
fsm
```

#### Install frida-server
```bash
# Install the latest version
fsm install

# Install a specific version
fsm install 16.1.4
```

#### Run frida-server
```bash
# Run with default settings
fsm run

# Run with custom directory and parameters
fsm run --dir /custom/path --params "-D"
```

#### List frida-server files
```bash
# List frida-server files in default directory
fsm list

# List frida-server files in custom directory
fsm list --dir /custom/path
```

### Options

- `-v`, `--verbose`: Enable verbose output

## Requirements

- Python 3.6 or higher
- ADB (Android Debug Bridge) installed on your system
- An Android device connected via USB with USB debugging enabled

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

# 中文说明

一个用于在Android设备上管理frida-server的命令行工具。

##### 功能特性

- 在Android设备上安装frida-server
- 使用自定义选项运行frida-server
- 列出设备上的frida-server文件并显示其版本
- 检查frida版本和兼容性
- 易用的命令行界面

## 安装方法

```bash
pip install fsm
```

## 使用方法

### 基本命令

#### 检查ADB连接
```bash
fsm
```

#### 安装frida-server
```bash
# 安装最新版本
fsm install

# 安装特定版本
fsm install 16.1.4
```

#### 运行frida-server
```bash
# 使用默认设置运行
fsm run

# 使用自定义目录和参数运行
fsm run --dir /custom/path --params "-D"
```

#### 列出frida-server文件
```bash
# 列出默认目录中的frida-server文件
fsm list

# 列出自定义目录中的frida-server文件
fsm list --dir /custom/path
```

### 选项

- `-v`, `--verbose`: 启用详细输出

## 系统要求

- Python 3.6或更高版本
- 系统上已安装ADB（Android Debug Bridge）
- 通过USB连接的Android设备，并已启用USB调试模式

## 许可证

本项目采用MIT许可证 - 详情请查看[LICENSE](LICENSE)文件。

## 使用示例

### 检查设备连接

运行以下命令可以检查是否有设备通过ADB连接：

```bash
fsm
```

如果设备已连接，您将看到类似以下输出：
```
Success: 1 device(s) connected
```

### 安装特定版本的frida-server

要安装特定版本的frida-server，可以使用版本号作为参数：

```bash
fsm install 16.1.4
```

安装成功后，您将看到类似以下输出：
```
Successfully installed frida-server 16.1.4 on arm64 device at /data/local/tmp/frida-server-16.1.4
To run this specific version, use: fsm run --dir /data/local/tmp --params '/data/local/tmp/frida-server-16.1.4'
```

### 后台运行frida-server

要在后台运行frida-server，可以使用`-D`参数：

```bash
fsm run --params "-D"
```

## 命令格式

该工具支持以下命令格式：

1. 直接使用`fsm`命令：`fsm [options] {install,run} [arguments]`
2. 使用Python模块方式：`python -m fsm [options] {install,run} [arguments]`

## 故障排除

### 常见问题

1. **ADB未找到**
   - 确保ADB已正确安装并添加到系统PATH中
   - 尝试使用绝对路径运行ADB命令确认其可访问性

2. **设备未连接**
   - 确保USB调试已启用
   - 尝试重新连接USB线缆
   - 运行`adb devices`命令确认设备是否被识别

3. **权限错误**
   - 确保您有足够的权限运行ADB命令
   - 尝试以管理员/root权限运行命令

## 贡献

欢迎提交问题和改进建议！如果您有任何问题或需要帮助，请在项目仓库中创建Issue。