cd softgym/PyFlex/bindings
rm -rf build
mkdir build
cd build
# Seuss 
if [[ $(hostname) = *"compute-0"* ]] || [[ $(hostname) = *"autobot-"* ]] || [[ $(hostname) = *"yertle"* ]]; then
    export CUDA_BIN_PATH=/usr/local/cuda-9.1
fi
export CUDA_BIN_PATH=/usr/local/cuda-9.1
cmake -DPYBIND11_PYTHON_VERSION=3.6 ..
make -j
