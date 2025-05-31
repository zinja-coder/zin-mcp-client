.class public Lde/fgerbig/spacepeng/systems/PathMovementSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "PathMovementSystem.java"


# instance fields
.field bpos_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/BasePosition;",
            ">;"
        }
    .end annotation
.end field

.field private pathFunctions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lde/fgerbig/spacepeng/path/PathFunction;",
            ">;"
        }
    .end annotation
.end field

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
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/BasePosition;

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

    .line 49
    return-void
.end method


# virtual methods
.method protected getPos(Lde/fgerbig/spacepeng/components/PathMovement;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "pathMovement"    # Lde/fgerbig/spacepeng/components/PathMovement;

    .prologue
    .line 100
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    iget-object v3, p1, Lde/fgerbig/spacepeng/components/PathMovement;->pathFunctionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/path/PathFunction;

    .line 101
    .local v0, "f1":Lde/fgerbig/spacepeng/path/PathFunction;
    iget v2, p1, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    invoke-interface {v0, v2}, Lde/fgerbig/spacepeng/path/PathFunction;->getXY(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 103
    .local v1, "pos":Lcom/badlogic/gdx/math/Vector2;
    return-object v1
.end method

.method protected getPos(Lde/fgerbig/spacepeng/components/PathMovement;Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;)Lcom/badlogic/gdx/math/Vector2;
    .locals 11
    .param p1, "pathMovement"    # Lde/fgerbig/spacepeng/components/PathMovement;
    .param p2, "transitionToNewPathMovement"    # Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 110
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    iget-object v9, p1, Lde/fgerbig/spacepeng/components/PathMovement;->pathFunctionId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/path/PathFunction;

    .line 111
    .local v0, "f1":Lde/fgerbig/spacepeng/path/PathFunction;
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    iget-object v9, p2, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->pathFunctionId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/path/PathFunction;

    .line 113
    .local v1, "f2":Lde/fgerbig/spacepeng/path/PathFunction;
    iget v8, p1, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    invoke-interface {v0, v8}, Lde/fgerbig/spacepeng/path/PathFunction;->getXY(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 114
    .local v4, "oldPathXY":Lcom/badlogic/gdx/math/Vector2;
    iget v8, p1, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    invoke-interface {v1, v8}, Lde/fgerbig/spacepeng/path/PathFunction;->getXY(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 117
    .local v3, "newPathXY":Lcom/badlogic/gdx/math/Vector2;
    iget v2, p2, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->factor:F

    .line 118
    .local v2, "factor":F
    sub-float v8, v10, v2

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v9

    iget v9, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v9, v2

    add-float v6, v8, v9

    .line 119
    .local v6, "x":F
    sub-float v8, v10, v2

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v8, v9

    iget v9, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v9, v2

    add-float v7, v8, v9

    .line 121
    .local v7, "y":F
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 123
    .local v5, "pos":Lcom/badlogic/gdx/math/Vector2;
    return-object v5
.end method

.method protected initialize()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    .line 53
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    const-string v1, "defaultMovement"

    new-instance v2, Lde/fgerbig/spacepeng/path/DefaultAlienMovementPathFunction;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/path/DefaultAlienMovementPathFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    const-string v1, "defaultAttack"

    new-instance v2, Lde/fgerbig/spacepeng/path/DefaultAlienAttackPathFunction;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/path/DefaultAlienAttackPathFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    const-string v1, "bossAttack"

    new-instance v2, Lde/fgerbig/spacepeng/path/AlienBossAttackPathFunction;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/path/AlienBossAttackPathFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pathFunctions:Ljava/util/HashMap;

    const-string v1, "twoBossesAttack"

    new-instance v2, Lde/fgerbig/spacepeng/path/TwoAlienBossesAttackPathFunction;

    invoke-direct {v2}, Lde/fgerbig/spacepeng/path/TwoAlienBossesAttackPathFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method protected process(Lcom/artemis/Entity;)V
    .locals 9
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const v8, 0x40c90fdb

    .line 62
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->world:Lcom/artemis/World;

    iget v1, v6, Lcom/artemis/World;->delta:F

    .line 64
    .local v1, "delta":F
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->bpos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/BasePosition;

    .line 65
    .local v0, "basePosition":Lde/fgerbig/spacepeng/components/BasePosition;
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v4

    check-cast v4, Lde/fgerbig/spacepeng/components/Position;

    .line 67
    .local v4, "position":Lde/fgerbig/spacepeng/components/Position;
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->pmv_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/components/PathMovement;

    .line 69
    .local v2, "pathMovement":Lde/fgerbig/spacepeng/components/PathMovement;
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->tpmv_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 71
    invoke-virtual {p0, v2}, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->getPos(Lde/fgerbig/spacepeng/components/PathMovement;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 87
    .local v3, "pathPos":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    :goto_0
    iget v6, v0, Lde/fgerbig/spacepeng/components/BasePosition;->x:F

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v7

    iput v6, v4, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 88
    iget v6, v0, Lde/fgerbig/spacepeng/components/BasePosition;->y:F

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v6, v7

    iput v6, v4, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 90
    iget v6, v2, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    iput v6, v2, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    .line 91
    iget v6, v2, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_1

    .line 92
    iget v6, v2, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    sub-float/2addr v6, v8

    iput v6, v2, Lde/fgerbig/spacepeng/components/PathMovement;->rad:F

    .line 94
    :cond_1
    return-void

    .line 74
    .end local v3    # "pathPos":Lcom/badlogic/gdx/math/Vector2;
    :cond_2
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->tpmv_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v5

    check-cast v5, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    .line 75
    .local v5, "transitionToNewPathMovement":Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;
    invoke-virtual {p0, v2, v5}, Lde/fgerbig/spacepeng/systems/PathMovementSystem;->getPos(Lde/fgerbig/spacepeng/components/PathMovement;Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 78
    .restart local v3    # "pathPos":Lcom/badlogic/gdx/math/Vector2;
    iget v6, v5, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->factor:F

    add-float/2addr v6, v1

    iput v6, v5, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->factor:F

    .line 81
    iget v6, v5, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->factor:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 82
    iget-object v6, v5, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->pathFunctionId:Ljava/lang/String;

    iput-object v6, v2, Lde/fgerbig/spacepeng/components/PathMovement;->pathFunctionId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v6

    const-class v7, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    invoke-virtual {v6, v7}, Lcom/artemis/EntityEdit;->remove(Ljava/lang/Class;)Lcom/artemis/EntityEdit;

    goto :goto_0
.end method
