@!%/'"& := ' " ` \ \\ / * ? ! ~ = | & ; @ + ^ < > { } ( ) [ ]
$(info $(@!%/'"&))      # @!%/'"&  변수값 출력

aa := foo
bb := bar

$(aa)$(bb) := hello ${aa}$(bb) variable

$(info $(aa)$(bb))
$(info $($(aa)$(bb)))
$(info $(foobar))
$(info one------------------------------------------)
$(info $aa)
a := NOOOO
$(info $aa)
$(info $(aa))
$(info simple & recursive---------------------------)
# simple
val := 100
foo := $(val)
val := 200
$(info simple: $(foo))
# recursive
val = 100s
foo = $(val)
val = 200
$(info recursive: $(foo))

# 무한 재귀?!
foo = asdf $(foo) world
$(info foo: $(value foo))
# $(info $(foo))
$(info +=-------------------------------------------)
s := abc
$(info $(s))
s += def
$(info $(s))
$(info ?=-------------------------------------------)
AA ?= 100
$(info $(AA))
ifeq "$(origin AA)" "undefined"
  AA := 300
endif
$(info !=-------------------------------------------)
BB != find -name '*.make'
$(info $(BB))
$(info $(value BB))
$(info ---------------------------------------------)
# 안보이겠지만 hello뒤에 space가 3개 있다.
CC := hello   
$(info $(CC))
CC += hi
$(info $(CC))