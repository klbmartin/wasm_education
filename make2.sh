export PATH=/usr/local/opt/llvm/bin:$PATH
#clang -v --target=wasm32-unknown-wasi --sysroot /tmp/wasi-libc -nostartfiles -Wl,--import-memory -Wl,--no-entry -Wl,--export-all -o copy.wasm copy.c
clang \
--target=wasm32-unknown-wasi \
--sysroot /tmp/wasi-libc \
-nostartfiles \
-Wl,--import-memory \
-Wl,--no-entry \
-Wl,--export-all \
-o copy.wasm \
copy.c