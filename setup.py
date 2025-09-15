from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setup(
    name="fsm",
    version="0.1.0",
    author="frida-server-manager contributors",
    author_email="fsm@example.com",  # 发布前请替换为实际邮箱
    description="A tool to manage frida-server on Android devices",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/example/fsm",  # 发布前请替换为实际GitHub仓库URL,
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
    install_requires=[
        'requests',
    ],
    entry_points={
        'console_scripts': [
            'fsm=fsm.cli:main',
        ],
    },
)