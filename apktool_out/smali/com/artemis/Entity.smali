.class public final Lcom/artemis/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field public id:I

.field private final world:Lcom/artemis/World;


# direct methods
.method protected constructor <init>(Lcom/artemis/World;I)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;
    .param p2, "id"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/artemis/Entity;-><init>(Lcom/artemis/World;ILjava/util/UUID;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/artemis/World;ILjava/util/UUID;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;
    .param p2, "id"    # I
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    .line 58
    iput p2, p0, Lcom/artemis/Entity;->id:I

    .line 60
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/artemis/World;->hasUuidManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-class v0, Lcom/artemis/managers/UuidEntityManager;

    invoke-virtual {p1, v0}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/UuidEntityManager;

    invoke-virtual {v0, p0, p3}, Lcom/artemis/managers/UuidEntityManager;->setUuid(Lcom/artemis/Entity;Ljava/util/UUID;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/artemis/Component;)Lcom/artemis/Entity;
    .locals 1
    .param p1, "component"    # Lcom/artemis/Component;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 116
    return-object p0
.end method

.method public addComponent(Lcom/artemis/Component;Lcom/artemis/ComponentType;)Lcom/artemis/Entity;
    .locals 1
    .param p1, "component"    # Lcom/artemis/Component;
    .param p2, "type"    # Lcom/artemis/ComponentType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;Lcom/artemis/ComponentType;)Lcom/artemis/EntityEdit;

    .line 125
    return-object p0
.end method

.method public addToWorld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    return-void
.end method

.method public changedInWorld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    return-void
.end method

.method public createComponent(Ljava/lang/Class;)Lcom/artemis/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    .local p1, "componentKlazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    move-result-object v0

    return-object v0
.end method

.method public deleteFromWorld()V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artemis/EntityEdit;->deleteEntity()V

    .line 253
    return-void
.end method

.method public disable()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0, p0}, Lcom/artemis/World;->disable(Lcom/artemis/Entity;)V

    .line 277
    return-void
.end method

.method public edit()Lcom/artemis/EntityEdit;
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    iget v2, p0, Lcom/artemis/Entity;->id:I

    invoke-virtual {v1, v2}, Lcom/artemis/World;->getEntity(I)Lcom/artemis/Entity;

    move-result-object v0

    .line 90
    .local v0, "entity":Lcom/artemis/Entity;
    if-nez v0, :cond_0

    .line 91
    move-object v0, p0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    iget-object v1, v1, Lcom/artemis/World;->editPool:Lcom/artemis/EntityEditPool;

    invoke-virtual {v1, v0}, Lcom/artemis/EntityEditPool;->obtainEditor(Lcom/artemis/Entity;)Lcom/artemis/EntityEdit;

    move-result-object v1

    return-object v1
.end method

.method public enable()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0, p0}, Lcom/artemis/World;->enable(Lcom/artemis/Entity;)V

    .line 265
    return-void
.end method

.method public equals(Lcom/artemis/Entity;)Z
    .locals 2
    .param p1, "o"    # Lcom/artemis/Entity;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/artemis/Entity;->id:I

    iget v1, p0, Lcom/artemis/Entity;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    if-ne p0, p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    .line 316
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 318
    check-cast v0, Lcom/artemis/Entity;

    .line 320
    .local v0, "entity":Lcom/artemis/Entity;
    iget v3, p0, Lcom/artemis/Entity;->id:I

    iget v4, v0, Lcom/artemis/Entity;->id:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getComponent(Lcom/artemis/ComponentType;)Lcom/artemis/Component;
    .locals 1
    .param p1, "type"    # Lcom/artemis/ComponentType;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/artemis/ComponentManager;->getComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)Lcom/artemis/Component;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/Class;)Lcom/artemis/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    iget-object v0, v1, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 217
    .local v0, "tf":Lcom/artemis/ComponentTypeFactory;
    invoke-virtual {v0, p1}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/artemis/Entity;->getComponent(Lcom/artemis/ComponentType;)Lcom/artemis/Component;

    move-result-object v1

    return-object v1
.end method

.method protected getComponentBits()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/artemis/EntityManager;->componentBits(Lcom/artemis/Entity;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public getComponents(Lcom/artemis/utils/Bag;)Lcom/artemis/utils/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "fillBag":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/artemis/ComponentManager;->getComponentsFor(Lcom/artemis/Entity;Lcom/artemis/utils/Bag;)Lcom/artemis/utils/Bag;

    move-result-object v0

    return-object v0
.end method

.method public getCompositionId()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/artemis/EntityManager;->getIdentity(Lcom/artemis/Entity;)I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/artemis/Entity;->id:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->hasUuidManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/artemis/MundaneWireException;

    const-class v1, Lcom/artemis/managers/UuidEntityManager;

    invoke-direct {v0, v1}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/Class;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    const-class v1, Lcom/artemis/managers/UuidEntityManager;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/UuidEntityManager;

    invoke-virtual {v0, p0}, Lcom/artemis/managers/UuidEntityManager;->getUuid(Lcom/artemis/Entity;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getWorld()Lcom/artemis/World;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/artemis/Entity;->id:I

    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v0

    iget v1, p0, Lcom/artemis/Entity;->id:I

    invoke-virtual {v0, v1}, Lcom/artemis/EntityManager;->isActive(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v0

    iget v1, p0, Lcom/artemis/Entity;->id:I

    invoke-virtual {v0, v1}, Lcom/artemis/EntityManager;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public removeComponent(Lcom/artemis/Component;)Lcom/artemis/Entity;
    .locals 1
    .param p1, "component"    # Lcom/artemis/Component;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->remove(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 134
    return-object p0
.end method

.method public removeComponent(Lcom/artemis/ComponentType;)Lcom/artemis/Entity;
    .locals 1
    .param p1, "type"    # Lcom/artemis/ComponentType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->remove(Lcom/artemis/ComponentType;)Lcom/artemis/EntityEdit;

    .line 143
    return-object p0
.end method

.method public removeComponent(Ljava/lang/Class;)Lcom/artemis/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/Entity;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    invoke-virtual {p0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->remove(Ljava/lang/Class;)Lcom/artemis/EntityEdit;

    .line 152
    return-object p0
.end method

.method public setUuid(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->hasUuidManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/artemis/Entity;->world:Lcom/artemis/World;

    const-class v1, Lcom/artemis/managers/UuidEntityManager;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/UuidEntityManager;

    invoke-virtual {v0, p0, p1}, Lcom/artemis/managers/UuidEntityManager;->setUuid(Lcom/artemis/Entity;Ljava/util/UUID;)V

    .line 298
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/artemis/Entity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
