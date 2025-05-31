.class public Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "AlienBehaviourSystem.java"


# instance fields
.field private final MAX_LEVEL:F

.field alien_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Alien;",
            ">;"
        }
    .end annotation
.end field

.field apmv_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/AttackPathMovement;",
            ">;"
        }
    .end annotation
.end field

.field private gm:Lcom/artemis/managers/GroupManager;

.field hlth_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Health;",
            ">;"
        }
    .end annotation
.end field

.field private isAttackingAllowed:Z

.field isAttacking_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/IsAttacking;",
            ">;"
        }
    .end annotation
.end field

.field private killRage:F

.field private levelInfluence:F

.field private maxAliens:I

.field pmv_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/PathMovement;",
            ">;"
        }
    .end annotation
.end field

.field pos_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Position;",
            ">;"
        }
    .end annotation
.end field

.field private time:F

.field private timeRage:F

.field tpmv_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/Alien;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Position;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lde/fgerbig/spacepeng/components/PathMovement;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 58
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->MAX_LEVEL:F

    .line 72
    return-void
.end method


# virtual methods
.method protected getAttackGroup(Lcom/artemis/Entity;)Ljava/lang/String;
    .locals 4
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 178
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->gm:Lcom/artemis/managers/GroupManager;

    invoke-virtual {v3, p1}, Lcom/artemis/managers/GroupManager;->getGroups(Lcom/artemis/Entity;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v1

    .line 179
    .local v1, "groups":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Ljava/lang/String;>;"
    invoke-interface {v1}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "group":Ljava/lang/String;
    const-string v3, "attack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    .end local v0    # "group":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->world:Lcom/artemis/World;

    const-class v1, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/GroupManager;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->gm:Lcom/artemis/managers/GroupManager;

    .line 77
    return-void
.end method

.method protected process(Lcom/artemis/Entity;)V
    .locals 23
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->alien_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v9

    check-cast v9, Lde/fgerbig/spacepeng/components/Alien;

    .line 86
    .local v9, "alien":Lde/fgerbig/spacepeng/components/Alien;
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v22

    check-cast v22, Lde/fgerbig/spacepeng/components/Position;

    .line 88
    .local v22, "position":Lde/fgerbig/spacepeng/components/Position;
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->hlth_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v12

    .line 91
    .local v12, "boss":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->isAttackingAllowed:Z

    if-eqz v3, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->time:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->world:Lcom/artemis/World;

    invoke-virtual {v4}, Lcom/artemis/World;->getDelta()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->time:F

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->gm:Lcom/artemis/managers/GroupManager;

    const-string v4, "aliens"

    invoke-virtual {v3, v4}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v3

    invoke-interface {v3}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v10

    .line 97
    .local v10, "alienCount":I
    move-object/from16 v0, p0

    iget v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->time:F

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->timeRage:F

    .line 98
    move-object/from16 v0, p0

    iget v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->maxAliens:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->maxAliens:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->killRage:F

    .line 105
    const v4, 0x3727c5ac    # 1.0E-5f

    const v5, 0x3a83126f    # 0.001f

    move-object/from16 v0, p0

    iget v6, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->levelInfluence:F

    move-object/from16 v0, p0

    iget v7, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->timeRage:F

    move-object/from16 v0, p0

    iget v8, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->killRage:F

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->weightedChance(FFFFF)F

    move-result v15

    .line 107
    .local v15, "chance_switchToAttacking":F
    const v4, 0x3b23d70a    # 0.0025f

    const v5, 0x3ccccccd    # 0.025f

    move-object/from16 v0, p0

    iget v6, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->levelInfluence:F

    move-object/from16 v0, p0

    iget v7, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->timeRage:F

    move-object/from16 v0, p0

    iget v8, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->killRage:F

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->weightedChance(FFFFF)F

    move-result v13

    .line 109
    .local v13, "chance_shootAttacking":F
    const v4, 0x38d1b717    # 1.0E-4f

    const v5, 0x3c23d70a    # 0.01f

    move-object/from16 v0, p0

    iget v6, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->levelInfluence:F

    move-object/from16 v0, p0

    iget v7, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->timeRage:F

    move-object/from16 v0, p0

    iget v8, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->killRage:F

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->weightedChance(FFFFF)F

    move-result v14

    .line 112
    .local v14, "chance_shootNoAttacking":F
    if-eqz v12, :cond_1

    .line 113
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v15, v3

    .line 114
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v14, v3

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->isAttacking_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->tpmv_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean(F)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->isAttackingAllowed:Z

    if-eqz v3, :cond_3

    .line 119
    invoke-virtual/range {p0 .. p1}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->getAttackGroup(Lcom/artemis/Entity;)Ljava/lang/String;

    move-result-object v17

    .line 120
    .local v17, "group":Ljava/lang/String;
    const-string v19, "defaultAttack"

    .line 123
    .local v19, "pathFunctionId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->apmv_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->apmv_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v11

    check-cast v11, Lde/fgerbig/spacepeng/components/AttackPathMovement;

    .line 125
    .local v11, "attackPathMovement":Lde/fgerbig/spacepeng/components/AttackPathMovement;
    iget-object v0, v11, Lde/fgerbig/spacepeng/components/AttackPathMovement;->pathFunctionId:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 128
    .end local v11    # "attackPathMovement":Lde/fgerbig/spacepeng/components/AttackPathMovement;
    :cond_2
    if-eqz v17, :cond_6

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->setGroupAttacking(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v17    # "group":Ljava/lang/String;
    .end local v19    # "pathFunctionId":Ljava/lang/String;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->isAttackingAllowed:Z

    if-eqz v3, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->world:Lcom/artemis/World;

    const-class v4, Lcom/artemis/managers/TagManager;

    invoke-virtual {v3, v4}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v3

    check-cast v3, Lcom/artemis/managers/TagManager;

    const-string v4, "player"

    invoke-virtual {v3, v4}, Lcom/artemis/managers/TagManager;->getEntity(Ljava/lang/String;)Lcom/artemis/Entity;

    move-result-object v20

    .line 146
    .local v20, "playerEntity":Lcom/artemis/Entity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v21

    check-cast v21, Lde/fgerbig/spacepeng/components/Position;

    .line 148
    .local v21, "playerPos":Lde/fgerbig/spacepeng/components/Position;
    move-object/from16 v0, v22

    iget v3, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    move-object/from16 v0, v21

    iget v4, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    const/16 v16, 0x1

    .line 150
    .local v16, "directlyAbovePlayer":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->isAttacking_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 152
    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->world:Lcom/artemis/World;

    move-object/from16 v0, v22

    iget v4, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    move-object/from16 v0, v22

    iget v5, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v3, v4, v5}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienMultiShot(Lcom/artemis/World;FF)V

    .line 157
    :cond_4
    if-eqz v16, :cond_5

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v13

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->world:Lcom/artemis/World;

    move-object/from16 v0, v22

    iget v4, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    move-object/from16 v0, v22

    iget v5, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v3, v4, v5}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 174
    .end local v16    # "directlyAbovePlayer":Z
    .end local v20    # "playerEntity":Lcom/artemis/Entity;
    .end local v21    # "playerPos":Lde/fgerbig/spacepeng/components/Position;
    :cond_5
    :goto_2
    return-void

    .line 131
    .restart local v17    # "group":Ljava/lang/String;
    .restart local v19    # "pathFunctionId":Ljava/lang/String;
    :cond_6
    new-instance v18, Lde/fgerbig/spacepeng/components/IsAttacking;

    invoke-direct/range {v18 .. v18}, Lde/fgerbig/spacepeng/components/IsAttacking;-><init>()V

    .line 132
    .local v18, "isAttacking":Lde/fgerbig/spacepeng/components/IsAttacking;
    new-instance v3, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$1;-><init>(Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;Lcom/artemis/Entity;)V

    move-object/from16 v0, v18

    iput-object v3, v0, Lde/fgerbig/spacepeng/components/IsAttacking;->onExpiry:Ljava/lang/Runnable;

    .line 138
    const v3, 0x4048f5c3    # 3.14f

    move-object/from16 v0, v18

    iput v3, v0, Lde/fgerbig/spacepeng/components/IsAttacking;->delay:F

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    new-instance v4, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    goto/16 :goto_0

    .line 148
    .end local v17    # "group":Ljava/lang/String;
    .end local v18    # "isAttacking":Lde/fgerbig/spacepeng/components/IsAttacking;
    .end local v19    # "pathFunctionId":Ljava/lang/String;
    .restart local v20    # "playerEntity":Lcom/artemis/Entity;
    .restart local v21    # "playerPos":Lde/fgerbig/spacepeng/components/Position;
    :cond_7
    const/16 v16, 0x0

    goto :goto_1

    .line 163
    .restart local v16    # "directlyAbovePlayer":Z
    :cond_8
    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean(F)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->world:Lcom/artemis/World;

    move-object/from16 v0, v22

    iget v4, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    move-object/from16 v0, v22

    iget v5, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v3, v4, v5}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 168
    :cond_9
    if-eqz v16, :cond_5

    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->world:Lcom/artemis/World;

    move-object/from16 v0, v22

    iget v4, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    move-object/from16 v0, v22

    iget v5, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v3, v4, v5}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    goto :goto_2
