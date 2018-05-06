MEMORY
{
  UNPLACED_SECTIONS (wx) : ORIGIN = 0x100000000, LENGTH = 0
  ITCM (wx) : ORIGIN = 0x00000000, LENGTH = 0x00010000
  FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 0x00200000
  SYSTEM (wx) : ORIGIN = 0x1fff0000, LENGTH = 0x00020000
  RAM (wx) : ORIGIN = 0x20000000, LENGTH = 0x00020000
  DTCM (wx) : ORIGIN = 0x20000000, LENGTH = 0x00020000
  AXISRAM (wx) : ORIGIN = 0x24000000, LENGTH = 0x00080000
  SRAM1 (wx) : ORIGIN = 0x30000000, LENGTH = 0x00020000
  SRAM2 (wx) : ORIGIN = 0x30020000, LENGTH = 0x00020000
  SRAM3 (wx) : ORIGIN = 0x30040000, LENGTH = 0x00008000
  SRAM4 (wx) : ORIGIN = 0x38000000, LENGTH = 0x00010000
  BackupSRAM (wx) : ORIGIN = 0x38800000, LENGTH = 0x00001000
  APB1 (wx) : ORIGIN = 0x40000000, LENGTH = 0x0000d400
  APB2 (wx) : ORIGIN = 0x40010000, LENGTH = 0x00017800
  AHB1 (wx) : ORIGIN = 0x40020000, LENGTH = 0x000c0000
  AHB2 (wx) : ORIGIN = 0x48020000, LENGTH = 0x00002c00
  APB3 (wx) : ORIGIN = 0x50000000, LENGTH = 0x00004000
  AHB3 (wx) : ORIGIN = 0x51000000, LENGTH = 0x01008000
  APB4 (wx) : ORIGIN = 0x58000000, LENGTH = 0x00026800
  DBGMCU (wx) : ORIGIN = 0x5c001000, LENGTH = 0x00000058
  NOR_PSRAM1 (wx) : ORIGIN = 0x60000000, LENGTH = 0x00000000
  NOR_PSRAM2 (wx) : ORIGIN = 0x64000000, LENGTH = 0x00000000
  NOR_PSRAM3 (wx) : ORIGIN = 0x68000000, LENGTH = 0x00000000
  NOR_PSRAM4 (wx) : ORIGIN = 0x6c000000, LENGTH = 0x00000000
  NAND (rx) : ORIGIN = 0x80000000, LENGTH = 0x00000000
  QUADSPI_FLASH (rx) : ORIGIN = 0x90000000, LENGTH = 0x00000000
  FMC (wx) : ORIGIN = 0xa0000000, LENGTH = 0x00001000
  QUADSPI (wx) : ORIGIN = 0xa0001000, LENGTH = 0x00000400
  SDRAM1 (wx) : ORIGIN = 0xc0000000, LENGTH = 0x00000000
  SDRAM2 (wx) : ORIGIN = 0xd0000000, LENGTH = 0x00000000
  PPB (wx) : ORIGIN = 0xe0000000, LENGTH = 0x00100000
}

