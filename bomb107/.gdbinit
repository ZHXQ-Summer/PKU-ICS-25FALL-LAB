
set args psol.txt

#b phase_1 
#b phase_2
#b phase_3 
#b phase_4 
#b phase_5
#b phase_6
b alohomora
b secret_phase
b *(explode_bomb + 0x44)
# 为此断点编程
command
# 直接跳到 exit 退出函数处，跳过发送信息流程
j *(explode_bomb + 0x6b)
end

r