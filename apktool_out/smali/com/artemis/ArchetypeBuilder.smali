.class public Lcom/artemis/ArchetypeBuilder;
.super Ljava/lang/Object;
.source "ArchetypeBuilder.java"


# instance fields
.field private final classes:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/artemis/ArchetypeBuilder;-><init>(Lcom/artemis/Archetype;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/artemis/Archetype;)V
    .locals 3
    .param p1, "parent"    # Lcom/artemis/Archetype;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Lcom/artemis/utils/Bag;

    invoke-direct {v1}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v1, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    .line 29
    if-nez p1, :cond_1

    .line 34
    :cond_0
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/artemis/Archetype;->types:[Lcom/artemis/ComponentType;

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    iget-object v2, p1, Lcom/artemis/Archetype;->types:[Lcom/artemis/ComponentType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/artemis/ComponentType;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static bitset([Lcom/artemis/ComponentType;)Ljava/util/BitSet;
    .locals 3
    .param p0, "types"    # [Lcom/artemis/ComponentType;

    .prologue
    .line 113
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 114
    .local v0, "bs":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-le v2, v1, :cond_0

    .line 115
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-object v0
.end method

.method private resolveTypes(Lcom/artemis/World;)[Lcom/artemis/ComponentType;
    .locals 7
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    .line 123
    .local v0, "cm":Lcom/artemis/ComponentManager;
    if-nez v0, :cond_0

    .line 124
    new-instance v5, Lcom/artemis/MundaneWireException;

    const-string v6, "World#initialize() has not been called."

    invoke-direct {v5, v6}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_0
    iget-object v3, v0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 127
    .local v3, "tf":Lcom/artemis/ComponentTypeFactory;
    iget-object v5, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v5}, Lcom/artemis/utils/Bag;->size()I

    move-result v5

    new-array v4, v5, [Lcom/artemis/ComponentType;

    .line 128
    .local v4, "types":[Lcom/artemis/ComponentType;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v5}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 129
    iget-object v5, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v5, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v3, v5}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v5

    aput-object v5, v4, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-object v4
.end method


# virtual methods
.method public add(Ljava/lang/Class;)Lcom/artemis/ArchetypeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/ArchetypeBuilder;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-object p0
.end method

.method public varargs add([Ljava/lang/Class;)Lcom/artemis/ArchetypeBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/ArchetypeBuilder;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-le v2, v0, :cond_1

    .line 64
    aget-object v1, p1, v0

    .line 66
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v2, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v1}, Lcom/artemis/utils/Bag;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_1
    return-object p0
.end method

.method public build(Lcom/artemis/World;)Lcom/artemis/Archetype;
    .locals 4
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/artemis/ArchetypeBuilder;->resolveTypes(Lcom/artemis/World;)[Lcom/artemis/ComponentType;

    move-result-object v1

    .line 107
    .local v1, "types":[Lcom/artemis/ComponentType;
    invoke-virtual {p1}, Lcom/artemis/World;->getEntityManager()Lcom/artemis/EntityManager;

    move-result-object v0

    .line 108
    .local v0, "em":Lcom/artemis/EntityManager;
    new-instance v2, Lcom/artemis/Archetype;

    invoke-static {v1}, Lcom/artemis/ArchetypeBuilder;->bitset([Lcom/artemis/ComponentType;)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/artemis/EntityManager;->compositionIdentity(Ljava/util/BitSet;)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/artemis/Archetype;-><init>([Lcom/artemis/ComponentType;I)V

    return-object v2
.end method

.method public remove(Ljava/lang/Class;)Lcom/artemis/ArchetypeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/ArchetypeBuilder;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method public varargs remove([Ljava/lang/Class;)Lcom/artemis/ArchetypeBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/ArchetypeBuilder;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/artemis/ArchetypeBuilder;->classes:Lcom/artemis/utils/Bag;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-object p0
.end method
