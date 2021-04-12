export PATH=/usr/local/opt/llvm/bin:$PATH
clang \
--target=wasm32-unknown-wasi \
--sysroot /tmp/wasi-libc \
-nostartfiles \
-Wl,--initial-memory=131072 \
-Wl,--max-memory=524288 \
-Wl,--no-entry \
-Wl,--export-all \
-o malloc_copy_int.wasm \
malloc_copy.c
