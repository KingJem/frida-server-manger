# 发布 fsm 到 PyPI 的指南

以下是将 fsm (frida-server-manager) 库发布到 PyPI 的详细步骤：

## 前提条件

在开始之前，确保您已经安装了以下工具：

```bash
pip install --upgrade setuptools wheel twine
```

此外，您需要在 [PyPI](https://pypi.org/) 和 [Test PyPI](https://test.pypi.org/) 上拥有账号。

## 步骤 1：准备发布

1. 确保所有代码文件都已更新并测试通过
2. 更新 `setup.py` 中的版本号（如果需要）
3. 更新 `README.md` 和其他文档以反映最新的更改

## 步骤 2：创建发布文件

运行以下命令来创建发布文件：

```bash
python setup.py sdist bdist_wheel
```

这将在 `dist/` 目录中创建两个文件：
- 一个源代码分发包（.tar.gz）
- 一个 wheel 分发包（.whl）

## 步骤 3：上传到 Test PyPI（可选但推荐）

在发布到正式的 PyPI 之前，建议先上传到 Test PyPI 进行测试：

```bash
twine upload --repository-url https://test.pypi.org/legacy/ dist/*
```

按照提示输入您的 Test PyPI 用户名和密码。

## 步骤 4：测试 Test PyPI 上的包

安装您刚刚上传到 Test PyPI 的包：

```bash
pip install --index-url https://test.pypi.org/simple/ --no-deps fsm
```

测试安装是否成功，并验证功能是否正常工作。

## 步骤 5：上传到正式的 PyPI

如果在 Test PyPI 上的测试通过，就可以上传到正式的 PyPI 了：

```bash
twine upload dist/*
```

按照提示输入您的 PyPI 用户名和密码。

## 步骤 6：验证发布

发布成功后，您可以通过以下方式验证：

1. 访问 https://pypi.org/project/fsm/ 查看您的包页面
2. 在一个新的环境中安装您的包：`pip install fsm`
3. 运行一些基本命令来验证功能

## 注意事项

- 每次发布新版本时，都需要更新 `setup.py` 中的版本号
- 确保您的 `README.md` 使用正确的 Markdown 格式，因为它将显示在 PyPI 页面上
- 考虑为您的项目创建一个 GitHub 仓库，并在 `setup.py` 中更新 `url` 字段

## 有用的链接

- [PyPI 官方文档](https://pypi.org/help/)
- [Python 打包用户指南](https://packaging.python.org/)
- [twine 文档](https://twine.readthedocs.io/)