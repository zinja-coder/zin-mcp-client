.class public final Lcom/artemis/EntityTransmuter;
.super Ljava/lang/Object;
.source "EntityTransmuter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/EntityTransmuter$TransmuteOperation;
    }
.end annotation


# instance fields
.field private final additions:Ljava/util/BitSet;

.field private final bs:Ljava/util/BitSet;

.field private final operations:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/EntityTransmuter$TransmuteOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final removals:Ljava/util/BitSet;

.field private final world:Lcom/artemis/World;


# direct methods
.method constructor <init>(Lcom/artemis/World;Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;
    .param p2, "additions"    # Ljava/util/BitSet;
    .param p3, "removals"    # Ljava/util/BitSet;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    .line 29
    iput-object p2, p0, Lcom/artemis/EntityTransmuter;->additions:Ljava/util/BitSet;

    .line 30
    iput-object p3, p0, Lcom/artemis/EntityTransmuter;->removals:Ljava/util/BitSet;

    .line 31
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityTransmuter;->operations:Lcom/artemis/utils/Bag;

    .line 33
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityTransmuter;->bs:Ljava/util/BitSet;

    .line 34
    return-void
.end method

.method private createOperation(Lcom/artemis/Entity;)Lcom/artemis/EntityTransmuter$TransmuteOperation;
    .locals 5
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/artemis/Entity;->getComponentBits()Ljava/util/BitSet;

    move-result-object v1

    .line 60
    .local v1, "origin":Ljava/util/BitSet;
    iget-object v2, p0, Lcom/artemis/EntityTransmuter;->bs:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 61
    iget-object v2, p0, Lcom/artemis/EntityTransmuter;->bs:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 62
    iget-object v2, p0, Lcom/artemis/EntityTransmuter;->bs:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->additions:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 63
    iget-object v2, p0, Lcom/artemis/EntityTransmuter;->bs:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->removals:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 64
    iget-object v2, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    invoke-virtual {v2}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->bs:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Lcom/artemis/EntityManager;->compositionIdentity(Ljava/util/BitSet;)I

    move-result v0

    .line 65
    .local v0, "compositionId":I
    new-instance v2, Lcom/artemis/EntityTransmuter$TransmuteOperation;

    invoke-direct {p0, v1}, Lcom/artemis/EntityTransmuter;->getAdditions(Ljava/util/BitSet;)Lcom/artemis/utils/Bag;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/artemis/EntityTransmuter;->getRemovals(Ljava/util/BitSet;)Lcom/artemis/utils/Bag;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/artemis/EntityTransmuter$TransmuteOperation;-><init>(ILcom/artemis/utils/Bag;Lcom/artemis/utils/Bag;)V

    return-object v2
.end method

.method private getAdditions(Ljava/util/BitSet;)Lcom/artemis/utils/Bag;
    .locals 5
    .param p1, "origin"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/ComponentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    invoke-virtual {v3}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v3

    iget-object v1, v3, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 70
    .local v1, "tf":Lcom/artemis/ComponentTypeFactory;
    new-instance v2, Lcom/artemis/utils/Bag;

    invoke-direct {v2}, Lcom/artemis/utils/Bag;-><init>()V

    .line 71
    .local v2, "types":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/ComponentType;>;"
    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->additions:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v1, v0}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(I)Lcom/artemis/ComponentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->additions:Ljava/util/BitSet;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 76
    :cond_1
    return-object v2
.end method

.method private getOperation(Lcom/artemis/Entity;)Lcom/artemis/EntityTransmuter$TransmuteOperation;
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/artemis/Entity;->getCompositionId()I

    move-result v0

    .line 50
    .local v0, "compositionId":I
    iget-object v2, p0, Lcom/artemis/EntityTransmuter;->operations:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v0}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/EntityTransmuter$TransmuteOperation;

    .line 51
    .local v1, "operation":Lcom/artemis/EntityTransmuter$TransmuteOperation;
    if-nez v1, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/artemis/EntityTransmuter;->createOperation(Lcom/artemis/Entity;)Lcom/artemis/EntityTransmuter$TransmuteOperation;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/artemis/EntityTransmuter;->operations:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v0, v1}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 55
    :cond_0
    return-object v1
.end method

.method private getRemovals(Ljava/util/BitSet;)Lcom/artemis/utils/Bag;
    .locals 5
    .param p1, "origin"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/ComponentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    invoke-virtual {v3}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v3

    iget-object v1, v3, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 81
    .local v1, "tf":Lcom/artemis/ComponentTypeFactory;
    new-instance v2, Lcom/artemis/utils/Bag;

    invoke-direct {v2}, Lcom/artemis/utils/Bag;-><init>()V

    .line 82
    .local v2, "types":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/ComponentType;>;"
    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->removals:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v1, v0}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(I)Lcom/artemis/ComponentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/artemis/EntityTransmuter;->removals:Ljava/util/BitSet;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    return-object v2
.end method


# virtual methods
.method public transmute(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/artemis/EntityTransmuter;->getOperation(Lcom/artemis/Entity;)Lcom/artemis/EntityTransmuter$TransmuteOperation;

    move-result-object v0

    .line 39
    .local v0, "operation":Lcom/artemis/EntityTransmuter$TransmuteOperation;
    iget-object v1, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/artemis/EntityTransmuter$TransmuteOperation;->perform(Lcom/artemis/Entity;Lcom/artemis/ComponentManager;)V

    .line 40
    iget-object v1, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/artemis/EntityManager;->setIdentity(Lcom/artemis/Entity;Lcom/artemis/EntityTransmuter$TransmuteOperation;)V

    .line 42
    invoke-virtual {p1}, Lcom/artemis/Entity;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    iget-object v1, v1, Lcom/artemis/World;->changed:Lcom/artemis/WildBag;

    invoke-virtual {v1, p1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/artemis/EntityTransmuter;->world:Lcom/artemis/World;

    iget-object v1, v1, Lcom/artemis/World;->added:Lcom/artemis/WildBag;

    invoke-virtual {v1, p1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
