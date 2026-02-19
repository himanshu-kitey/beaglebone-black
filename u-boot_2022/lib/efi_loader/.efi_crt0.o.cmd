cmd_lib/efi_loader/efi_crt0.o := arm-linux-gnueabihf-gcc -Wp,-MD,lib/efi_loader/.efi_crt0.o.d -nostdinc -isystem /home/himanshukitey/opt/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.3.0/include -Iinclude     -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -g -DHOST_ARCH="0x00a7" -I. -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include   -c -o lib/efi_loader/efi_crt0.o arch/arm/lib/crt0_arm_efi.S

source_lib/efi_loader/efi_crt0.o := arch/arm/lib/crt0_arm_efi.S

deps_lib/efi_loader/efi_crt0.o := \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \
  include/asm-generic/pe.h \

lib/efi_loader/efi_crt0.o: $(deps_lib/efi_loader/efi_crt0.o)

$(deps_lib/efi_loader/efi_crt0.o):
