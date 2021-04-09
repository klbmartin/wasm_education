# wasm_education

* ```sudo apt-get install lld```
* ```sudo apt-get install llvm```
* ```sudo update-alternatives --install /usr/bin/wasm-ld wasm-ld /usr/bin/wasm-ld-10 1000```
* Get ```wasi-libc``` in other directory
  * ```git clone https://github.com/CraneStation/wasi-libc.git```
  * ```cd wasi-libc```
  * ```make install INSTALL_DIR=/tmp/wasi-libc```
* get wasi lib
  * ```wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-12/libclang_rt.builtins-wasm32-wasi-12.0.tar.gz```
  * ```tar -xvf libclang_rt.builtins-wasm32-wasi-12.0.tar.gz```
  * ```sudo mkdir /usr/lib/llvm-10/lib/clang/10.0.0/lib/wasi```
  * ```sudo cp lib/wasi/libclang_rt.builtins-wasm32.a /usr/lib/llvm-10/lib/clang/10.0.0/lib/wasi```
  * ```rm -r lib```
  * ```rm libclang_rt.builtins-wasm32*```