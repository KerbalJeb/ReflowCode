set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(AS arm-none-eabi-as)
set(AR arm-none-eabi-ar)
set(OBJCOPY arm-none-eabi-objcopy)
set(OBJDUMP arm-none-eabi-objdump)
set(SIZE arm-none-eabi-size)

set(CMAKE_EXE_LINKER_FLAGS   
    "-T${PROJECT_SOURCE_DIR}/src/linker_file.ld\
    -mthumb -mcpu=cortex-m0\
    --specs=nosys.specs -Wl,-Map=${ProjName}.map\
    -Wl,--gc-sections\
    -static --specs=nano.specs\
    -Wl,--start-group\
    -lc -lm -lstdc++\
    -lsupc++ -Wl,--end-group\
    -Wl,--print-memory-usage")

set(CMAKE_C_FLAGS 
    "-mcpu=cortex-m0\
    -g3\
    -O3\
    -ffunction-sections\
    -fdata-sections\
    -Wall\
    -Wno-unused-but-set-variable\
    -fstack-usage\
    -mthumb\
    -nostartfiles")
