#------------------------------
# 编译工具链
#------------------------------
CC = gcc
LINK    = gcc

#------------------------------
# 编译参数变量
#------------------------------
FLAGS = -g -std=c99 -W -Wall 
LINKFLAGS = -Wl,-rpath,.

#-------------------------------
# 头文件变量
#-------------------------------
HEADER = -I ../include
HEADER +=

#-------------------------------
#
#-------------------------------
LIBS = -L../lib/m -lmath
LIBS += -L../lib/static -lstatic

#-------------------------------
# 路径变量
#-------------------------------
BIN_PATH = ../build/bin

#-------------------------------
# 文件变量
#-------------------------------
SRC = $(wildcard *.c)
OBJECT := $(patsubst %.c,%.o,$(SRC))



#-------------------------------
#
#-------------------------------
TARGET = main



all : $(TARGET)

$(TARGET) : $(OBJECT)
	@echo "============Begin linking============"
	$(LINK) $(FLAGS) $(LINKFLAGS)  -o $@ $^  $(LIBS)
	@echo "linking $@ with dependences $^"
	@echo "============Finish linking============"
	@echo ""

.c.o:
	@echo "============Begin compiling============"
	$(CC) $(FLAGS) -c $(HEADER)  -o $@ $<
	@echo "compiling $< => $@ "
	@echo "============Finish Compileing============"
	@echo ""


.PHONY:all clean install

install: $(TARGET)
	cp $(TARGET) $(BIN_PATH)
clean:
	@rm -rf $(OBJECT) $(TARGET)