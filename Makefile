.PHONY: build
build:
	cargo build
	gcc src/main.c -o target/main -L target/debug/ -l ffi_c_calling_rust
