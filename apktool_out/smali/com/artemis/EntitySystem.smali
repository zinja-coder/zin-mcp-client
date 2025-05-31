.class public abstract Lcom/artemis/EntitySystem;
.super Ljava/lang/Object;
.source "EntitySystem.java"

# interfaces
.implements Lcom/artemis/EntityObserver;


# instance fields
.field private final activeIds:Ljava/util/BitSet;

.field private actives:Lcom/artemis/utils/IntBag;

.field private activesIsDirty:Z

.field private aspect:Lcom/artemis/Aspect;

.field private final aspectCache:Ljava/util/BitSet;

.field private dummy:Z

.field private enabled:Z

.field protected flyweight:Lcom/artemis/Entity;

.field private passive:Z

.field protected world:Lcom/artemis/World;


# direct methods
.method public constructor <init>(Lcom/artemis/Aspect;)V
    .locals 1
    .param p1, "aspect"    # Lcom/artemis/Aspect;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntitySystem;->aspectCache:Ljava/util/BitSet;

    .line 50
    iput-object p1, p0, Lcom/artemis/EntitySystem;->aspect:Lcom/artemis/Aspect;

    .line 51
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    .line 52
    new-instance v0, Lcom/artemis/utils/IntBag;

    invoke-direct {v0}, Lcom/artemis/utils/IntBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntitySystem;->actives:Lcom/artemis/utils/IntBag;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/EntitySystem;->enabled:Z

    .line 55
    return-void
.end method

