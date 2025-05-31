.class public Lcom/artemis/managers/TeamManager;
.super Lcom/artemis/Manager;
.source "TeamManager.java"


# instance fields
.field private final playersByTeam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/artemis/utils/Bag",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final teamByPlayer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/artemis/Manager;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/TeamManager;->playersByTeam:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/TeamManager;->teamByPlayer:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public getPlayers(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;
    .locals 1
    .param p1, "team"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/artemis/managers/TeamManager;->playersByTeam:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/ImmutableBag;

    return-object v0
.end method

.method public getTeam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "player"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/artemis/managers/TeamManager;->teamByPlayer:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public removeFromTeam(Ljava/lang/String;)V
    .locals 3
    .param p1, "player"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/artemis/managers/TeamManager;->teamByPlayer:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, "team":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/artemis/managers/TeamManager;->playersByTeam:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 102
    .local v0, "players":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 106
    .end local v0    # "players":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public setTeam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "player"    # Ljava/lang/String;
    .param p2, "team"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/artemis/managers/TeamManager;->removeFromTeam(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/artemis/managers/TeamManager;->teamByPlayer:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/artemis/managers/TeamManager;->playersByTeam:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 73
    .local v0, "players":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/artemis/utils/Bag;

    .end local v0    # "players":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    .line 75
    .restart local v0    # "players":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/artemis/managers/TeamManager;->playersByTeam:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
