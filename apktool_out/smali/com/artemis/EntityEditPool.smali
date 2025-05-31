.class final Lcom/artemis/EntityEditPool;
.super Ljava/lang/Object;
.source "EntityEditPool.java"


# instance fields
.field private alternateEdited:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/EntityEdit;",
            ">;"
        }
    .end annotation
.end field

.field private edited:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/EntityEdit;",
            ">;"
        }
    .end annotation
.end field

.field private final editedIds:Ljava/util/BitSet;

.field private final pool:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/EntityEdit;",
            ">;"
        }
    .end annotation
.end field

.field private final world:Lcom/artemis/World;


# direct methods
.method constructor <init>(Lcom/artemis/World;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityEditPool;->pool:Lcom/artemis/utils/Bag;

    .line 17
    iput-object p1, p0, Lcom/artemis/EntityEditPool;->world:Lcom/artemis/World;

    .line 19
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    .line 20
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityEditPool;->alternateEdited:Lcom/artemis/WildBag;

    .line 21
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityEditPool;->editedIds:Ljava/util/BitSet;

    .line 22
    return-void
.end method

.method private static addToPerformer(Lcom/artemis/World;Lcom/artemis/EntityEdit;)V
    .locals 2
    .param p0, "w"    # Lcom/artemis/World;
    .param p1, "edit"    # Lcom/artemis/EntityEdit;

    .prologue
    .line 102
    iget-boolean v0, p1, Lcom/artemis/EntityEdit;->scheduledDeletion:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/artemis/World;->deleted:Lcom/artemis/WildBag;

    iget-object v1, p1, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-boolean v0, p1, Lcom/artemis/EntityEdit;->hasBeenAddedToWorld:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/artemis/World;->changed:Lcom/artemis/WildBag;

    iget-object v1, p1, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/artemis/World;->added:Lcom/artemis/WildBag;

    iget-object v1, p1, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private entityEdit()Lcom/artemis/EntityEdit;
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/artemis/EntityEditPool;->pool:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Lcom/artemis/EntityEdit;

    iget-object v1, p0, Lcom/artemis/EntityEditPool;->world:Lcom/artemis/World;

    invoke-direct {v0, v1}, Lcom/artemis/EntityEdit;-><init>(Lcom/artemis/World;)V

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/artemis/EntityEditPool;->pool:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/EntityEdit;

    .line 54
    .local v0, "edit":Lcom/artemis/EntityEdit;
    iget-object v1, v0, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/artemis/EntityEdit;->scheduledDeletion:Z

    goto :goto_0
.end method

.method private findEntityEdit(Lcom/artemis/Entity;)Lcom/artemis/EntityEdit;
    .locals 5
    .param p1, "entity"    # Lcom/artemis/Entity;

    .prologue
    .line 64
    iget-object v4, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v4}, Lcom/artemis/WildBag;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 65
    .local v3, "last":I
    iget-object v4, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v4, v3}, Lcom/artemis/WildBag;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artemis/EntityEdit;

    iget-object v4, v4, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    if-ne v4, p1, :cond_0

    .line 66
    iget-object v4, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v4, v3}, Lcom/artemis/WildBag;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artemis/EntityEdit;

    .line 72
    :goto_0
    return-object v4

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v4}, Lcom/artemis/WildBag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "data":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-le v3, v2, :cond_2

    .line 70
    aget-object v1, v0, v2

    check-cast v1, Lcom/artemis/EntityEdit;

    .line 71
    .local v1, "edit":Lcom/artemis/EntityEdit;
    iget-object v4, v1, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v4, p1}, Lcom/artemis/Entity;->equals(Lcom/artemis/Entity;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 72
    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    .end local v1    # "edit":Lcom/artemis/EntityEdit;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method private swapEditBags()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    .line 113
    .local v0, "tmp":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<Lcom/artemis/EntityEdit;>;"
    iget-object v1, p0, Lcom/artemis/EntityEditPool;->alternateEdited:Lcom/artemis/WildBag;

    iput-object v1, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    .line 114
    iput-object v0, p0, Lcom/artemis/EntityEditPool;->alternateEdited:Lcom/artemis/WildBag;

    .line 115
    return-void
.end method


# virtual methods
.method isEdited(Lcom/artemis/Entity;)Z
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/artemis/EntityEditPool;->editedIds:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method obtainEditor(Lcom/artemis/Entity;)Lcom/artemis/EntityEdit;
    .locals 4
    .param p1, "entity"    # Lcom/artemis/Entity;

    .prologue
    .line 30
    iget-object v2, p0, Lcom/artemis/EntityEditPool;->editedIds:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-direct {p0, p1}, Lcom/artemis/EntityEditPool;->findEntityEdit(Lcom/artemis/Entity;)Lcom/artemis/EntityEdit;

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/artemis/EntityEditPool;->entityEdit()Lcom/artemis/EntityEdit;

    move-result-object v1

    .line 34
    .local v1, "edit":Lcom/artemis/EntityEdit;
    iget-object v2, p0, Lcom/artemis/EntityEditPool;->editedIds:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 35
    iget-object v2, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v2, v1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 37
    iput-object p1, v1, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    .line 38
    iget-object v2, p0, Lcom/artemis/EntityEditPool;->world:Lcom/artemis/World;

    invoke-virtual {v2}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artemis/EntityManager;->isActive(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/artemis/EntityEdit;->hasBeenAddedToWorld:Z

    .line 43
    invoke-virtual {p1}, Lcom/artemis/Entity;->getComponentBits()Ljava/util/BitSet;

    move-result-object v0

    .line 44
    .local v0, "bits":Ljava/util/BitSet;
    iget-object v2, v1, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_0
.end method

.method processEntities()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 79
    iget-object v7, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v7}, Lcom/artemis/WildBag;->size()I

    move-result v4

    .line 80
    .local v4, "size":I
    if-nez v4, :cond_0

    .line 98
    :goto_0
    return v6

    .line 83
    :cond_0
    iget-object v7, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v7}, Lcom/artemis/WildBag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "data":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/artemis/EntityEditPool;->editedIds:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    .line 85
    iget-object v7, p0, Lcom/artemis/EntityEditPool;->edited:Lcom/artemis/WildBag;

    invoke-virtual {v7, v6}, Lcom/artemis/WildBag;->setSize(I)V

    .line 86
    invoke-direct {p0}, Lcom/artemis/EntityEditPool;->swapEditBags()V

    .line 88
    iget-object v5, p0, Lcom/artemis/EntityEditPool;->world:Lcom/artemis/World;

    .line 89
    .local v5, "w":Lcom/artemis/World;
    invoke-virtual {v5}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v2

    .line 90
    .local v2, "em":Lcom/artemis/EntityManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-le v4, v3, :cond_1

    .line 91
    aget-object v1, v0, v3

    check-cast v1, Lcom/artemis/EntityEdit;

    .line 92
    .local v1, "edit":Lcom/artemis/EntityEdit;
    invoke-virtual {v2, v1}, Lcom/artemis/EntityManager;->updateCompositionIdentity(Lcom/artemis/EntityEdit;)V

    .line 93
    invoke-static {v5, v1}, Lcom/artemis/EntityEditPool;->addToPerformer(Lcom/artemis/World;Lcom/artemis/EntityEdit;)V

    .line 95
    iget-object v6, p0, Lcom/artemis/EntityEditPool;->pool:Lcom/artemis/utils/Bag;

    invoke-virtual {v6, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "edit":Lcom/artemis/EntityEdit;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method
