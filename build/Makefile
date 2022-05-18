TARGET := main
$(warning A top-level warning)
all: $(TARGET)
$(TARGET):
	@echo "============ENV VALUE============"
	@echo " ROOT_DIR = $(ROOT_DIR)"
	@echo " BUILD_DIR = $(BUILD_DIR)"
	@echo " LIB_DIR = $(LIB_DIR)"
	@echo " MODEL = $(MODEL)"
	@echo " INCLUDE_ENV = $(INCLUDE_ENV)"
	@echo "============ENV VALUE============"

install:
	@echo "install"
clean:
	@echo "clean"

.PHONY:all clean install