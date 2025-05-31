.class public Lde/fgerbig/spacepeng/services/EntityFactory;
.super Ljava/lang/Object;
.source "EntityFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlien(Lcom/artemis/World;FFI)Lcom/artemis/Entity;
    .locals 10
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "groupId"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v3

    .line 128
    .local v3, "e":Lcom/artemis/Entity;
    new-instance v1, Lde/fgerbig/spacepeng/components/BasePosition;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/components/BasePosition;-><init>()V

    .line 129
    .local v1, "basePosition":Lde/fgerbig/spacepeng/components/BasePosition;
    iput p1, v1, Lde/fgerbig/spacepeng/components/BasePosition;->x:F

    .line 130
    iput p2, v1, Lde/fgerbig/spacepeng/components/BasePosition;->y:F

    .line 131
    invoke-virtual {v3}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 133
    new-instance v5, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 134
    .local v5, "position":Lde/fgerbig/spacepeng/components/Position;
    iput p1, v5, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 135
    iput p2, v5, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 136
    invoke-virtual {v3}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 138
    new-instance v6, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v6}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 139
    .local v6, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v7, "alien"

    iput-object v7, v6, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 140
    sget-object v7, Lde/fgerbig/spacepeng/components/Sprite$Layer;->ACTORS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v7, v6, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 141
    invoke-virtual {v3}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 143
    new-instance v2, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/collision/CircleBounds;-><init>()V

    .line 144
    .local v2, "bounds":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    const/high16 v7, 0x41600000    # 14.0f

    iput v7, v2, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    .line 145
    invoke-virtual {v3}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 147
    new-instance v4, Lde/fgerbig/spacepeng/components/PathMovement;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/components/PathMovement;-><init>()V

    .line 148
    .local v4, "pathMovement":Lde/fgerbig/spacepeng/components/PathMovement;
    invoke-virtual {v3}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 150
    new-instance v0, Lde/fgerbig/spacepeng/components/Alien;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/Alien;-><init>()V

    .line 151
    .local v0, "alien":Lde/fgerbig/spacepeng/components/Alien;
    invoke-virtual {v3}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 153
    const-class v7, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v7}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v7

    check-cast v7, Lcom/artemis/managers/GroupManager;

    const-string v8, "aliens"

    invoke-virtual {v7, v3, v8}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 154
    const-class v7, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v7}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v7

    check-cast v7, Lcom/artemis/managers/GroupManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attack"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 156
    return-object v3
.end method

.method public static createAlienBoss(Lcom/artemis/World;FFFLjava/lang/String;)Lcom/artemis/Entity;
    .locals 11
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "health"    # F
    .param p4, "pathFunctionId"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v4

    .line 162
    .local v4, "e":Lcom/artemis/Entity;
    new-instance v2, Lde/fgerbig/spacepeng/components/BasePosition;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/BasePosition;-><init>()V

    .line 163
    .local v2, "basePosition":Lde/fgerbig/spacepeng/components/BasePosition;
    iput p1, v2, Lde/fgerbig/spacepeng/components/BasePosition;->x:F

    .line 164
    iput p2, v2, Lde/fgerbig/spacepeng/components/BasePosition;->y:F

    .line 165
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 167
    new-instance v7, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v7}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 168
    .local v7, "position":Lde/fgerbig/spacepeng/components/Position;
    iput p1, v7, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 169
    iput p2, v7, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 170
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 172
    new-instance v8, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v8}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 173
    .local v8, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v9, "alienboss"

    iput-object v9, v8, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 174
    sget-object v9, Lde/fgerbig/spacepeng/components/Sprite$Layer;->ACTORS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v9, v8, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 175
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 177
    new-instance v3, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/collision/CircleBounds;-><init>()V

    .line 178
    .local v3, "bounds":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    const/high16 v9, 0x42780000    # 62.0f

    iput v9, v3, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    .line 179
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 181
    new-instance v5, Lde/fgerbig/spacepeng/components/Health;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/Health;-><init>()V

    .line 182
    .local v5, "h":Lde/fgerbig/spacepeng/components/Health;
    iput p3, v5, Lde/fgerbig/spacepeng/components/Health;->maximumHealth:F

    iput p3, v5, Lde/fgerbig/spacepeng/components/Health;->health:F

    .line 183
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 185
    new-instance v6, Lde/fgerbig/spacepeng/components/PathMovement;

    invoke-direct {v6}, Lde/fgerbig/spacepeng/components/PathMovement;-><init>()V

    .line 186
    .local v6, "pathMovement":Lde/fgerbig/spacepeng/components/PathMovement;
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 188
    new-instance v1, Lde/fgerbig/spacepeng/components/AttackPathMovement;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/components/AttackPathMovement;-><init>()V

    .line 189
    .local v1, "attackPathMovement":Lde/fgerbig/spacepeng/components/AttackPathMovement;
    iput-object p4, v1, Lde/fgerbig/spacepeng/components/AttackPathMovement;->pathFunctionId:Ljava/lang/String;

    .line 190
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 192
    new-instance v0, Lde/fgerbig/spacepeng/components/Alien;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/Alien;-><init>()V

    .line 193
    .local v0, "alien":Lde/fgerbig/spacepeng/components/Alien;
    invoke-virtual {v4}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 195
    const-class v9, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v9}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v9

    check-cast v9, Lcom/artemis/managers/GroupManager;

    const-string v10, "aliens"

    invoke-virtual {v9, v4, v10}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 196
    const-class v9, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v9}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v9

    check-cast v9, Lcom/artemis/managers/GroupManager;

    const-string v10, "attack999"

    invoke-virtual {v9, v4, v10}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 198
    return-object v4
