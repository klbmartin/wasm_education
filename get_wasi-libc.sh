wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-12/libclang_rt.builtins-wasm32-wasi-12.0.tar.gz
mkdir /usr/lib/llvm-11/lib/clang/11.0.0/lib/wasi
tar -xvf libclang_rt.builtins-wasm32-wasi-12.0.tar.gz -C /usr/lib/llvm-11/lib/clang/11.0.0/lib/wasi --strip-components=2
rm libclang_rt.builtins-wasm32*