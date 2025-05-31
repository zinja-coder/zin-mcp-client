.class public Lcom/artemis/managers/UuidEntityManager;
.super Lcom/artemis/Manager;
.source "UuidEntityManager.java"


# instance fields
.field private final entityToUuid:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final uuidToEntity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/artemis/Manager;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/UuidEntityManager;->uuidToEntity:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/UuidEntityManager;->entityToUuid:Lcom/artemis/utils/Bag;

    .line 18
    return-void
.end method


# virtual methods
.method public deleted(Lcom/artemis/Entity;)V
    .locals 4
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->entityToUuid:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 23
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->uuidToEntity:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->entityToUuid:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getEntity(Ljava/util/UUID;)Lcom/artemis/Entity;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/artemis/managers/UuidEntityManager;->uuidToEntity:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Entity;

    return-object v0
.end method

.method public getUuid(Lcom/artemis/Entity;)Ljava/util/UUID;
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->entityToUuid:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 44
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/artemis/managers/UuidEntityManager;->setUuid(Lcom/artemis/Entity;Ljava/util/UUID;)V

    .line 49
    :cond_0
    return-object v0
.end method

.method public setUuid(Lcom/artemis/Entity;Ljava/util/UUID;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "newUuid"    # Ljava/util/UUID;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->entityToUuid:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 54
    .local v0, "oldUuid":Ljava/util/UUID;
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->uuidToEntity:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->uuidToEntity:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->entityToUuid:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public updatedUuid(Lcom/artemis/Entity;Ljava/util/UUID;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "newUuid"    # Ljava/util/UUID;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->entityToUuid:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 32
    .local v0, "oldUuid":Ljava/util/UUID;
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/artemis/managers/UuidEntityManager;->uuidToEntity:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/artemis/managers/UuidEntityManager;->setUuid(Lcom/artemis/Entity;Ljava/util/UUID;)V

    .line 36
    return-void
.end method