.end method

.method public static createAlienBossExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;
    .locals 4
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 307
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, p1, p2, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createExplosion(Lcom/artemis/World;FFF)Lcom/artemis/Entity;

    move-result-object v0

    .line 308
    .local v0, "e":Lcom/artemis/Entity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 309
    invoke-static {p0, p1, p2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createParticle(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_0
    sget-object v2, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v3, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_BOSS_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v2, v3}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 314
    return-object v0
.end method

.method public static createAlienExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;
    .locals 4
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 296
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {p0, p1, p2, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createExplosion(Lcom/artemis/World;FFF)Lcom/artemis/Entity;

    move-result-object v0

    .line 297
    .local v0, "e":Lcom/artemis/Entity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 298
    invoke-static {p0, p1, p2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createParticle(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_0
    sget-object v2, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v3, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v2, v3}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 303
    return-object v0
.end method

.method public static createAlienMultiShot(Lcom/artemis/World;FF)V
    .locals 8
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v6, -0x3ee00000    # -10.0f

    const/high16 v5, 0x41200000    # 10.0f

    .line 234
    invoke-static {p0, p1, p2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 236
    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    int-to-float v1, v1

    invoke-static {v5, v7}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v4

    mul-float v0, v1, v4

    .line 238
    .local v0, "displacement":F
    add-float v1, p1, v0

    invoke-static {v6, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v4

    add-float/2addr v4, p2

    invoke-static {p0, v1, v4}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 240
    .end local v0    # "displacement":F
    :cond_0
    const v1, 0x3ea8f5c3    # 0.33f

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    int-to-float v1, v2

    invoke-static {v5, v7}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v2

    mul-float v0, v1, v2

    .line 242
    .restart local v0    # "displacement":F
    add-float v1, p1, v0

    invoke-static {v6, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v2

    add-float/2addr v2, p2

    invoke-static {p0, v1, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 244
    .end local v0    # "displacement":F
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 237
    goto :goto_0

    :cond_3
    move v2, v3

    .line 241
    goto :goto_1
.end method

.method public static createAlienShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;
    .locals 8
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v1

    .line 204
    .local v1, "e":Lcom/artemis/Entity;
    new-instance v3, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 205
    .local v3, "position":Lde/fgerbig/spacepeng/components/Position;
    iput p1, v3, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 206
    iput p2, v3, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 207
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 209
    new-instance v4, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 210
    .local v4, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v6, "alienShot"

    iput-object v6, v4, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 211
    sget-object v6, Lde/fgerbig/spacepeng/components/Sprite$Layer;->EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v6, v4, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 212
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 214
    new-instance v5, Lde/fgerbig/spacepeng/components/Velocity;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/Velocity;-><init>()V

    .line 215
    .local v5, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    const/high16 v6, -0x3c380000    # -400.0f

    iput v6, v5, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    .line 216
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 218
    new-instance v0, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;-><init>()V

    .line 219
    .local v0, "bounds":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v0, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    .line 220
    const/high16 v6, 0x41200000    # 10.0f

    iput v6, v0, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    .line 221
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 223
    new-instance v2, Lde/fgerbig/spacepeng/components/OffScreenRemove;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/OffScreenRemove;-><init>()V

    .line 224
    .local v2, "offScreenRemove":Lde/fgerbig/spacepeng/components/OffScreenRemove;
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 226
    sget-object v6, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v7, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v6, v7}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 228
    const-class v6, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v6}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v6

    check-cast v6, Lcom/artemis/managers/GroupManager;

    const-string v7, "alienShots"

    invoke-virtual {v6, v1, v7}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 230
    return-object v1
.end method

.method public static createBackground(Lcom/artemis/World;Ljava/lang/String;)Lcom/artemis/Entity;
    .locals 5
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x3fa00000    # 1.25f

    .line 40
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v0

    .line 42
    .local v0, "e":Lcom/artemis/Entity;
    new-instance v1, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 43
    .local v1, "position":Lde/fgerbig/spacepeng/components/Position;
    const/high16 v3, 0x43c80000    # 400.0f

    iput v3, v1, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 44
    const/high16 v3, 0x43700000    # 240.0f

    iput v3, v1, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 45
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 47
    new-instance v2, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 48
    .local v2, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v3, "background"

    iput-object v3, v2, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 49
    sget-object v3, Lde/fgerbig/spacepeng/components/Sprite$Layer;->BACKGROUND:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v3, v2, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 50
    iput v4, v2, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 51
    iput v4, v2, Lde/fgerbig/spacepeng/components/Sprite;->scaleY:F

    .line 52
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 54
    return-object v0
.end method

.method public static createCoin(Lcom/artemis/World;Lde/fgerbig/spacepeng/components/powerup/Coin$Type;)Lcom/artemis/Entity;
    .locals 10
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "type"    # Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 363
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v2

    .line 365
    .local v2, "e":Lcom/artemis/Entity;
    new-instance v4, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 366
    .local v4, "position":Lde/fgerbig/spacepeng/components/Position;
    const/high16 v7, 0x42480000    # 50.0f

    const v8, 0x443b8000    # 750.0f

    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v7

    iput v7, v4, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 367
    const/high16 v7, 0x43f00000    # 480.0f

    iput v7, v4, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 368
    invoke-virtual {v2}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 370
    invoke-virtual {v2}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    new-instance v8, Lde/fgerbig/spacepeng/components/powerup/Coin;

    invoke-direct {v8, p1}, Lde/fgerbig/spacepeng/components/powerup/Coin;-><init>(Lde/fgerbig/spacepeng/components/powerup/Coin$Type;)V

    invoke-virtual {v7, v8}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 372
    new-instance v5, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 373
    .local v5, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    iget-object v7, p1, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->spriteName:Ljava/lang/String;

    iput-object v7, v5, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 374
    sget-object v7, Lde/fgerbig/spacepeng/components/Sprite$Layer;->EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v7, v5, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 375
    iput v9, v5, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 376
    iput v9, v5, Lde/fgerbig/spacepeng/components/Sprite;->scaleY:F

    .line 377
    iget v7, p1, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->r:F

    iput v7, v5, Lde/fgerbig/spacepeng/components/Sprite;->r:F

    .line 378
    iget v7, p1, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->g:F

    iput v7, v5, Lde/fgerbig/spacepeng/components/Sprite;->g:F

    .line 379
    iget v7, p1, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->b:F

    iput v7, v5, Lde/fgerbig/spacepeng/components/Sprite;->b:F

    .line 380
    invoke-virtual {v2}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 382
    new-instance v0, Lde/fgerbig/spacepeng/components/AnimationParameters;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/AnimationParameters;-><init>()V

    .line 383
    .local v0, "animationParameters":Lde/fgerbig/spacepeng/components/AnimationParameters;
    const v7, 0x3dcccccd    # 0.1f

    iput v7, v0, Lde/fgerbig/spacepeng/components/AnimationParameters;->frameDuration:F

    .line 384
    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v7, v0, Lde/fgerbig/spacepeng/components/AnimationParameters;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 385
    invoke-virtual {v2}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 387
    new-instance v1, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/components/collision/CircleBounds;-><init>()V

    .line 388
    .local v1, "bounds":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    const/high16 v7, 0x41800000    # 16.0f

    iput v7, v1, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    .line 389
    invoke-virtual {v2}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 391
    new-instance v6, Lde/fgerbig/spacepeng/components/Velocity;

    invoke-direct {v6}, Lde/fgerbig/spacepeng/components/Velocity;-><init>()V

    .line 392
    .local v6, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    const/4 v7, 0x0

    iput v7, v6, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    .line 393
    const/high16 v7, -0x3d380000    # -100.0f

    iput v7, v6, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    .line 394
    invoke-virtual {v2}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 396
    new-instance v3, Lde/fgerbig/spacepeng/components/OffScreenRemove;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/OffScreenRemove;-><init>()V

    .line 397
    .local v3, "offScreenRemove":Lde/fgerbig/spacepeng/components/OffScreenRemove;
    invoke-virtual {v2}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 399
    const-class v7, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v7}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v7

    check-cast v7, Lcom/artemis/managers/GroupManager;

    const-string v8, "coin"

    invoke-virtual {v7, v2, v8}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 401
    return-object v2
.end method

.method protected static createExplosion(Lcom/artemis/World;FFF)Lcom/artemis/Entity;
    .locals 9
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scale"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 247
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v1

    .line 249
    .local v1, "e":Lcom/artemis/Entity;
    new-instance v3, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 250
    .local v3, "position":Lde/fgerbig/spacepeng/components/Position;
    iput p1, v3, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 251
    iput p2, v3, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 252
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 254
    new-instance v5, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 255
    .local v5, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v6, "explosion"

    iput-object v6, v5, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 256
    iput p3, v5, Lde/fgerbig/spacepeng/components/Sprite;->scaleY:F

    iput p3, v5, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 257
    iput v8, v5, Lde/fgerbig/spacepeng/components/Sprite;->r:F

    .line 258
    const v6, 0x3f58d8d9

    iput v6, v5, Lde/fgerbig/spacepeng/components/Sprite;->g:F

    .line 259
    const/4 v6, 0x0

    iput v6, v5, Lde/fgerbig/spacepeng/components/Sprite;->b:F

    .line 260
    iput v7, v5, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    .line 261
    sget-object v6, Lde/fgerbig/spacepeng/components/Sprite$Layer;->EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v6, v5, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 262
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 264
    new-instance v0, Lde/fgerbig/spacepeng/components/AnimationParameters;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/AnimationParameters;-><init>()V

    .line 265
    .local v0, "animationParameters":Lde/fgerbig/spacepeng/components/AnimationParameters;
    const v6, 0x3e2aaaab

    iput v6, v0, Lde/fgerbig/spacepeng/components/AnimationParameters;->frameDuration:F

    .line 266
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 268
    new-instance v2, Lde/fgerbig/spacepeng/components/ExpiringEntity;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/ExpiringEntity;-><init>()V

    .line 269
    .local v2, "expiringEntity":Lde/fgerbig/spacepeng/components/ExpiringEntity;
    iput v7, v2, Lde/fgerbig/spacepeng/components/ExpiringEntity;->delay:F

    .line 270
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 272
    new-instance v4, Lde/fgerbig/spacepeng/components/ScaleAnimation;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/components/ScaleAnimation;-><init>()V

    .line 273
    .local v4, "scaleAnimation":Lde/fgerbig/spacepeng/components/ScaleAnimation;
    const/4 v6, 0x1

    iput-boolean v6, v4, Lde/fgerbig/spacepeng/components/ScaleAnimation;->active:Z

    .line 274
    iput p3, v4, Lde/fgerbig/spacepeng/components/ScaleAnimation;->max:F

    .line 275
    const/high16 v6, 0x42c80000    # 100.0f

    div-float v6, p3, v6

    iput v6, v4, Lde/fgerbig/spacepeng/components/ScaleAnimation;->min:F

    .line 276
    iput v8, v4, Lde/fgerbig/spacepeng/components/ScaleAnimation;->speed:F

    .line 277
    const/4 v6, 0x0

    iput-boolean v6, v4, Lde/fgerbig/spacepeng/components/ScaleAnimation;->repeat:Z

    .line 278
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 280
    return-object v1
.end method

.method public static createParticle(Lcom/artemis/World;FF)Lcom/artemis/Entity;
    .locals 12
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 318
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v1

    .line 320
    .local v1, "e":Lcom/artemis/Entity;
    new-instance v5, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 321
    .local v5, "position":Lde/fgerbig/spacepeng/components/Position;
    iput p1, v5, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 322
    iput p2, v5, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 323
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 325
    new-instance v7, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v7}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 326
    .local v7, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v9, "particle"

    iput-object v9, v7, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 327
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v9, v10}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v9

    iput v9, v7, Lde/fgerbig/spacepeng/components/Sprite;->scaleY:F

    iput v9, v7, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 328
    iput v10, v7, Lde/fgerbig/spacepeng/components/Sprite;->r:F

    .line 329
    const v9, 0x3f58d8d9

    iput v9, v7, Lde/fgerbig/spacepeng/components/Sprite;->g:F

    .line 330
    iput v11, v7, Lde/fgerbig/spacepeng/components/Sprite;->b:F

    .line 331
    iput v10, v7, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    .line 332
    sget-object v9, Lde/fgerbig/spacepeng/components/Sprite$Layer;->EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v9, v7, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 333
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 336
    const v9, 0x40c90fdb

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v6

    .line 337
    .local v6, "radians":F
    const/high16 v9, 0x43c80000    # 400.0f

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v3

    .line 339
    .local v3, "magnitude":F
    new-instance v8, Lde/fgerbig/spacepeng/components/Velocity;

    invoke-direct {v8}, Lde/fgerbig/spacepeng/components/Velocity;-><init>()V

    .line 340
    .local v8, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v9

    mul-float/2addr v9, v3

    iput v9, v8, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    .line 341
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v9

    mul-float/2addr v9, v3

    iput v9, v8, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    .line 342
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 344
    new-instance v2, Lde/fgerbig/spacepeng/components/ExpiringEntity;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/ExpiringEntity;-><init>()V

    .line 345
    .local v2, "expiringEntity":Lde/fgerbig/spacepeng/components/ExpiringEntity;
    iput v10, v2, Lde/fgerbig/spacepeng/components/ExpiringEntity;->delay:F

    .line 346
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 348
    new-instance v4, Lde/fgerbig/spacepeng/components/OffScreenRemove;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/components/OffScreenRemove;-><init>()V

    .line 349
    .local v4, "offScreenRemove":Lde/fgerbig/spacepeng/components/OffScreenRemove;
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 351
    new-instance v0, Lde/fgerbig/spacepeng/components/ColorAnimation;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/ColorAnimation;-><init>()V

    .line 352
    .local v0, "colorAnimation":Lde/fgerbig/spacepeng/components/ColorAnimation;
    const/4 v9, 0x1

    iput-boolean v9, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaAnimate:Z

    .line 353
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaSpeed:F

    .line 354
    iput v11, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaMin:F

    .line 355
    iput v10, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaMax:F

    .line 356
    const/4 v9, 0x0

    iput-boolean v9, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->repeat:Z

    .line 357
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 359
    return-object v1
.end method

.method public static createPlayer(Lcom/artemis/World;)Lcom/artemis/Entity;
    .locals 9
    .param p0, "world"    # Lcom/artemis/World;

    .prologue
    const/4 v8, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v1

    .line 60
    .local v1, "e":Lcom/artemis/Entity;
    new-instance v3, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 61
    .local v3, "position":Lde/fgerbig/spacepeng/components/Position;
    iput v8, v3, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 62
    iput v8, v3, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 63
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 65
    new-instance v4, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 66
    .local v4, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v7, "player"

    iput-object v7, v4, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 67
    sget-object v7, Lde/fgerbig/spacepeng/components/Sprite$Layer;->ACTORS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v7, v4, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 68
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 70
    new-instance v6, Lde/fgerbig/spacepeng/components/Velocity;

    invoke-direct {v6}, Lde/fgerbig/spacepeng/components/Velocity;-><init>()V

    .line 71
    .local v6, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    iput v8, v6, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    .line 72
    iput v8, v6, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    .line 73
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 75
    new-instance v0, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/collision/CircleBounds;-><init>()V

    .line 76
    .local v0, "bounds":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    const/high16 v7, 0x41800000    # 16.0f

    iput v7, v0, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    .line 77
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 79
    new-instance v2, Lde/fgerbig/spacepeng/components/Player;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/Player;-><init>()V

    .line 80
    .local v2, "info":Lde/fgerbig/spacepeng/components/Player;
    const/4 v7, 0x5

    iput v7, v2, Lde/fgerbig/spacepeng/components/Player;->lives:I

    .line 81
    const/4 v7, 0x0

    iput v7, v2, Lde/fgerbig/spacepeng/components/Player;->score:I

    .line 82
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 84
    new-instance v5, Lde/fgerbig/spacepeng/components/StayOnScreen;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/StayOnScreen;-><init>()V

    .line 85
    .local v5, "stayOnScreen":Lde/fgerbig/spacepeng/components/StayOnScreen;
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 87
    const-class v7, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v7}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v7

    check-cast v7, Lcom/artemis/managers/GroupManager;

    const-string v8, "player"

    invoke-virtual {v7, v1, v8}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 88
    const-class v7, Lcom/artemis/managers/TagManager;

    invoke-virtual {p0, v7}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v7

    check-cast v7, Lcom/artemis/managers/TagManager;

    const-string v8, "player"

    invoke-virtual {v7, v8, v1}, Lcom/artemis/managers/TagManager;->register(Ljava/lang/String;Lcom/artemis/Entity;)V

    .line 90
    return-object v1
.end method

.method public static createPlayerExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;
    .locals 4
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 284
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, p1, p2, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createExplosion(Lcom/artemis/World;FFF)Lcom/artemis/Entity;

    move-result-object v0

    .line 285
    .local v0, "e":Lcom/artemis/Entity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 286
    invoke-static {p0, p1, p2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createParticle(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    sget-object v2, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v3, Lde/fgerbig/spacepeng/assets/SoundKey;->PLAYER_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v2, v3}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 290
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x1f4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->vibrate(I)V

    .line 292
    return-object v0
.end method

.method public static createPlayerShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;
    .locals 8
    .param p0, "world"    # Lcom/artemis/World;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v1

    .line 96
    .local v1, "e":Lcom/artemis/Entity;
    new-instance v3, Lde/fgerbig/spacepeng/components/Position;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/Position;-><init>()V

    .line 97
    .local v3, "position":Lde/fgerbig/spacepeng/components/Position;
    iput p1, v3, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 98
    iput p2, v3, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 99
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 101
    new-instance v4, Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/components/Sprite;-><init>()V

    .line 102
    .local v4, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v6, "playerShot"

    iput-object v6, v4, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 103
    sget-object v6, Lde/fgerbig/spacepeng/components/Sprite$Layer;->EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v6, v4, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 104
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 106
    new-instance v5, Lde/fgerbig/spacepeng/components/Velocity;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/components/Velocity;-><init>()V

    .line 107
    .local v5, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    const/high16 v6, 0x44480000    # 800.0f

    iput v6, v5, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    .line 108
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 110
    new-instance v0, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;-><init>()V

    .line 111
    .local v0, "bounds":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    const/high16 v6, 0x41200000    # 10.0f

    iput v6, v0, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    .line 112
    const/high16 v6, 0x42340000    # 45.0f

    iput v6, v0, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    .line 113
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 115
    new-instance v2, Lde/fgerbig/spacepeng/components/OffScreenRemove;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/components/OffScreenRemove;-><init>()V

    .line 116
    .local v2, "offScreenRemove":Lde/fgerbig/spacepeng/components/OffScreenRemove;
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 118
    sget-object v6, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v7, Lde/fgerbig/spacepeng/assets/SoundKey;->PLAYER_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v6, v7}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 120
    const-class v6, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v6}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v6

    check-cast v6, Lcom/artemis/managers/GroupManager;

    const-string v7, "playerShots"

    invoke-virtual {v6, v1, v7}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 122
    return-object v1
.end method
