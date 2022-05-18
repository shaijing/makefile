#------------------------------
# 编译工具链
#------------------------------
CC      = gcc 
LINK    = gcc

#------------------------------
# 编译参数变量
#------------------------------
# 编译参数，下面-g表示编译时候加入调试信息,
# -DDEBUG表示编译debug版本
# -W -Wall表示输出所有警告
# -fPIC是生成dll时候用的
FLAGS   = -g -std=c99 -DDEBUG -W -Wall -fPIC
# 这里加了-shared，表示生成动态库
LINKFLAGS = -shared

#-------------------------------
# 头文件变量
#-------------------------------
HEADER  = -I./
HEADER += -I./

#-------------------------------
# 库文件变量
#-------------------------------
LIBS    = 
# LIBS    += -lrt
# LIBS    += -pthread

#-------------------------------
# 路径变量
#-------------------------------
BIN_PATH = ../../build/bin

#-------------------------------
#
#-------------------------------
TARGET = libmath.so

all : $(TARGET)

SRC = $(wildcard *.c)

 
OBJECT = $(patsubst %.c, %.o, $(SRC))



$(TARGET) : $(OBJECT)
	@echo "============Begin linking============"
	$(LINK) $(FLAGS) $(LINKFLAGS) $(OBJECT) -o $@
	@echo "linking $@ with dependences $^"
	@echo "============Finish linking============"
	@echo ""

.c.o:
	@echo "============Begin compiling============"
	$(CC) -c $(FLAGS) $(HEADER) -o $@ $<
	@echo "compiling $< => $@"
	@echo "============Finish Compileing============"
	@echo ""

.PHONY:  clean install

# 把生成的$(TARGET)拷贝到$(BIN_PATH)下
install: $(TARGET)
	cp $(TARGET) $(BIN_PATH)

clean:
	@rm -rf $(OBJECT) $(TARGET)