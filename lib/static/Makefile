#------------------------------
# 编译工具链
#------------------------------
CC      = gcc
LINK    = gcc
AR      = ar

#------------------------------
# 编译参数变量
#------------------------------
CC_FLAGS   = -g -std=c99 -DDEBUG -W -Wall -fPIC
AR_FLAGS   = rcs

#-------------------------------
# 头文件变量
#-------------------------------
HEADER  = -I./


#-------------------------------
# 路径变量
#-------------------------------
BIN_PATH = ../../build/bin

#-------------------------------
#
#-------------------------------
TARGET = libstatic.a

all : $(TARGET)

SRC = $(wildcard *.c)

 
OBJECT = $(patsubst %.c, %.o, $(SRC))



$(TARGET) : $(OBJECT)
	@echo "============Begin============"
	$(AR) $(AR_FLAGS) $@ $^
	@echo "generating static library $@ with dependences $^"
	@echo "============Finish============"
	@echo ""


.c.o:
	@echo "============Begin compiling============"
	$(CC) -c $(CC_FLAGS) $(HEADER) -o $@ $<
	@echo "compiling $< => $@"
	@echo "============Finish Compileing============"
	@echo ""

.PHONY: all clean install


install: $(TARGET)
	cp $(TARGET) $(BIN_PATH)

clean:
	@rm -rf $(OBJECT) $(TARGET)