.PHONY: build
build: target/main

.PHONY: run
run: build
	./target/main

target/main: src/main.c target/debug/libffi_c_calling_rust.a
	gcc src/main.c -o target/main -L target/debug/ -l ffi_c_calling_rust

target/debug/libffi_c_calling_rust.a: src/lib.rs
	cargo build