.method private insertToSystem(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/EntitySystem;->activesIsDirty:Z

    .line 226
    invoke-virtual {p0, p1}, Lcom/artemis/EntitySystem;->inserted(Lcom/artemis/Entity;)V

    .line 227
    return-void
.end method

.method private rebuildCompressedActives()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 86
    iget-object v1, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    .line 87
    .local v1, "bs":Ljava/util/BitSet;
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    .line 88
    .local v6, "size":I
    iget-object v7, p0, Lcom/artemis/EntitySystem;->actives:Lcom/artemis/utils/IntBag;

    invoke-virtual {v7, v6}, Lcom/artemis/utils/IntBag;->setSize(I)V

    .line 89
    iget-object v7, p0, Lcom/artemis/EntitySystem;->actives:Lcom/artemis/utils/IntBag;

    invoke-virtual {v7, v6}, Lcom/artemis/utils/IntBag;->ensureCapacity(I)V

    .line 90
    iget-object v7, p0, Lcom/artemis/EntitySystem;->world:Lcom/artemis/World;

    invoke-virtual {v7}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v2

    .line 91
    .local v2, "em":Lcom/artemis/EntityManager;
    iget-object v7, p0, Lcom/artemis/EntitySystem;->actives:Lcom/artemis/utils/IntBag;

    invoke-virtual {v7}, Lcom/artemis/utils/IntBag;->getData()[I

    move-result-object v0

    .line 92
    .local v0, "activesArray":[I
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "index":I
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_0
    if-ltz v3, :cond_0

    .line 93
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput v3, v0, v5

    .line 92
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 96
    :cond_0
    iput-boolean v8, p0, Lcom/artemis/EntitySystem;->activesIsDirty:Z

    .line 97
    return-void
.end method

.method private removeFromSystem(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/EntitySystem;->activesIsDirty:Z

    .line 213
    invoke-virtual {p0, p1}, Lcom/artemis/EntitySystem;->removed(Lcom/artemis/Entity;)V

    .line 214
    return-void
.end method


# virtual methods
.method public final added(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/artemis/EntitySystem;->check(Lcom/artemis/Entity;)V

    .line 243
    return-void
.end method

.method public final added(Lcom/artemis/utils/ImmutableBag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    move-object v3, p1

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 249
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Entity;

    invoke-virtual {p0, v3}, Lcom/artemis/EntitySystem;->check(Lcom/artemis/Entity;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method protected begin()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final changed(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/artemis/EntitySystem;->check(Lcom/artemis/Entity;)V

    .line 284
    return-void
.end method

.method public final changed(Lcom/artemis/utils/ImmutableBag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    move-object v3, p1

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 256
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 257
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Entity;

    invoke-virtual {p0, v3}, Lcom/artemis/EntitySystem;->check(Lcom/artemis/Entity;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method protected final check(Lcom/artemis/Entity;)V
    .locals 6
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 188
    iget-boolean v4, p0, Lcom/artemis/EntitySystem;->dummy:Z

    if-eqz v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/artemis/EntitySystem;->world:Lcom/artemis/World;

    invoke-virtual {v4}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v1

    .line 192
    .local v1, "em":Lcom/artemis/EntityManager;
    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    .line 193
    .local v2, "id":I
    iget-object v4, p0, Lcom/artemis/EntitySystem;->aspectCache:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Lcom/artemis/EntityManager;->getIdentity(Lcom/artemis/Entity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/artemis/EntityManager;->isActive(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/artemis/EntityManager;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 194
    .local v3, "interested":Z
    :goto_1
    iget-object v4, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 196
    .local v0, "contains":Z
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 197
    invoke-direct {p0, p1}, Lcom/artemis/EntitySystem;->insertToSystem(Lcom/artemis/Entity;)V

    goto :goto_0

    .line 193
    .end local v0    # "contains":Z
    .end local v3    # "interested":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 198
    .restart local v0    # "contains":Z
    .restart local v3    # "interested":Z
    :cond_3
    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/artemis/EntitySystem;->removeFromSystem(Lcom/artemis/Entity;)V

    goto :goto_0
.end method

.method protected checkProcessing()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public final deleted(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/artemis/EntitySystem;->removeFromSystem(Lcom/artemis/Entity;)V

    .line 300
    :cond_0
    return-void
.end method

.method public final deleted(Lcom/artemis/utils/ImmutableBag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    move-object v4, p1

    check-cast v4, Lcom/artemis/utils/Bag;

    invoke-virtual {v4}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, "data":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-le v3, v2, :cond_1

    .line 265
    aget-object v1, v0, v2

    check-cast v1, Lcom/artemis/Entity;

    .line 266
    .local v1, "e":Lcom/artemis/Entity;
    iget-object v4, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/artemis/Entity;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-direct {p0, v1}, Lcom/artemis/EntitySystem;->removeFromSystem(Lcom/artemis/Entity;)V

    .line 264
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "e":Lcom/artemis/Entity;
    :cond_1
    return-void
.end method

.method public final disabled(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/artemis/EntitySystem;->activeIds:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0, p1}, Lcom/artemis/EntitySystem;->removeFromSystem(Lcom/artemis/Entity;)V

    .line 316
    :cond_0
    return-void
.end method

.method protected dispose()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public final enabled(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/artemis/EntitySystem;->check(Lcom/artemis/Entity;)V

    .line 330
    return-void
.end method

.method protected end()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public getActives()Lcom/artemis/utils/ImmutableBag;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    iget-boolean v4, p0, Lcom/artemis/EntitySystem;->activesIsDirty:Z

    if-eqz v4, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/artemis/EntitySystem;->rebuildCompressedActives()V

    .line 385
    :cond_0
    new-instance v1, Lcom/artemis/utils/Bag;

    invoke-direct {v1}, Lcom/artemis/utils/Bag;-><init>()V

    .line 387
    .local v1, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    iget-object v4, p0, Lcom/artemis/EntitySystem;->actives:Lcom/artemis/utils/IntBag;

    invoke-virtual {v4}, Lcom/artemis/utils/IntBag;->getData()[I

    move-result-object v0

    .line 388
    .local v0, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/artemis/EntitySystem;->actives:Lcom/artemis/utils/IntBag;

    invoke-virtual {v4}, Lcom/artemis/utils/IntBag;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-le v3, v2, :cond_1

    .line 389
    iget-object v4, p0, Lcom/artemis/EntitySystem;->world:Lcom/artemis/World;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Lcom/artemis/World;->getEntity(I)Lcom/artemis/Entity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_1
    return-object v1
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected inserted(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 137
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/artemis/EntitySystem;->enabled:Z

    return v0
.end method

.method public isPassive()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/artemis/EntitySystem;->passive:Z

    return v0
.end method

.method public final process()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/artemis/EntitySystem;->enabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/artemis/EntitySystem;->checkProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/artemis/EntitySystem;->begin()V

    .line 75
    iget-boolean v0, p0, Lcom/artemis/EntitySystem;->activesIsDirty:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/artemis/EntitySystem;->rebuildCompressedActives()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/artemis/EntitySystem;->actives:Lcom/artemis/utils/IntBag;

    invoke-virtual {p0, v0}, Lcom/artemis/EntitySystem;->processEntities(Lcom/artemis/utils/IntBag;)V

    .line 80
    invoke-virtual {p0}, Lcom/artemis/EntitySystem;->end()V

    .line 82
    :cond_1
    return-void
.end method

.method processComponentIdentity(ILjava/util/BitSet;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "componentBits"    # Ljava/util/BitSet;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/artemis/EntitySystem;->dummy:Z

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/artemis/EntitySystem;->aspectCache:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/artemis/EntitySystem;->aspect:Lcom/artemis/Aspect;

    invoke-virtual {v1, p2}, Lcom/artemis/Aspect;->isInterested(Ljava/util/BitSet;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method protected abstract processEntities(Lcom/artemis/utils/IntBag;)V
.end method

.method protected removed(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 146
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/artemis/EntitySystem;->enabled:Z

    .line 168
    return-void
.end method

.method protected setPassive(Z)V
    .locals 0
    .param p1, "passive"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/artemis/EntitySystem;->passive:Z

    .line 373
    return-void
.end method

.method protected final setWorld(Lcom/artemis/World;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/artemis/EntitySystem;->aspect:Lcom/artemis/Aspect;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/artemis/EntitySystem;->aspect:Lcom/artemis/Aspect;

    invoke-virtual {v0, p1}, Lcom/artemis/Aspect;->initialize(Lcom/artemis/World;)V

    .line 345
    :goto_0
    iput-object p1, p0, Lcom/artemis/EntitySystem;->world:Lcom/artemis/World;

    .line 346
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/EntitySystem;->dummy:Z

    goto :goto_0
.end method