SECTIONS
{
  __ITCM_segment_start__ = 0x00000000;
  __ITCM_segment_end__ = 0x00010000;
  __ITCM_segment_size__ = 0x00010000;
  __FLASH_segment_start__ = 0x08000000;
  __FLASH_segment_end__ = 0x08200000;
  __FLASH_segment_size__ = 0x00200000;
  __SYSTEM_segment_start__ = 0x1fff0000;
  __SYSTEM_segment_end__ = 0x20010000;
  __SYSTEM_segment_size__ = 0x00020000;
  __RAM_segment_start__ = 0x20000000;
  __RAM_segment_end__ = 0x20020000;
  __RAM_segment_size__ = 0x00020000;
  __DTCM_segment_start__ = 0x20000000;
  __DTCM_segment_end__ = 0x20020000;
  __DTCM_segment_size__ = 0x00020000;
  __AXISRAM_segment_start__ = 0x24000000;
  __AXISRAM_segment_end__ = 0x24080000;
  __AXISRAM_segment_size__ = 0x00080000;
  __SRAM1_segment_start__ = 0x30000000;
  __SRAM1_segment_end__ = 0x30020000;
  __SRAM1_segment_size__ = 0x00020000;
  __SRAM2_segment_start__ = 0x30020000;
  __SRAM2_segment_end__ = 0x30040000;
  __SRAM2_segment_size__ = 0x00020000;
  __SRAM3_segment_start__ = 0x30040000;
  __SRAM3_segment_end__ = 0x30048000;
  __SRAM3_segment_size__ = 0x00008000;
  __SRAM4_segment_start__ = 0x38000000;
  __SRAM4_segment_end__ = 0x38010000;
  __SRAM4_segment_size__ = 0x00010000;
  __BackupSRAM_segment_start__ = 0x38800000;
  __BackupSRAM_segment_end__ = 0x38801000;
  __BackupSRAM_segment_size__ = 0x00001000;
  __APB1_segment_start__ = 0x40000000;
  __APB1_segment_end__ = 0x4000d400;
  __APB1_segment_size__ = 0x0000d400;
  __APB2_segment_start__ = 0x40010000;
  __APB2_segment_end__ = 0x40027800;
  __APB2_segment_size__ = 0x00017800;
  __AHB1_segment_start__ = 0x40020000;
  __AHB1_segment_end__ = 0x400e0000;
  __AHB1_segment_size__ = 0x000c0000;
  __AHB2_segment_start__ = 0x48020000;
  __AHB2_segment_end__ = 0x48022c00;
  __AHB2_segment_size__ = 0x00002c00;
  __APB3_segment_start__ = 0x50000000;
  __APB3_segment_end__ = 0x50004000;
  __APB3_segment_size__ = 0x00004000;
  __AHB3_segment_start__ = 0x51000000;
  __AHB3_segment_end__ = 0x52008000;
  __AHB3_segment_size__ = 0x01008000;
  __APB4_segment_start__ = 0x58000000;
  __APB4_segment_end__ = 0x58026800;
  __APB4_segment_size__ = 0x00026800;
  __DBGMCU_segment_start__ = 0x5c001000;
  __DBGMCU_segment_end__ = 0x5c001058;
  __DBGMCU_segment_size__ = 0x00000058;
  __NOR_PSRAM1_segment_start__ = 0x60000000;
  __NOR_PSRAM1_segment_end__ = 0x60000000;
  __NOR_PSRAM1_segment_size__ = 0x00000000;
  __NOR_PSRAM2_segment_start__ = 0x64000000;
  __NOR_PSRAM2_segment_end__ = 0x64000000;
  __NOR_PSRAM2_segment_size__ = 0x00000000;
  __NOR_PSRAM3_segment_start__ = 0x68000000;
  __NOR_PSRAM3_segment_end__ = 0x68000000;
  __NOR_PSRAM3_segment_size__ = 0x00000000;
  __NOR_PSRAM4_segment_start__ = 0x6c000000;
  __NOR_PSRAM4_segment_end__ = 0x6c000000;
  __NOR_PSRAM4_segment_size__ = 0x00000000;
  __NAND_segment_start__ = 0x80000000;
  __NAND_segment_end__ = 0x80000000;
  __NAND_segment_size__ = 0x00000000;
  __QUADSPI_FLASH_segment_start__ = 0x90000000;
  __QUADSPI_FLASH_segment_end__ = 0x90000000;
  __QUADSPI_FLASH_segment_size__ = 0x00000000;
  __FMC_segment_start__ = 0xa0000000;
  __FMC_segment_end__ = 0xa0001000;
  __FMC_segment_size__ = 0x00001000;
  __QUADSPI_segment_start__ = 0xa0001000;
  __QUADSPI_segment_end__ = 0xa0001400;
  __QUADSPI_segment_size__ = 0x00000400;
  __SDRAM1_segment_start__ = 0xc0000000;
  __SDRAM1_segment_end__ = 0xc0000000;
  __SDRAM1_segment_size__ = 0x00000000;
  __SDRAM2_segment_start__ = 0xd0000000;
  __SDRAM2_segment_end__ = 0xd0000000;
  __SDRAM2_segment_size__ = 0x00000000;
  __PPB_segment_start__ = 0xe0000000;
  __PPB_segment_end__ = 0xe0100000;
  __PPB_segment_size__ = 0x00100000;

  __HEAPSIZE__ = 450000;
  __STACKSIZE_ABT__ = 0;
  __STACKSIZE_FIQ__ = 0;
  __STACKSIZE_IRQ__ = 0;
  __STACKSIZE_PROCESS__ = 0;
  __STACKSIZE_SVC__ = 0;
  __STACKSIZE_UND__ = 0;
  __STACKSIZE__ = 30000;

  __qspi_load_start__ = ALIGN(__QUADSPI_FLASH_segment_start__ , 4);
  .qspi ALIGN(__QUADSPI_FLASH_segment_start__ , 4) : AT(ALIGN(__QUADSPI_FLASH_segment_start__ , 4))
  {
    __qspi_start__ = .;
    *(.qspi .qspi.*)
  }
  __qspi_end__ = __qspi_start__ + SIZEOF(.qspi);
  __qspi_size__ = SIZEOF(.qspi);
  __qspi_load_end__ = __qspi_end__;

  __QUADSPI_FLASH_segment_used_end__ = ALIGN(__QUADSPI_FLASH_segment_start__ , 4) + SIZEOF(.qspi);
  __QUADSPI_FLASH_segment_used_size__ = __QUADSPI_FLASH_segment_used_end__ - __QUADSPI_FLASH_segment_start__;

  . = ASSERT(__qspi_start__ == __qspi_end__ || (__qspi_end__ >= __QUADSPI_FLASH_segment_start__ && __qspi_end__ <= __QUADSPI_FLASH_segment_end__) , "error: .qspi is too large to fit in QUADSPI_FLASH memory segment");

  __dtcm_load_start__ = ALIGN(__DTCM_segment_start__ , 4);
  .dtcm ALIGN(__DTCM_segment_start__ , 4) (NOLOAD) : AT(ALIGN(__DTCM_segment_start__ , 4))
  {
    __dtcm_start__ = .;
    *(.dtcm .dtcm.*)
  }
  __dtcm_end__ = __dtcm_start__ + SIZEOF(.dtcm);
  __dtcm_size__ = SIZEOF(.dtcm);
  __dtcm_load_end__ = __dtcm_end__;

  __DTCM_segment_used_end__ = ALIGN(__DTCM_segment_start__ , 4) + SIZEOF(.dtcm);
  __DTCM_segment_used_size__ = __DTCM_segment_used_end__ - __DTCM_segment_start__;

  . = ASSERT(__dtcm_start__ == __dtcm_end__ || (__dtcm_end__ >= __DTCM_segment_start__ && __dtcm_end__ <= __DTCM_segment_end__) , "error: .dtcm is too large to fit in DTCM memory segment");

  __bsram_load_start__ = ALIGN(__BackupSRAM_segment_start__ , 4);
  .bsram ALIGN(__BackupSRAM_segment_start__ , 4) (NOLOAD) : AT(ALIGN(__BackupSRAM_segment_start__ , 4))
  {
    __bsram_start__ = .;
    *(.bsram .bsram.*)
  }
  __bsram_end__ = __bsram_start__ + SIZEOF(.bsram);
  __bsram_size__ = SIZEOF(.bsram);
  __bsram_load_end__ = __bsram_end__;

  __BackupSRAM_segment_used_end__ = ALIGN(__BackupSRAM_segment_start__ , 4) + SIZEOF(.bsram);
  __BackupSRAM_segment_used_size__ = __BackupSRAM_segment_used_end__ - __BackupSRAM_segment_start__;

  . = ASSERT(__bsram_start__ == __bsram_end__ || (__bsram_end__ >= __BackupSRAM_segment_start__ && __bsram_end__ <= __BackupSRAM_segment_end__) , "error: .bsram is too large to fit in BackupSRAM memory segment");

  __sram4_load_start__ = ALIGN(__SRAM4_segment_start__ , 4);
  .sram4 ALIGN(__SRAM4_segment_start__ , 4) (NOLOAD) : AT(ALIGN(__SRAM4_segment_start__ , 4))
  {
    __sram4_start__ = .;
    *(.sram4 .sram4.*)
  }
  __sram4_end__ = __sram4_start__ + SIZEOF(.sram4);
  __sram4_size__ = SIZEOF(.sram4);
  __sram4_load_end__ = __sram4_end__;

  __SRAM4_segment_used_end__ = ALIGN(__SRAM4_segment_start__ , 4) + SIZEOF(.sram4);
  __SRAM4_segment_used_size__ = __SRAM4_segment_used_end__ - __SRAM4_segment_start__;

  . = ASSERT(__sram4_start__ == __sram4_end__ || (__sram4_end__ >= __SRAM4_segment_start__ && __sram4_end__ <= __SRAM4_segment_end__) , "error: .sram4 is too large to fit in SRAM4 memory segment");

  __sram3_load_start__ = ALIGN(__SRAM3_segment_start__ , 4);
  .sram3 ALIGN(__SRAM3_segment_start__ , 4) (NOLOAD) : AT(ALIGN(__SRAM3_segment_start__ , 4))
  {
    __sram3_start__ = .;
    *(.sram3 .sram3.*)
  }
  __sram3_end__ = __sram3_start__ + SIZEOF(.sram3);
  __sram3_size__ = SIZEOF(.sram3);
  __sram3_load_end__ = __sram3_end__;

  __SRAM3_segment_used_end__ = ALIGN(__SRAM3_segment_start__ , 4) + SIZEOF(.sram3);
  __SRAM3_segment_used_size__ = __SRAM3_segment_used_end__ - __SRAM3_segment_start__;

  . = ASSERT(__sram3_start__ == __sram3_end__ || (__sram3_end__ >= __SRAM3_segment_start__ && __sram3_end__ <= __SRAM3_segment_end__) , "error: .sram3 is too large to fit in SRAM3 memory segment");

  __sram2_load_start__ = ALIGN(__SRAM2_segment_start__ , 4);
  .sram2 ALIGN(__SRAM2_segment_start__ , 4) (NOLOAD) : AT(ALIGN(__SRAM2_segment_start__ , 4))
  {
    __sram2_start__ = .;
    *(.sram2 .sram2.*)
  }
  __sram2_end__ = __sram2_start__ + SIZEOF(.sram2);
  __sram2_size__ = SIZEOF(.sram2);
  __sram2_load_end__ = __sram2_end__;

  __SRAM2_segment_used_end__ = ALIGN(__SRAM2_segment_start__ , 4) + SIZEOF(.sram2);
  __SRAM2_segment_used_size__ = __SRAM2_segment_used_end__ - __SRAM2_segment_start__;

  . = ASSERT(__sram2_start__ == __sram2_end__ || (__sram2_end__ >= __SRAM2_segment_start__ && __sram2_end__ <= __SRAM2_segment_end__) , "error: .sram2 is too large to fit in SRAM2 memory segment");

  __sram1_load_start__ = ALIGN(__SRAM1_segment_start__ , 4);
  .sram1 ALIGN(__SRAM1_segment_start__ , 4) (NOLOAD) : AT(ALIGN(__SRAM1_segment_start__ , 4))
  {
    __sram1_start__ = .;
    *(.sram1 .sram1.*)
  }
  __sram1_end__ = __sram1_start__ + SIZEOF(.sram1);
  __sram1_size__ = SIZEOF(.sram1);
  __sram1_load_end__ = __sram1_end__;

  __SRAM1_segment_used_end__ = ALIGN(__SRAM1_segment_start__ , 4) + SIZEOF(.sram1);
  __SRAM1_segment_used_size__ = __SRAM1_segment_used_end__ - __SRAM1_segment_start__;

  . = ASSERT(__sram1_start__ == __sram1_end__ || (__sram1_end__ >= __SRAM1_segment_start__ && __sram1_end__ <= __SRAM1_segment_end__) , "error: .sram1 is too large to fit in SRAM1 memory segment");

  __vectors_ram_load_start__ = ALIGN(__AXISRAM_segment_start__ , 256);
  .vectors_ram ALIGN(__AXISRAM_segment_start__ , 256) (NOLOAD) : AT(ALIGN(__AXISRAM_segment_start__ , 256))
  {
    __vectors_ram_start__ = .;
    *(.vectors_ram .vectors_ram.*)
  }
  __vectors_ram_end__ = __vectors_ram_start__ + SIZEOF(.vectors_ram);
  __vectors_ram_size__ = SIZEOF(.vectors_ram);
  __vectors_ram_load_end__ = __vectors_ram_end__;

  . = ASSERT(__vectors_ram_start__ == __vectors_ram_end__ || (__vectors_ram_end__ >= __AXISRAM_segment_start__ && __vectors_ram_end__ <= __AXISRAM_segment_end__) , "error: .vectors_ram is too large to fit in AXISRAM memory segment");

  __vectors_load_start__ = ALIGN(__FLASH_segment_start__ , 256);
  .vectors ALIGN(__FLASH_segment_start__ , 256) : AT(ALIGN(__FLASH_segment_start__ , 256))
  {
    __vectors_start__ = .;
    *(.vectors .vectors.*)
  }
  __vectors_end__ = __vectors_start__ + SIZEOF(.vectors);
  __vectors_size__ = SIZEOF(.vectors);
  __vectors_load_end__ = __vectors_end__;

  . = ASSERT(__vectors_start__ == __vectors_end__ || (__vectors_end__ >= __FLASH_segment_start__ && __vectors_end__ <= __FLASH_segment_end__) , "error: .vectors is too large to fit in FLASH memory segment");

  __init_load_start__ = ALIGN(__vectors_end__ , 4);
  .init ALIGN(__vectors_end__ , 4) : AT(ALIGN(__vectors_end__ , 4))
  {
    __init_start__ = .;
    *(.init .init.*)
  }
  __init_end__ = __init_start__ + SIZEOF(.init);
  __init_size__ = SIZEOF(.init);
  __init_load_end__ = __init_end__;

  . = ASSERT(__init_start__ == __init_end__ || (__init_end__ >= __FLASH_segment_start__ && __init_end__ <= __FLASH_segment_end__) , "error: .init is too large to fit in FLASH memory segment");

  __text_load_start__ = ALIGN(__init_end__ , 4);
  .text ALIGN(__init_end__ , 4) : AT(ALIGN(__init_end__ , 4))
  {
    __text_start__ = .;
    *(.text .text.* .glue_7t .glue_7 .gnu.linkonce.t.* .gcc_except_table)
  }
  __text_end__ = __text_start__ + SIZEOF(.text);
  __text_size__ = SIZEOF(.text);
  __text_load_end__ = __text_end__;

  . = ASSERT(__text_start__ == __text_end__ || (__text_end__ >= __FLASH_segment_start__ && __text_end__ <= __FLASH_segment_end__) , "error: .text is too large to fit in FLASH memory segment");

  __dtors_load_start__ = ALIGN(__text_end__ , 4);
  .dtors ALIGN(__text_end__ , 4) : AT(ALIGN(__text_end__ , 4))
  {
    __dtors_start__ = .;
    KEEP (*(SORT(.dtors.*))) KEEP (*(.dtors))
  }
  __dtors_end__ = __dtors_start__ + SIZEOF(.dtors);
  __dtors_size__ = SIZEOF(.dtors);
  __dtors_load_end__ = __dtors_end__;

  . = ASSERT(__dtors_start__ == __dtors_end__ || (__dtors_end__ >= __FLASH_segment_start__ && __dtors_end__ <= __FLASH_segment_end__) , "error: .dtors is too large to fit in FLASH memory segment");

  __ctors_load_start__ = ALIGN(__dtors_end__ , 4);
  .ctors ALIGN(__dtors_end__ , 4) : AT(ALIGN(__dtors_end__ , 4))
  {
    __ctors_start__ = .;
    KEEP (*(SORT(.ctors.*))) KEEP (*(.ctors))
  }
  __ctors_end__ = __ctors_start__ + SIZEOF(.ctors);
  __ctors_size__ = SIZEOF(.ctors);
  __ctors_load_end__ = __ctors_end__;

  . = ASSERT(__ctors_start__ == __ctors_end__ || (__ctors_end__ >= __FLASH_segment_start__ && __ctors_end__ <= __FLASH_segment_end__) , "error: .ctors is too large to fit in FLASH memory segment");

  __rodata_load_start__ = ALIGN(__ctors_end__ , 4);
  .rodata ALIGN(__ctors_end__ , 4) : AT(ALIGN(__ctors_end__ , 4))
  {
    __rodata_start__ = .;
    *(.rodata .rodata.* .gnu.linkonce.r.*)
  }
  __rodata_end__ = __rodata_start__ + SIZEOF(.rodata);
  __rodata_size__ = SIZEOF(.rodata);
  __rodata_load_end__ = __rodata_end__;

  . = ASSERT(__rodata_start__ == __rodata_end__ || (__rodata_end__ >= __FLASH_segment_start__ && __rodata_end__ <= __FLASH_segment_end__) , "error: .rodata is too large to fit in FLASH memory segment");

  __ARM.extab_load_start__ = ALIGN(__rodata_end__ , 4);
  .ARM.extab ALIGN(__rodata_end__ , 4) : AT(ALIGN(__rodata_end__ , 4))
  {
    __ARM.extab_start__ = .;
    *(.ARM.extab*)
  }
  __ARM.extab_end__ = __ARM.extab_start__ + SIZEOF(.ARM.extab);
  __ARM.extab_size__ = SIZEOF(.ARM.extab);
  __ARM.extab_load_end__ = __ARM.extab_end__;

  . = ASSERT(__ARM.extab_start__ == __ARM.extab_end__ || (__ARM.extab_end__ >= __FLASH_segment_start__ && __ARM.extab_end__ <= __FLASH_segment_end__) , "error: .ARM.extab is too large to fit in FLASH memory segment");

  __ARM.exidx_load_start__ = ALIGN(__ARM.extab_end__ , 4);
  .ARM.exidx ALIGN(__ARM.extab_end__ , 4) : AT(ALIGN(__ARM.extab_end__ , 4))
  {
    __ARM.exidx_start__ = .;
    __exidx_start =   __ARM.exidx_start__;
    *(.ARM.exidx*)
  }
  __ARM.exidx_end__ = __ARM.exidx_start__ + SIZEOF(.ARM.exidx);
  __ARM.exidx_size__ = SIZEOF(.ARM.exidx);
  __exidx_end =   __ARM.exidx_end__;
  __ARM.exidx_load_end__ = __ARM.exidx_end__;

  . = ASSERT(__ARM.exidx_start__ == __ARM.exidx_end__ || (__ARM.exidx_end__ >= __FLASH_segment_start__ && __ARM.exidx_end__ <= __FLASH_segment_end__) , "error: .ARM.exidx is too large to fit in FLASH memory segment");

  __data_load_start__ = ALIGN(__ARM.exidx_end__ , 4);
  .data ALIGN(__vectors_ram_end__ , 4) : AT(ALIGN(__ARM.exidx_end__ , 4))
  {
    __data_start__ = .;
    *(.data .data.* .gnu.linkonce.d.*)
  }
  __data_end__ = __data_start__ + SIZEOF(.data);
  __data_size__ = SIZEOF(.data);
  __data_load_end__ = __data_load_start__ + SIZEOF(.data);

  . = ASSERT(__data_load_start__ == __data_load_end__ || (__data_load_end__ >= __FLASH_segment_start__ && __data_load_end__ <= __FLASH_segment_end__) , "error: .data is too large to fit in FLASH memory segment");

  .data_run ALIGN(__vectors_ram_end__ , 4) (NOLOAD) :
  {
    __data_run_start__ = .;
    . = MAX(__data_run_start__ + SIZEOF(.data), .);
  }
  __data_run_end__ = __data_run_start__ + SIZEOF(.data_run);
  __data_run_size__ = SIZEOF(.data_run);
  __data_run_load_end__ = __data_run_end__;

  . = ASSERT(__data_run_start__ == __data_run_end__ || (__data_run_end__ >= __AXISRAM_segment_start__ && __data_run_end__ <= __AXISRAM_segment_end__) , "error: .data_run is too large to fit in AXISRAM memory segment");

  __bss_load_start__ = ALIGN(__data_run_end__ , 4);
  .bss ALIGN(__data_run_end__ , 4) (NOLOAD) : AT(ALIGN(__data_run_end__ , 4))
  {
    __bss_start__ = .;
    *(.bss .bss.* .gnu.linkonce.b.*) *(COMMON)
  }
  __bss_end__ = __bss_start__ + SIZEOF(.bss);
  __bss_size__ = SIZEOF(.bss);
  __bss_load_end__ = __bss_end__;

  . = ASSERT(__bss_start__ == __bss_end__ || (__bss_end__ >= __AXISRAM_segment_start__ && __bss_end__ <= __AXISRAM_segment_end__) , "error: .bss is too large to fit in AXISRAM memory segment");

  __non_init_load_start__ = ALIGN(__bss_end__ , 4);
  .non_init ALIGN(__bss_end__ , 4) (NOLOAD) : AT(ALIGN(__bss_end__ , 4))
  {
    __non_init_start__ = .;
    *(.non_init .non_init.*)
  }
  __non_init_end__ = __non_init_start__ + SIZEOF(.non_init);
  __non_init_size__ = SIZEOF(.non_init);
  __non_init_load_end__ = __non_init_end__;

  . = ASSERT(__non_init_start__ == __non_init_end__ || (__non_init_end__ >= __AXISRAM_segment_start__ && __non_init_end__ <= __AXISRAM_segment_end__) , "error: .non_init is too large to fit in AXISRAM memory segment");

  __heap_load_start__ = ALIGN(__non_init_end__ , 4);
  .heap ALIGN(__non_init_end__ , 4) (NOLOAD) : AT(ALIGN(__non_init_end__ , 4))
  {
    __heap_start__ = .;
    *(.heap .heap.*)
    . = ALIGN(MAX(__heap_start__ + __HEAPSIZE__ , .), 4);
  }
  __heap_end__ = __heap_start__ + SIZEOF(.heap);
  __heap_size__ = SIZEOF(.heap);
  __heap_load_end__ = __heap_end__;

  . = ASSERT(__heap_start__ == __heap_end__ || (__heap_end__ >= __AXISRAM_segment_start__ && __heap_end__ <= __AXISRAM_segment_end__) , "error: .heap is too large to fit in AXISRAM memory segment");

  __stack_load_start__ = ALIGN(__heap_end__ , 4);
  .stack ALIGN(__heap_end__ , 4) (NOLOAD) : AT(ALIGN(__heap_end__ , 4))
  {
    __stack_start__ = .;
    *(.stack .stack.*)
    . = ALIGN(MAX(__stack_start__ + __STACKSIZE__ , .), 4);
  }
  __stack_end__ = __stack_start__ + SIZEOF(.stack);
  __stack_size__ = SIZEOF(.stack);
  __stack_load_end__ = __stack_end__;

  . = ASSERT(__stack_start__ == __stack_end__ || (__stack_end__ >= __AXISRAM_segment_start__ && __stack_end__ <= __AXISRAM_segment_end__) , "error: .stack is too large to fit in AXISRAM memory segment");

  __stack_process_load_start__ = ALIGN(__stack_end__ , 4);
  .stack_process ALIGN(__stack_end__ , 4) (NOLOAD) : AT(ALIGN(__stack_end__ , 4))
  {
    __stack_process_start__ = .;
    *(.stack_process .stack_process.*)
    . = ALIGN(MAX(__stack_process_start__ + __STACKSIZE_PROCESS__ , .), 4);
  }
  __stack_process_end__ = __stack_process_start__ + SIZEOF(.stack_process);
  __stack_process_size__ = SIZEOF(.stack_process);
  __stack_process_load_end__ = __stack_process_end__;

  . = ASSERT(__stack_process_start__ == __stack_process_end__ || (__stack_process_end__ >= __AXISRAM_segment_start__ && __stack_process_end__ <= __AXISRAM_segment_end__) , "error: .stack_process is too large to fit in AXISRAM memory segment");

  __fast_load_start__ = ALIGN(__data_load_start__ + SIZEOF(.data) , 4);
  .fast ALIGN(__stack_process_end__ , 4) : AT(ALIGN(__data_load_start__ + SIZEOF(.data) , 4))
  {
    __fast_start__ = .;
    *(.fast .fast.*)
  }
  __fast_end__ = __fast_start__ + SIZEOF(.fast);
  __fast_size__ = SIZEOF(.fast);
  __fast_load_end__ = __fast_load_start__ + SIZEOF(.fast);

  . = ASSERT(__fast_load_start__ == __fast_load_end__ || (__fast_load_end__ >= __FLASH_segment_start__ && __fast_load_end__ <= __FLASH_segment_end__) , "error: .fast is too large to fit in FLASH memory segment");

  .fast_run ALIGN(__stack_process_end__ , 4) (NOLOAD) :
  {
    __fast_run_start__ = .;
    . = MAX(__fast_run_start__ + SIZEOF(.fast), .);
  }
  __fast_run_end__ = __fast_run_start__ + SIZEOF(.fast_run);
  __fast_run_size__ = SIZEOF(.fast_run);
  __fast_run_load_end__ = __fast_run_end__;

  . = ASSERT(__fast_run_start__ == __fast_run_end__ || (__fast_run_end__ >= __AXISRAM_segment_start__ && __fast_run_end__ <= __AXISRAM_segment_end__) , "error: .fast_run is too large to fit in AXISRAM memory segment");

  __tbss_load_start__ = ALIGN(__fast_run_end__ , 4);
  .tbss ALIGN(__fast_run_end__ , 4) (NOLOAD) : AT(ALIGN(__fast_run_end__ , 4))
  {
    __tbss_start__ = .;
    *(.tbss .tbss.*)
  }
  __tbss_end__ = __tbss_start__ + SIZEOF(.tbss);
  __tbss_size__ = SIZEOF(.tbss);
  __tbss_load_end__ = __tbss_end__;

  . = ASSERT(__tbss_start__ == __tbss_end__ || (__tbss_end__ >= __AXISRAM_segment_start__ && __tbss_end__ <= __AXISRAM_segment_end__) , "error: .tbss is too large to fit in AXISRAM memory segment");

  __tdata_load_start__ = ALIGN(__fast_load_start__ + SIZEOF(.fast) , 4);
  .tdata ALIGN(__tbss_end__ , 4) : AT(ALIGN(__fast_load_start__ + SIZEOF(.fast) , 4))
  {
    __tdata_start__ = .;
    *(.tdata .tdata.*)
  }
  __tdata_end__ = __tdata_start__ + SIZEOF(.tdata);
  __tdata_size__ = SIZEOF(.tdata);
  __tdata_load_end__ = __tdata_load_start__ + SIZEOF(.tdata);

  __FLASH_segment_used_end__ = ALIGN(__fast_load_start__ + SIZEOF(.fast) , 4) + SIZEOF(.tdata);
  __FLASH_segment_used_size__ = __FLASH_segment_used_end__ - __FLASH_segment_start__;

  . = ASSERT(__tdata_load_start__ == __tdata_load_end__ || (__tdata_load_end__ >= __FLASH_segment_start__ && __tdata_load_end__ <= __FLASH_segment_end__) , "error: .tdata is too large to fit in FLASH memory segment");

  .tdata_run ALIGN(__tbss_end__ , 4) (NOLOAD) :
  {
    __tdata_run_start__ = .;
    . = MAX(__tdata_run_start__ + SIZEOF(.tdata), .);
  }
  __tdata_run_end__ = __tdata_run_start__ + SIZEOF(.tdata_run);
  __tdata_run_size__ = SIZEOF(.tdata_run);
  __tdata_run_load_end__ = __tdata_run_end__;

  __AXISRAM_segment_used_end__ = ALIGN(__tbss_end__ , 4) + SIZEOF(.tdata_run);
  __AXISRAM_segment_used_size__ = __AXISRAM_segment_used_end__ - __AXISRAM_segment_start__;

  . = ASSERT(__tdata_run_start__ == __tdata_run_end__ || (__tdata_run_end__ >= __AXISRAM_segment_start__ && __tdata_run_end__ <= __AXISRAM_segment_end__) , "error: .tdata_run is too large to fit in AXISRAM memory segment");

}

