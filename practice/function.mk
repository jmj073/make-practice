# function도 결국은 variable

foo = $(shell echo hello, $(1))
res := $(call foo,world)
$(info $(res))


bar = $2 $1
res := $(call bar,aa,bb)
$(info $(res))

foo = $(info name: $0, arg1: $(1), arg2: $2 )
$(call foo,111,222) 

# 외않되?
# 0 = $(info $0$1$2$3$4$5$6$7$8$9$(10))
# $(call 0,1,2,3,4,5,6,7,8,9,10)