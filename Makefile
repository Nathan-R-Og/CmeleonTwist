ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

# If 0, tells the console to chill out. (Quiets the make process.)
VERBOSE ?= 0

# If MAPGENFLAG set to 1, tells LDFLAGS to generate a mapfile, which makes linking take several minutes.
MAPGENFLAG ?= 0

ifeq ($(VERBOSE),0)
  QUIET := @
endif

BUILD_DIR = build
ROM_NAME = chameleontwist
ASM_DIRS := asm
ASSET_DIR = assets
SRC_DIRS := src


C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
DATA_FILES := $(foreach dir,$(ASSET_DIR),$(wildcard $(dir)/*.bin))

# Object files
O_FILES := $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file:.c=.c.o)) \
           $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.s.o)) \
           $(foreach file,$(DATA_FILES),$(BUILD_DIR)/$(file:.bin=.bin.o)) \

##################### Compiler Options #######################
CROSS = mips-linux-gnu-
AS = $(CROSS)as
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy

#CC         := $(QEMU_IRIX) -L tools/ido7.1_compiler tools/ido7.1_compiler/usr/bin/cc
#CC_OLD     := $(QEMU_IRIX) -L tools/ido5.3_compiler tools/ido5.3_compiler/usr/bin/cc

CC = tools/ido_recomp/linux/5.3/cc
CC_OLD = tools/ido_recomp/linux/5.3/cc

ASFLAGS = -EB -mtune=vr4300 -march=vr4300 -Iinclude
CFLAGS  = -G 0 -non_shared -Xfullwarn -Xcpluscomm -Iinclude -Wab,-r4300_mul _LANGUAGE_C
LDFLAGS = -T undefined_syms_auto.txt -T $(LD_SCRIPT) -Map $(BUILD_DIR)/$(ROM_NAME).map --no-check-sections

OPTFLAGS := -O2 -mips2

######################## Targets #############################

$(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(ASSET_DIR) $(COMPRESSED_DIRS) $(MAP_DIRS) $(BGM_DIRS),$(shell mkdir -p build/$(dir)))

ASM_PROCESS = tools/asm_processor/build.py

build/src/os/O1/%.o: OPTFLAGS := -O1
build/src/%.o: CC := python3 $(ASM_PROCESS) $@ $(CC) -- $(AS) $(ASFLAGS) --
build/src/dlls/%.o: CC := python3 $(ASM_PROCESS) $@ $(CC) -- $(AS) $(ASFLAGS) --
build/asm/%.o: ASFLAGS += -mips3 -mabi=32


LD_SCRIPT = chameleontwist.ld

default: all


all: $(BUILD_DIR) $(ROM_NAME).z64 # verify

clean:
	rm -rf $(BUILD_DIR) $(ASM_DIRS) $(ASSET_DIR) 

split: $(TOOLS)/n64splat/util/n64/Yay0decompress
	python3 tools/n64splat/split.py $(ROM_NAME).yaml

$(TOOLS)/n64splat/util/n64/Yay0decompress:
	make -C tools/n64splat

setup: split
	

#makes the build directory
$(BUILD_DIR):
	echo $(C_FILES)
	mkdir $(BUILD_DIR)

$(BUILD_DIR)/%.c.o: %.c
	$(CC) -c $(CFLAGS) $(OPTFLAGS) -o $@ $^

$(BUILD_DIR)/%.s.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.bin.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	@mkdir -p $(shell dirname $@)
	cpp -P -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(BUILD_DIR)/$(ROM_NAME).elf: $(O_FILES) $(LD_SCRIPT)
	$(LD) $(LDFLAGS) -o $@

$(BUILD_DIR)/$(ROM_NAME).bin: $(BUILD_DIR)/$(ROM_NAME).elf
	$(OBJCOPY) $< $@ -O binary

$(ROM_NAME).z64: $(BUILD_DIR)/$(ROM_NAME).bin
	@cp $< $@
	sha1sum $(ROM NAME) -c checksum.sha1

verify: $(ROM_NAME).z64
	sha1sum $(ROM NAME) -c checksum.sha1

.PHONY: all clean default split setup verify