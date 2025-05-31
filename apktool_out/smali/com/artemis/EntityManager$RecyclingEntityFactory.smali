.class final Lcom/artemis/EntityManager$RecyclingEntityFactory;
.super Ljava/lang/Object;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecyclingEntityFactory"
.end annotation


# instance fields
.field private entityToIdentity:Lcom/artemis/utils/IntBag;

.field private final limbo:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private nextId:I

.field private final recycled:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final world:Lcom/artemis/World;


# direct methods
.method constructor <init>(Lcom/artemis/World;Lcom/artemis/utils/IntBag;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;
    .param p2, "entityToIdentity"    # Lcom/artemis/utils/IntBag;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->world:Lcom/artemis/World;

    .line 297
    iput-object p2, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->entityToIdentity:Lcom/artemis/utils/IntBag;

    .line 298
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->recycled:Lcom/artemis/utils/Bag;

    .line 299
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->limbo:Lcom/artemis/WildBag;

    .line 300
    return-void
.end method


# virtual methods
.method free(Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->limbo:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method obtain()Lcom/artemis/Entity;
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->recycled:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v0, Lcom/artemis/Entity;

    iget-object v1, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->world:Lcom/artemis/World;

    iget v2, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->nextId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->nextId:I

    invoke-direct {v0, v1, v2}, Lcom/artemis/Entity;-><init>(Lcom/artemis/World;I)V

    .line 325
    :goto_0
    return-object v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->recycled:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Entity;

    .line 324
    .local v0, "e":Lcom/artemis/Entity;
    iget-object v1, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->entityToIdentity:Lcom/artemis/utils/IntBag;

    invoke-virtual {v0}, Lcom/artemis/Entity;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/artemis/utils/IntBag;->set(II)V

    goto :goto_0
.end method

.method recycle()V
    .locals 6

    .prologue
    .line 307
    iget-object v4, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->limbo:Lcom/artemis/WildBag;

    invoke-virtual {v4}, Lcom/artemis/WildBag;->size()I

    move-result v3

    .line 308
    .local v3, "s":I
    if-nez v3, :cond_0

    .line 317
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->limbo:Lcom/artemis/WildBag;

    invoke-virtual {v4}, Lcom/artemis/WildBag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "data":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-le v3, v2, :cond_1

    .line 312
    aget-object v1, v0, v2

    check-cast v1, Lcom/artemis/Entity;

    .line 313
    .local v1, "e":Lcom/artemis/Entity;
    iget-object v4, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->recycled:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 314
    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v1    # "e":Lcom/artemis/Entity;
    :cond_1
    iget-object v4, p0, Lcom/artemis/EntityManager$RecyclingEntityFactory;->limbo:Lcom/artemis/WildBag;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/artemis/WildBag;->setSize(I)V

    goto :goto_0
.end method
