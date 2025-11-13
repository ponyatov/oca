TARGET    = xtensa-lx106-elf
OS       ?= freertos
APT      += gcc-xtensa-lx106 qemu-system-misc
QEMU      = qemu-system-xtensa
QEMU_CFG += -machine esp8266 -nographic
