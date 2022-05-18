immediate = deferred  # 基本的赋值
immediate ?= deferred  # 如果没有被赋值过就赋予等号后面的值
immediate := immediate  # 覆盖之前的值
immediate ::= immediate  # 等于:=
immediate += deferred or immediate  # 添加等号后面的值
immediate != immediate  # 查看赋值的数是否不等