.end method

.method public setAttackingAllowed(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 1
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;
    .annotation runtime Lde/fgerbig/spacepeng/events/reflection/Handles;
        ids = {
            "enableAction"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->isAttackingAllowed:Z

    .line 226
    return-void
.end method

.method protected setGroupAttacking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "pathFunctionId"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->gm:Lcom/artemis/managers/GroupManager;

    invoke-virtual {v4, p1}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v1

    .line 192
    .local v1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    invoke-interface {v1}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Entity;

    .line 194
    .local v0, "e":Lcom/artemis/Entity;
    new-instance v3, Lde/fgerbig/spacepeng/components/IsAttacking;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/IsAttacking;-><init>()V

    .line 195
    .local v3, "isAttacking":Lde/fgerbig/spacepeng/components/IsAttacking;
    new-instance v4, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$2;

    invoke-direct {v4, p0, v0}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$2;-><init>(Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;Lcom/artemis/Entity;)V

    iput-object v4, v3, Lde/fgerbig/spacepeng/components/IsAttacking;->onExpiry:Ljava/lang/Runnable;

    .line 201
    const v4, 0x4048f5c3    # 3.14f

    iput v4, v3, Lde/fgerbig/spacepeng/components/IsAttacking;->delay:F

    .line 202
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 203
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v4

    new-instance v5, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    invoke-direct {v5, p2}, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    goto :goto_0

    .line 205
    .end local v0    # "e":Lcom/artemis/Entity;
    .end local v3    # "isAttacking":Lde/fgerbig/spacepeng/components/IsAttacking;
    :cond_0
    return-void
.end method

.method protected setGroupNotAttacking(Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->gm:Lcom/artemis/managers/GroupManager;

    invoke-virtual {v3, p1}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v1

    .line 210
    .local v1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    invoke-interface {v1}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Entity;

    .line 212
    .local v0, "e":Lcom/artemis/Entity;
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    const-class v4, Lde/fgerbig/spacepeng/components/IsAttacking;

    invoke-virtual {v3, v4}, Lcom/artemis/EntityEdit;->remove(Ljava/lang/Class;)Lcom/artemis/EntityEdit;

    .line 213
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    new-instance v4, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    const-string v5, "defaultMovement"

    invoke-direct {v4, v5}, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    goto :goto_0

    .line 215
    .end local v0    # "e":Lcom/artemis/Entity;
    :cond_0
    return-void
.end method

.method public setLevelParameters(II)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "maxAliens"    # I

    .prologue
    const/4 v2, 0x0

    .line 218
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->levelInfluence:F

    .line 219
    iput v2, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->time:F

    .line 220
    iput p2, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->maxAliens:I

    .line 221
    return-void
.end method

.method public setNoAttacking(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 6
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;
    .annotation runtime Lde/fgerbig/spacepeng/events/reflection/Handles;
        ids = {
            "disableAction"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v3, 0x0

    iput-boolean v3, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->isAttackingAllowed:Z

    .line 231
    const/4 v3, 0x0

    iput v3, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->time:F

    .line 234
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->gm:Lcom/artemis/managers/GroupManager;

    const-string v4, "aliens"

    invoke-virtual {v3, v4}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    .line 235
    .local v0, "aliens":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    invoke-interface {v0}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/Entity;

    .line 237
    .local v1, "e":Lcom/artemis/Entity;
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    const-class v4, Lde/fgerbig/spacepeng/components/IsAttacking;

    invoke-virtual {v3, v4}, Lcom/artemis/EntityEdit;->remove(Ljava/lang/Class;)Lcom/artemis/EntityEdit;

    .line 240
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->pmv_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v3, v1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    new-instance v4, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    const-string v5, "defaultMovement"

    invoke-direct {v4, v5}, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    goto :goto_0

    .line 244
    .end local v1    # "e":Lcom/artemis/Entity;
    :cond_1
    return-void
.end method

.method protected weightedChance(FFFFF)F
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "levelInfluence"    # F
    .param p4, "timeRage"    # F
    .param p5, "killRage"    # F

    .prologue
    .line 80
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, p4

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method
