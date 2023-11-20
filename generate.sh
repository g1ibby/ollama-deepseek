#!/bin/bash

# This script downloads and processes deepseek models using the ollama tool

# Define a function to download and process the model file
download_and_process() {
    local model_url=$1
    local model_name=$2

    # Download the model file using the provided URL
    bash <(curl -s https://raw.githubusercontent.com/g1ibby/llm-tools/main/dlf.sh) "$model_url"

    # Create a new model using the downloaded file
    ollama create "$model_name" -f Modelfile-"${model_name#*:}"

    # Copy the new model to a new location
    ollama cp "$model_name" "g1ibby/$model_name"

    # Push the copied model to the remote location
    ollama push "g1ibby/$model_name"
}

# Download and process the 6.7b model
download_and_process "https://huggingface.co/TheBloke/deepseek-coder-6.7B-instruct-GGUF/blob/main/deepseek-coder-6.7b-instruct.Q4_0.gguf" "deepseek:6.7b"

# Download and process the 33b model
download_and_process "https://huggingface.co/TheBloke/deepseek-coder-33B-instruct-GGUF/blob/main/deepseek-coder-33b-instruct.Q4_0.gguf" "deepseek:33b"
