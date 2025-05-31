.class public Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;
.super Lcom/artemis/systems/VoidEntitySystem;
.source "CoinSpawningSystem.java"


# static fields
.field private static final MAX_DELAY:F = 13.0f

.field private static final MIN_DELAY:F = 7.0f


# instance fields
.field protected delay:F

.field doubleShot_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/powerup/DoubleShot;",
            ">;"
        }
    .end annotation
.end field

.field protected enabled:Z

.field private gm:Lcom/artemis/managers/GroupManager;

.field shield_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/powerup/Shield;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/artemis/systems/VoidEntitySystem;-><init>()V

    return-void
.end method


# virtual methods
.method public disable(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 9
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;
    .annotation runtime Lde/fgerbig/spacepeng/events/reflection/Handles;
        ids = {
            "disableAction"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 89
    const/4 v6, 0x0

    iput-boolean v6, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->enabled:Z

    .line 92
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->gm:Lcom/artemis/managers/GroupManager;

    const-string v7, "coin"

    invoke-virtual {v6, v7}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    .line 93
    .local v0, "coins":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    invoke-interface {v0}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/Entity;

    .line 94
    .local v2, "e":Lcom/artemis/Entity;
    invoke-virtual {v2}, Lcom/artemis/Entity;->deleteFromWorld()V

    goto :goto_0

    .line 97
    .end local v2    # "e":Lcom/artemis/Entity;
    :cond_0
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->world:Lcom/artemis/World;

    const-class v7, Lcom/artemis/managers/TagManager;

    invoke-virtual {v6, v7}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v6

    check-cast v6, Lcom/artemis/managers/TagManager;

    const-string v7, "player"

    invoke-virtual {v6, v7}, Lcom/artemis/managers/TagManager;->getEntity(Ljava/lang/String;)Lcom/artemis/Entity;

    move-result-object v4

    .line 99
    .local v4, "playerEntity":Lcom/artemis/Entity;
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->doubleShot_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, v4}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->doubleShot_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, v4}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/powerup/DoubleShot;

    .line 101
    .local v1, "doubleShot":Lde/fgerbig/spacepeng/components/powerup/DoubleShot;
    iput v8, v1, Lde/fgerbig/spacepeng/components/powerup/DoubleShot;->delay:F

    .line 104
    .end local v1    # "doubleShot":Lde/fgerbig/spacepeng/components/powerup/DoubleShot;
    :cond_1
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->shield_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, v4}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->shield_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v6, v4}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v5

    check-cast v5, Lde/fgerbig/spacepeng/components/powerup/Shield;

    .line 106
    .local v5, "shield":Lde/fgerbig/spacepeng/components/powerup/Shield;
    iput v8, v5, Lde/fgerbig/spacepeng/components/powerup/Shield;->delay:F

    .line 110
    .end local v5    # "shield":Lde/fgerbig/spacepeng/components/powerup/Shield;
    :cond_2
    return-void
.end method

.method public dispenseRandomCoin()V
    .locals 3

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    .line 70
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    .line 72
    .local v0, "r":F
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 73
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->world:Lcom/artemis/World;

    sget-object v2, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->EXTRALIFE:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    invoke-static {v1, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createCoin(Lcom/artemis/World;Lde/fgerbig/spacepeng/components/powerup/Coin$Type;)Lcom/artemis/Entity;

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 75
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->world:Lcom/artemis/World;

    sget-object v2, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->DOUBLESHOT:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    invoke-static {v1, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createCoin(Lcom/artemis/World;Lde/fgerbig/spacepeng/components/powerup/Coin$Type;)Lcom/artemis/Entity;

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->world:Lcom/artemis/World;

    sget-object v2, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->SHIELD:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    invoke-static {v1, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createCoin(Lcom/artemis/World;Lde/fgerbig/spacepeng/components/powerup/Coin$Type;)Lcom/artemis/Entity;

    goto :goto_0
.end method

.method public enable(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 2
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;
    .annotation runtime Lde/fgerbig/spacepeng/events/reflection/Handles;
        ids = {
            "enableAction"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->enabled:Z

    .line 84
    const/high16 v0, 0x40e00000    # 7.0f

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    iput v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->delay:F

    .line 85
    return-void
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->world:Lcom/artemis/World;

    const-class v1, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/GroupManager;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->gm:Lcom/artemis/managers/GroupManager;

    .line 55
    return-void
.end method

.method protected processSystem()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->enabled:Z

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->delay:F

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->world:Lcom/artemis/World;

    iget v1, v1, Lcom/artemis/World;->delta:F

    sub-float/2addr v0, v1

    iput v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->delay:F

    .line 62
    iget v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->delay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 63
    const/high16 v0, 0x40e00000    # 7.0f

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    iput v0, p0, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->delay:F

    .line 64
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;->dispenseRandomCoin()V

    .line 67
    :cond_0
    return-void
.end method
