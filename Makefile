include env.mk
#-------------------------------
#
#-------------------------------
ifeq ($(MODEL),DEBUG)
m = debug
else
m = release
endif

ifeq ($(.DEFAULT_GOAL),)
$(warning no default goal is set)
endif

#-------------------------------
# 函数
#-------------------------------
# 定义一个函数,遍历所有的$(SUBDIRS), $1是参数
define make_subdir
@for i in $(SUBDIRS); do\
(cd $$i && make $1) \
done;
endef

define func1
    @echo "My name is $(0)"		#$(0)表示取函数名
endef

define func2
    @echo "My name is $(0)"
    @echo "Param => $(1)"
endef

#-------------------------------
#
#-------------------------------

all: 
	@echo "all"
	$(shell if ! test -d $(BIN_DIR); then mkdir $(BIN_DIR); fi;)
	$(call make_subdir)


env :
	@$(MAKE) -C $(BUILD_DIR)


# 把子目录里生成的程序或so都拷到$(BIN_PATH)目录下
install:
	$(shell if ! test -d $(BIN_PATH); then mkdir $(BIN_PATH); fi;)
	$(call make_subdir, install)

# 清空所有子目录
clean:
	$(shell if test -d $(BIN_DIR); then rm -rf $(BIN_DIR); fi;)
	$(call make_subdir, clean)





	
ECHO:
	@echo "$(BUILD_DIR)"




test : 
	$(call func1)
	$(call func2, $(SUBDIRS))
	
.PHONY:all clean env install