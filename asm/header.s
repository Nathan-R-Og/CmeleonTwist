.section .data

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80025C00       /* Entrypoint address */
.word 0x00001447       /* Revision */
.word 0xA4F2F521       /* Checksum 1 */
.word 0xF0EB168E       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "Chameleon Twist     " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x0000004E       /* Cartridge */
.ascii "CT"            /* Cartridge ID */
.ascii "J"             /* Country code */
.byte 0x00             /* Version */
