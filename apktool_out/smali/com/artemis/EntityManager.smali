.class public Lcom/artemis/EntityManager;
.super Lcom/artemis/Manager;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/EntityManager$RecyclingEntityFactory;,
        Lcom/artemis/EntityManager$ComponentIdentityResolver;
    }
.end annotation


# static fields
.field static final NO_COMPONENTS:I = 0x1


# instance fields
.field private active:I

.field private added:J

.field private created:J

.field private deleted:J

.field private final disabled:Ljava/util/BitSet;

.field private final entities:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private entityToIdentity:Lcom/artemis/utils/IntBag;

.field private highestSeenIdentity:I

.field identityResolver:Lcom/artemis/EntityManager$ComponentIdentityResolver;

.field private recyclingEntityFactory:Lcom/artemis/EntityManager$RecyclingEntityFactory;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "initialContainerSize"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/artemis/Manager;-><init>()V

    .line 32
    new-instance v0, Lcom/artemis/EntityManager$ComponentIdentityResolver;

    invoke-direct {v0}, Lcom/artemis/EntityManager$ComponentIdentityResolver;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityManager;->identityResolver:Lcom/artemis/EntityManager$ComponentIdentityResolver;

    .line 33
    new-instance v0, Lcom/artemis/utils/IntBag;

    invoke-direct {v0}, Lcom/artemis/utils/IntBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    .line 40
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0, p1}, Lcom/artemis/utils/Bag;-><init>(I)V

    iput-object v0, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    .line 41
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityManager;->disabled:Ljava/util/BitSet;

    .line 42
    return-void
.end method

.method private forceResolveIdentity(Lcom/artemis/Entity;)I
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artemis/EntityManager;->updateCompositionIdentity(Lcom/artemis/EntityEdit;)V

    .line 262
    iget-object v0, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artemis/utils/IntBag;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public added(Lcom/artemis/Entity;)V
    .locals 4
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 95
    iget v0, p0, Lcom/artemis/EntityManager;->active:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artemis/EntityManager;->active:I

    .line 96
    iget-wide v0, p0, Lcom/artemis/EntityManager;->added:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/artemis/EntityManager;->added:J

    .line 97
    iget-object v0, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method protected clean()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/artemis/EntityManager;->recyclingEntityFactory:Lcom/artemis/EntityManager$RecyclingEntityFactory;

    invoke-virtual {v0}, Lcom/artemis/EntityManager$RecyclingEntityFactory;->recycle()V

    .line 246
    return-void
.end method

.method componentBits(Lcom/artemis/Entity;)Ljava/util/BitSet;
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/IntBag;->get(I)I

    move-result v0

    .line 78
    .local v0, "identityIndex":I
    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/artemis/EntityManager;->forceResolveIdentity(Lcom/artemis/Entity;)I

    move-result v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/artemis/EntityManager;->identityResolver:Lcom/artemis/EntityManager$ComponentIdentityResolver;

    invoke-static {v1}, Lcom/artemis/EntityManager$ComponentIdentityResolver;->access$000(Lcom/artemis/EntityManager$ComponentIdentityResolver;)Lcom/artemis/utils/Bag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    return-object v1
.end method

.method compositionIdentity(Ljava/util/BitSet;)I
    .locals 2
    .param p1, "componentBits"    # Ljava/util/BitSet;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/artemis/EntityManager;->identityResolver:Lcom/artemis/EntityManager$ComponentIdentityResolver;

    invoke-virtual {v1, p1}, Lcom/artemis/EntityManager$ComponentIdentityResolver;->getIdentity(Ljava/util/BitSet;)I

    move-result v0

    .line 127
    .local v0, "identity":I
    iget v1, p0, Lcom/artemis/EntityManager;->highestSeenIdentity:I

    if-le v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/artemis/EntityManager;->world:Lcom/artemis/World;

    invoke-virtual {v1, v0, p1}, Lcom/artemis/World;->processComponentIdentity(ILjava/util/BitSet;)V

    .line 129
    iput v0, p0, Lcom/artemis/EntityManager;->highestSeenIdentity:I

    .line 131
    :cond_0
    return v0
.end method

.method protected createEntityInstance()Lcom/artemis/Entity;
    .locals 6

    .prologue
    .line 55
    iget-object v1, p0, Lcom/artemis/EntityManager;->recyclingEntityFactory:Lcom/artemis/EntityManager$RecyclingEntityFactory;

    invoke-virtual {v1}, Lcom/artemis/EntityManager$RecyclingEntityFactory;->obtain()Lcom/artemis/Entity;

    move-result-object v0

    .line 56
    .local v0, "e":Lcom/artemis/Entity;
    iget-object v1, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-virtual {v0}, Lcom/artemis/Entity;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/artemis/utils/IntBag;->set(II)V

    .line 57
    iget-wide v2, p0, Lcom/artemis/EntityManager;->created:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/artemis/EntityManager;->created:J

    .line 60
    iget-object v1, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    invoke-virtual {v0}, Lcom/artemis/Entity;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 61
    return-object v0
