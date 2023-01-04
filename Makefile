PROJECT_NAME = nifty
PRIV_DIR = build/dev/erlang/$(PROJECT_NAME)/priv
MODULE_NAME = nifty_ffi
OUTPUT = $(MODULE_NAME).so
ERTS_INCLUDE = -I/home/alex/.asdf/installs/erlang/25.2/erts-13.1.3/include

build: c_src/complex.c c_src/nifty_ffi.c
	gcc $(ERTS_INCLUDE) -o $(PRIV_DIR)/$(OUTPUT) -fpic -shared c_src/complex.c c_src/nifty_ffi.c

clean:
	rm $(PRIV_DIR)/$(OUTPUT)
