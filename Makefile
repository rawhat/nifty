PROJECT_NAME = nifty
PRIV_DIR = build/dev/erlang/$(PROJECT_NAME)/priv
MODULE_NAME = nifty_ffi
OUTPUT = $(MODULE_NAME).so
ERTS_INCLUDE = -I/home/alex/.asdf/installs/erlang/25.2/erts-13.1.3/include
SOURCES = c_src/*.c

build: $(SOURCES)
	mkdir -p $(PRIV_DIR)
	gcc $(ERTS_INCLUDE) -o $(PRIV_DIR)/$(OUTPUT) -fpic -shared $(SOURCES)

clean:
	rm $(PRIV_DIR)/$(OUTPUT)
