@echo off
rem set WINPYDIR=%~dp0\..\WPy64-31090\python-3.10.9.amd64
set WINPYDIR=%~dp0\WPy64-31090\python-3.10.9.amd64
set "PATH=%WINPYDIR%\;%WINPYDIR%\DLLs;%WINPYDIR%\Scripts;%PATH%;"

set logging=True
rem 日志

set PYTHON=%WINPYDIR%\python.exe 
rem python程序位置，不使用懒人包可留空

set glm_path=model\chatglm-6b-int4
rem glm模型位置

set embeddings_path=model\simcse-chinese-roberta-wwm-ext
rem embeddings模型位置
set vectorstore_path=xw
rem vectorstore保存位置

set rwkv_path=..\RWKV-4-Raven-7B-v7-ChnEng-20230404-ctx2048.pth
rem rwkv模型位置
set rwkv_strategy=cuda fp16i8 *20 -> cpu fp32
rem rwkv模型参数