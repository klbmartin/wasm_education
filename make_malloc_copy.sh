export PATH=/usr/local/opt/llvm/bin:$PATH
clang \
--target=wasm32-unknown-wasi \
--sysroot /tmp/wasi-libc \
-nostartfiles \
-Wl,--import-memory \
-Wl,--no-entry \
-Wl,--export-all \
-o malloc_copy.wasm \
malloc_copy.c