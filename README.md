# DeepSeek Model Builder for Ollama

This repository provides scripts to build the [DeepSeek](https://deepseekcoder.github.io/) model for use with the [Ollama AI](https://ollama.ai/) platform.

## Overview

The scripts in this repository are designed to download and process the DeepSeek model files, allowing them to be used with the Ollama AI platform. The processed models are then uploaded to Ollama for use in various AI tasks.

The original DeepSeek Coder model can be found [here](https://deepseekcoder.github.io/).

## Model Sources

The scripts use the GGUF weight files for the DeepSeek model, which are downloaded from the following repositories:

- [6.7B Model](https://huggingface.co/TheBloke/deepseek-coder-6.7B-instruct-GGUF)
- [33B Model](https://huggingface.co/TheBloke/deepseek-coder-33B-instruct-GGUF)

## Usage

To use the scripts, clone this repository and run the `generate.sh` script:

```bash
git clone https://github.com/g1ibby/ollama-deepseek 
cd ollama-deepseek 
chmod +x generate.sh
./generate.sh
```
This will download the model files, process them, and upload them to the [Ollama platform](https://ollama.ai/g1ibby/deepseek).

