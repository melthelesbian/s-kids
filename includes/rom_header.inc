INCLUDE "includes/hardware.inc"

ROM_HEADER:
.entry_point:
    nop
    jp $150
.header_data
    NINTENDO_LOGO
    db "SURVIVALKID" ; title
    db "AVKE" ; manufacturer code
    db CART_COMPATIBLE_DMG_GBC
    db "A4" ; licensee
    db CART_COMPATIBLE_SGB
    db CART_ROM_MBC5_RAM_BAT
    db CART_ROM_1M
    db CART_RAM_128K
    db CART_DESTINATION_NON_JAPAN
    db $33 ; legacy licensee code
    db $00 ; rom version
    db $00 ; local checksum
    db $00,$00 ; global checksum
