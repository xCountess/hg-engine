.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_260", 0

a010_260:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 278
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2036, 0
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    jumpifside 0, _00F8, _0178
    end
_00F8:
    wait 15
    loop 2
    playsepan 1821, 117
    callfunction 57, 4, 4, 0, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    callfunction 57, 4, 4, 0, -8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    doloop
    wait 30
    waitparticle
    unloadparticle 0
    end
_0178:
    wait 15
    loop 2
    playsepan 1821, 117
    callfunction 57, 4, 4, 0, -8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    callfunction 57, 4, 4, 0, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    doloop
    wait 30
    waitparticle
    unloadparticle 0
    end

.close
