wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-12/libclang_rt.builtins-wasm32-wasi-12.0.tar.gz
tar -xvf libclang_rt.builtins-wasm32-wasi-12.0.tar.gz
mkdir /usr/lib/llvm-11/lib/clang/11.0.0/lib/wasi
cp lib/wasi/libclang_rt.builtins-wasm32.a /usr/lib/llvm-11/lib/clang/11.0.0/lib/wasi
rm -r lib
rm libclang_rt.builtins-wasm32*

cd ..
git clone https://github.com/CraneStation/wasi-libc.git
cd wasi-libc
make install INSTALL_DIR=/tmp/wasi-libc