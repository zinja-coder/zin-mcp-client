.class public Lcom/artemis/managers/PlayerManager;
.super Lcom/artemis/Manager;
.source "PlayerManager.java"


# instance fields
.field private final entitiesByPlayer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Entity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playerByEntity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/artemis/Entity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/artemis/Manager;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/PlayerManager;->playerByEntity:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/PlayerManager;->entitiesByPlayer:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public deleted(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/artemis/managers/PlayerManager;->removeFromPlayer(Lcom/artemis/Entity;)V

    .line 115
    return-void
.end method

.method public getEntitiesOfPlayer(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;
    .locals 2
    .param p1, "player"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/artemis/managers/PlayerManager;->entitiesByPlayer:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 68
    .local v0, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/artemis/utils/Bag;

    .end local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    .line 71
    .restart local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    :cond_0
    return-object v0
.end method

.method public getPlayer(Lcom/artemis/Entity;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/artemis/managers/PlayerManager;->playerByEntity:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public removeFromPlayer(Lcom/artemis/Entity;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/artemis/managers/PlayerManager;->playerByEntity:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "player":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/artemis/managers/PlayerManager;->entitiesByPlayer:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 84
    .local v0, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 88
    .end local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/artemis/Entity;Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "player"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/artemis/managers/PlayerManager;->playerByEntity:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/artemis/managers/PlayerManager;->entitiesByPlayer:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 51
    .local v0, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/artemis/utils/Bag;

    .end local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    .line 53
    .restart local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    iget-object v1, p0, Lcom/artemis/managers/PlayerManager;->entitiesByPlayer:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