.end method

.method protected createEntityInstance(Lcom/artemis/Archetype;)Lcom/artemis/Entity;
    .locals 4
    .param p1, "archetype"    # Lcom/artemis/Archetype;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/artemis/EntityManager;->createEntityInstance()Lcom/artemis/Entity;

    move-result-object v0

    .line 71
    .local v0, "e":Lcom/artemis/Entity;
    iget-object v1, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-virtual {v0}, Lcom/artemis/Entity;->getId()I

    move-result v2

    iget v3, p1, Lcom/artemis/Archetype;->compositionId:I

    invoke-virtual {v1, v2, v3}, Lcom/artemis/utils/IntBag;->set(II)V

    .line 72
    return-object v0
.end method

.method public deleted(Lcom/artemis/Entity;)V
    .locals 4
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 155
    iget v0, p0, Lcom/artemis/EntityManager;->active:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/artemis/EntityManager;->active:I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/artemis/EntityManager;->disabled:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 159
    iget-object v0, p0, Lcom/artemis/EntityManager;->recyclingEntityFactory:Lcom/artemis/EntityManager$RecyclingEntityFactory;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityManager$RecyclingEntityFactory;->free(Lcom/artemis/Entity;)V

    .line 160
    iget-wide v0, p0, Lcom/artemis/EntityManager;->deleted:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/artemis/EntityManager;->deleted:J

    .line 161
    return-void
.end method

.method public disabled(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/artemis/EntityManager;->disabled:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 143
    return-void
.end method

.method public enabled(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/artemis/EntityManager;->disabled:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 111
    return-void
.end method

.method public getActiveEntityCount()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/artemis/EntityManager;->active:I

    return v0
.end method

.method protected getEntity(I)Lcom/artemis/Entity;
    .locals 1
    .param p1, "entityId"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Entity;

    return-object v0
.end method

.method protected getIdentity(Lcom/artemis/Entity;)I
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/IntBag;->get(I)I

    move-result v0

    .line 250
    .local v0, "identity":I
    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/artemis/EntityManager;->forceResolveIdentity(Lcom/artemis/Entity;)I

    move-result v0

    .line 253
    :cond_0
    return v0
.end method

.method public getTotalAdded()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/artemis/EntityManager;->added:J

    return-wide v0
.end method

.method public getTotalCreated()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/artemis/EntityManager;->created:J

    return-wide v0
.end method

.method public getTotalDeleted()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/artemis/EntityManager;->deleted:J

    return-wide v0
.end method

.method protected initialize()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/artemis/EntityManager$RecyclingEntityFactory;

    iget-object v1, p0, Lcom/artemis/EntityManager;->world:Lcom/artemis/World;

    iget-object v2, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-direct {v0, v1, v2}, Lcom/artemis/EntityManager$RecyclingEntityFactory;-><init>(Lcom/artemis/World;Lcom/artemis/utils/IntBag;)V

    iput-object v0, p0, Lcom/artemis/EntityManager;->recyclingEntityFactory:Lcom/artemis/EntityManager$RecyclingEntityFactory;

    .line 47
    return-void
.end method

.method public isActive(I)Z
    .locals 2
    .param p1, "entityId"    # I

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lcom/artemis/EntityManager;->entities:Lcom/artemis/utils/Bag;

    invoke-virtual {v1, p1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "entityId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/artemis/EntityManager;->disabled:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setIdentity(Lcom/artemis/Entity;Lcom/artemis/EntityTransmuter$TransmuteOperation;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "operation"    # Lcom/artemis/EntityTransmuter$TransmuteOperation;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    iget v2, p2, Lcom/artemis/EntityTransmuter$TransmuteOperation;->compositionId:I

    invoke-virtual {v0, v1, v2}, Lcom/artemis/utils/IntBag;->set(II)V

    .line 258
    return-void
.end method

.method updateCompositionIdentity(Lcom/artemis/EntityEdit;)V
    .locals 3
    .param p1, "edit"    # Lcom/artemis/EntityEdit;

    .prologue
    .line 115
    iget-object v1, p1, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Lcom/artemis/EntityManager;->compositionIdentity(Ljava/util/BitSet;)I

    move-result v0

    .line 116
    .local v0, "identity":I
    iget-object v1, p0, Lcom/artemis/EntityManager;->entityToIdentity:Lcom/artemis/utils/IntBag;

    iget-object v2, p1, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v2}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/artemis/utils/IntBag;->set(II)V

    .line 117
    return-void
.end method
