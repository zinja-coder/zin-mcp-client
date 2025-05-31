.class public Lcom/artemis/managers/TagManager;
.super Lcom/artemis/Manager;
.source "TagManager.java"


# instance fields
.field private final entitiesByTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final tagsByEntity:Ljava/util/Map;
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

    iput-object v0, p0, Lcom/artemis/managers/TagManager;->entitiesByTag:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/TagManager;->tagsByEntity:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public deleted(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/artemis/managers/TagManager;->tagsByEntity:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "removedTag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/artemis/managers/TagManager;->entitiesByTag:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void
.end method

.method public getEntity(Ljava/lang/String;)Lcom/artemis/Entity;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/artemis/managers/TagManager;->entitiesByTag:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Entity;

    return-object v0
.end method

.method public getRegisteredTags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/artemis/managers/TagManager;->tagsByEntity:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/artemis/managers/TagManager;->entitiesByTag:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/artemis/managers/TagManager;->entitiesByTag:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/artemis/managers/TagManager;->tagsByEntity:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/artemis/managers/TagManager;->tagsByEntity:Ljava/util/Map;

    iget-object v1, p0, Lcom/artemis/managers/TagManager;->entitiesByTag:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
