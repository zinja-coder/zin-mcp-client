.class public Lcom/artemis/ComponentManager;
.super Lcom/artemis/Manager;
.source "ComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/ComponentManager$1;
    }
.end annotation


# instance fields
.field private final componentsByType:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private final deleted:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private highestSeenEntityId:I

.field private final packedComponentOwners:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final packedComponents:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/PackedComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final pooledComponents:Lcom/artemis/ComponentPool;

.field protected final typeFactory:Lcom/artemis/ComponentTypeFactory;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "entityContainerSize"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/artemis/Manager;-><init>()V

    .line 39
    iput p1, p0, Lcom/artemis/ComponentManager;->highestSeenEntityId:I

    .line 40
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    .line 41
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    .line 42
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentManager;->packedComponentOwners:Lcom/artemis/utils/Bag;

    .line 43
    new-instance v0, Lcom/artemis/ComponentPool;

    invoke-direct {v0}, Lcom/artemis/ComponentPool;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentManager;->pooledComponents:Lcom/artemis/ComponentPool;

    .line 44
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentManager;->deleted:Lcom/artemis/WildBag;

    .line 46
    new-instance v0, Lcom/artemis/ComponentTypeFactory;

    invoke-direct {v0}, Lcom/artemis/ComponentTypeFactory;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 47
    return-void
.end method

.method private addBasicComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;Lcom/artemis/Component;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "type"    # Lcom/artemis/ComponentType;
    .param p3, "component"    # Lcom/artemis/Component;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 210
    .local v0, "components":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/artemis/utils/Bag;

    .end local v0    # "components":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    iget v1, p0, Lcom/artemis/ComponentManager;->highestSeenEntityId:I

    invoke-direct {v0, v1}, Lcom/artemis/utils/Bag;-><init>(I)V

    .line 212
    .restart local v0    # "components":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    iget-object v1, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 216
    return-void
.end method

.method private addPackedComponent(Lcom/artemis/ComponentType;Lcom/artemis/PackedComponent;)V
    .locals 3
    .param p1, "type"    # Lcom/artemis/ComponentType;
    .param p2, "component"    # Lcom/artemis/PackedComponent;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/PackedComponent;

    .line 202
    .local v0, "packed":Lcom/artemis/PackedComponent;
    if-nez v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method private ensurePackedComponentCapacity(Lcom/artemis/Entity;)V
    .locals 5
    .param p1, "owner"    # Lcom/artemis/Entity;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    .line 94
    .local v2, "id":I
    iget v4, p0, Lcom/artemis/ComponentManager;->highestSeenEntityId:I

    add-int/lit8 v4, v4, -0x1

    if-ge v4, v2, :cond_1

    .line 95
    iput v2, p0, Lcom/artemis/ComponentManager;->highestSeenEntityId:I

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {v4}, Lcom/artemis/utils/Bag;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-le v3, v1, :cond_1

    .line 97
    iget-object v4, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/PackedComponent;

    .line 98
    .local v0, "component":Lcom/artemis/PackedComponent;
    if-nez v0, :cond_0

    .line 96
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lcom/artemis/PackedComponent;->ensureCapacity(I)V

    goto :goto_1

    .line 104
    .end local v0    # "component":Lcom/artemis/PackedComponent;
    .end local v1    # "i":I
    .end local v3    # "s":I
    :cond_1
    return-void
.end method

.method private removeComponents(Lcom/artemis/Entity;)V
    .locals 8
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/artemis/Entity;->getComponentBits()Ljava/util/BitSet;

    move-result-object v0

    .line 138
    .local v0, "componentBits":Ljava/util/BitSet;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 139
    sget-object v4, Lcom/artemis/ComponentManager$1;->$SwitchMap$com$artemis$ComponentType$Taxonomy:[I

    iget-object v5, p0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    invoke-virtual {v5, v1}, Lcom/artemis/ComponentTypeFactory;->getTaxonomy(I)Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/artemis/ComponentType$Taxonomy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 154
    new-instance v4, Lcom/artemis/InvalidComponentException;

    const-class v5, Lcom/artemis/Component;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " unknown component type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    invoke-virtual {v7, v1}, Lcom/artemis/ComponentTypeFactory;->getTaxonomy(I)Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/artemis/InvalidComponentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v4

    .line 141
    :pswitch_0
    iget-object v4, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 138
    :goto_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v4, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/Component;

    .line 145
    .local v3, "pooled":Lcom/artemis/Component;
    iget-object v4, p0, Lcom/artemis/ComponentManager;->pooledComponents:Lcom/artemis/ComponentPool;

    check-cast v3, Lcom/artemis/PooledComponent;

    .end local v3    # "pooled":Lcom/artemis/Component;
    invoke-virtual {v4, v3, v1}, Lcom/artemis/ComponentPool;->free(Lcom/artemis/PooledComponent;I)V

    .line 146
    iget-object v4, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    goto :goto_1

    .line 149
    :pswitch_2
    iget-object v4, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/PackedComponent;

    .line 150
    .local v2, "pc":Lcom/artemis/PackedComponent;
    invoke-virtual {v2, p1}, Lcom/artemis/PackedComponent;->forEntity(Lcom/artemis/Entity;)V

    .line 151
    invoke-virtual {v2}, Lcom/artemis/PackedComponent;->reset()V

    goto :goto_1

    .line 157
    .end local v2    # "pc":Lcom/artemis/PackedComponent;
    :cond_0
    return-void

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;Lcom/artemis/Component;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "type"    # Lcom/artemis/ComponentType;
    .param p3, "component"    # Lcom/artemis/Component;

    .prologue
    .line 187
    invoke-virtual {p2}, Lcom/artemis/ComponentType;->isPackedComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    check-cast p3, Lcom/artemis/PackedComponent;

    .end local p3    # "component":Lcom/artemis/Component;
    invoke-direct {p0, p2, p3}, Lcom/artemis/ComponentManager;->addPackedComponent(Lcom/artemis/ComponentType;Lcom/artemis/PackedComponent;)V

    .line 191
    :goto_0
    return-void

    .line 190
    .restart local p3    # "component":Lcom/artemis/Component;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/artemis/ComponentManager;->addBasicComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;Lcom/artemis/Component;)V

    goto :goto_0
.end method

.method protected addComponents(Lcom/artemis/Entity;Lcom/artemis/Archetype;)V
    .locals 4
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "archetype"    # Lcom/artemis/Archetype;

    .prologue
    .line 194
    iget-object v2, p2, Lcom/artemis/Archetype;->types:[Lcom/artemis/ComponentType;

    .line 195
    .local v2, "types":[Lcom/artemis/ComponentType;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "s":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 196
    aget-object v3, v2, v0

    invoke-virtual {p0, p1, v3}, Lcom/artemis/ComponentManager;->create(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)Lcom/artemis/Component;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public added(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 320
    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v0

    .line 321
    .local v0, "id":I
    iget v1, p0, Lcom/artemis/ComponentManager;->highestSeenEntityId:I

    add-int/lit8 v1, v1, -0x1

    if-ge v1, v0, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/artemis/ComponentManager;->ensurePackedComponentCapacity(Lcom/artemis/Entity;)V

    .line 324
    :cond_0
    return-void
.end method

.method protected clean()V
    .locals 5

    .prologue
    .line 330
    iget-object v3, p0, Lcom/artemis/ComponentManager;->deleted:Lcom/artemis/WildBag;

    invoke-virtual {v3}, Lcom/artemis/WildBag;->size()I

    move-result v2

    .line 331
    .local v2, "s":I
    if-lez v2, :cond_1

    .line 332
    iget-object v3, p0, Lcom/artemis/ComponentManager;->deleted:Lcom/artemis/WildBag;

    invoke-virtual {v3}, Lcom/artemis/WildBag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 334
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Entity;

    invoke-direct {p0, v3}, Lcom/artemis/ComponentManager;->removeComponents(Lcom/artemis/Entity;)V

    .line 335
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/artemis/ComponentManager;->deleted:Lcom/artemis/WildBag;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/artemis/WildBag;->setSize(I)V

    .line 339
    .end local v0    # "data":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method create(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)Lcom/artemis/Component;
    .locals 7
    .param p1, "owner"    # Lcom/artemis/Entity;
    .param p2, "type"    # Lcom/artemis/ComponentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Lcom/artemis/Entity;",
            "Lcom/artemis/ComponentType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 58
    .local v1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "component":Lcom/artemis/Component;, "TT;"
    sget-object v4, Lcom/artemis/ComponentManager$1;->$SwitchMap$com$artemis$ComponentType$Taxonomy:[I

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getTaxonomy()Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/artemis/ComponentType$Taxonomy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 85
    new-instance v4, Lcom/artemis/InvalidComponentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " unknown component type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getTaxonomy()Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/artemis/InvalidComponentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v4

    .line 63
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/artemis/ComponentManager;->newInstance(Ljava/lang/Class;Z)Lcom/artemis/Component;

    move-result-object v0

    .line 88
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/artemis/ComponentManager;->addComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;Lcom/artemis/Component;)V

    .line 89
    return-object v0

    .line 66
    :pswitch_1
    iget-object v4, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/PackedComponent;

    .line 67
    .local v3, "packedComponent":Lcom/artemis/PackedComponent;
    if-nez v3, :cond_0

    .line 68
    iget-boolean v4, p2, Lcom/artemis/ComponentType;->packedHasWorldConstructor:Z

    invoke-virtual {p0, v1, v4}, Lcom/artemis/ComponentManager;->newInstance(Ljava/lang/Class;Z)Lcom/artemis/Component;

    move-result-object v3

    .end local v3    # "packedComponent":Lcom/artemis/PackedComponent;
    check-cast v3, Lcom/artemis/PackedComponent;

    .line 70
    .restart local v3    # "packedComponent":Lcom/artemis/PackedComponent;
    iget-object v4, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {p0, p2}, Lcom/artemis/ComponentManager;->getPackedComponentOwners(Lcom/artemis/ComponentType;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 73
    invoke-direct {p0, p1}, Lcom/artemis/ComponentManager;->ensurePackedComponentCapacity(Lcom/artemis/Entity;)V

    .line 74
    invoke-virtual {v3, p1}, Lcom/artemis/PackedComponent;->forEntity(Lcom/artemis/Entity;)V

    .line 75
    move-object v0, v3

    .line 76
    goto :goto_0

    .line 79
    .end local v3    # "packedComponent":Lcom/artemis/PackedComponent;
    :pswitch_2
    :try_start_0
    iget-object v4, p0, Lcom/artemis/ComponentManager;->pooledComponents:Lcom/artemis/ComponentPool;

    invoke-virtual {v4, v1, p2}, Lcom/artemis/ComponentPool;->obtain(Ljava/lang/Class;Lcom/artemis/ComponentType;)Lcom/artemis/PooledComponent;
    :try_end_0
    .catch Lcom/artemis/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Lcom/artemis/utils/reflect/ReflectionException;
    new-instance v4, Lcom/artemis/InvalidComponentException;

    const-string v5, "Unable to instantiate component."

    invoke-direct {v4, v1, v5, v2}, Lcom/artemis/InvalidComponentException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected create(Lcom/artemis/Entity;Ljava/lang/Class;)Lcom/artemis/Component;
    .locals 3
    .param p1, "owner"    # Lcom/artemis/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Lcom/artemis/Entity;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    invoke-virtual {v2, p2}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v1

    .line 51
    .local v1, "type":Lcom/artemis/ComponentType;
    invoke-virtual {p0, p1, v1}, Lcom/artemis/ComponentManager;->create(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)Lcom/artemis/Component;

    move-result-object v0

    .line 52
    .local v0, "component":Lcom/artemis/Component;, "TT;"
    return-object v0
.end method

.method public deleted(Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/artemis/ComponentManager;->deleted:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method protected dispose()V
    .locals 4

    .prologue
    .line 161
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_2

    .line 162
    iget-object v3, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {v3, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/PackedComponent;

    .line 163
    .local v0, "component":Lcom/artemis/PackedComponent;
    if-nez v0, :cond_1

    .line 161
    .end local v0    # "component":Lcom/artemis/PackedComponent;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .restart local v0    # "component":Lcom/artemis/PackedComponent;
    :cond_1
    instance-of v3, v0, Lcom/artemis/PackedComponent$DisposedWithWorld;

    if-eqz v3, :cond_0

    .line 167
    check-cast v0, Lcom/artemis/PackedComponent$DisposedWithWorld;

    .end local v0    # "component":Lcom/artemis/PackedComponent;
    iget-object v3, p0, Lcom/artemis/ComponentManager;->world:Lcom/artemis/World;

    invoke-interface {v0, v3}, Lcom/artemis/PackedComponent$DisposedWithWorld;->free(Lcom/artemis/World;)V

    goto :goto_1

    .line 170
    :cond_2
    return-void
.end method

.method protected getComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)Lcom/artemis/Component;
    .locals 4
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "type"    # Lcom/artemis/ComponentType;

    .prologue
    .line 277
    invoke-virtual {p2}, Lcom/artemis/ComponentType;->isPackedComponent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/PackedComponent;

    .line 279
    .local v0, "component":Lcom/artemis/PackedComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/artemis/PackedComponent;->forEntity(Lcom/artemis/Entity;)V

    .line 287
    .end local v0    # "component":Lcom/artemis/PackedComponent;
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/utils/Bag;

    .line 283
    .local v1, "components":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->isIndexWithinBounds(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/Component;

    move-object v0, v2

    goto :goto_0

    .line 287
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getComponentsByType(Lcom/artemis/ComponentType;)Lcom/artemis/utils/Bag;
    .locals 4
    .param p1, "type"    # Lcom/artemis/ComponentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/ComponentType;",
            ")",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/artemis/ComponentType;->isPackedComponent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Lcom/artemis/InvalidComponentException;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "PackedComponent types aren\'t supported."

    invoke-direct {v1, v2, v3}, Lcom/artemis/InvalidComponentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 260
    .local v0, "components":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    if-nez v0, :cond_1

    .line 261
    new-instance v0, Lcom/artemis/utils/Bag;

    .end local v0    # "components":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    .line 262
    .restart local v0    # "components":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    iget-object v1, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 264
    :cond_1
    return-object v0
.end method

.method public getComponentsFor(Lcom/artemis/Entity;Lcom/artemis/utils/Bag;)Lcom/artemis/utils/Bag;
    .locals 4
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
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
    .line 300
    .local p2, "fillBag":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Component;>;"
    invoke-virtual {p1}, Lcom/artemis/Entity;->getComponentBits()Ljava/util/BitSet;

    move-result-object v0

    .line 301
    .local v0, "componentBits":Ljava/util/BitSet;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 302
    iget-object v2, p0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    invoke-virtual {v2, v1}, Lcom/artemis/ComponentTypeFactory;->isPackedComponent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 301
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 309
    :cond_1
    return-object p2
.end method

.method protected getPackedComponentOwners(Lcom/artemis/ComponentType;)Ljava/util/BitSet;
    .locals 3
    .param p1, "type"    # Lcom/artemis/ComponentType;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/artemis/ComponentManager;->packedComponentOwners:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 109
    .local v0, "owners":Ljava/util/BitSet;
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/BitSet;

    .end local v0    # "owners":Ljava/util/BitSet;
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 111
    .restart local v0    # "owners":Ljava/util/BitSet;
    iget-object v1, p0, Lcom/artemis/ComponentManager;->packedComponentOwners:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 113
    :cond_0
    return-object v0
.end method

.method newInstance(Ljava/lang/Class;Z)Lcom/artemis/Component;
    .locals 5
    .param p2, "constructorHasWorldParameter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_0

    .line 120
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/artemis/World;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lcom/artemis/utils/reflect/ClassReflection;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/artemis/utils/reflect/Constructor;

    move-result-object v0

    .line 121
    .local v0, "constructor":Lcom/artemis/utils/reflect/Constructor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/artemis/ComponentManager;->world:Lcom/artemis/World;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/artemis/utils/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/Component;

    .line 123
    .end local v0    # "constructor":Lcom/artemis/utils/reflect/Constructor;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1}, Lcom/artemis/utils/reflect/ClassReflection;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/Component;
    :try_end_0
    .catch Lcom/artemis/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Lcom/artemis/utils/reflect/ReflectionException;
    new-instance v2, Lcom/artemis/InvalidComponentException;

    const-string v3, "Unable to instantiate component."

    invoke-direct {v2, p1, v3, v1}, Lcom/artemis/InvalidComponentException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method protected removeComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)V
    .locals 7
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "type"    # Lcom/artemis/ComponentType;

    .prologue
    const/4 v5, 0x0

    .line 227
    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v0

    .line 228
    .local v0, "index":I
    sget-object v3, Lcom/artemis/ComponentManager$1;->$SwitchMap$com$artemis$ComponentType$Taxonomy:[I

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getTaxonomy()Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artemis/ComponentType$Taxonomy;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 244
    new-instance v3, Lcom/artemis/InvalidComponentException;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getType()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " unknown component type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getTaxonomy()Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/artemis/InvalidComponentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v3

    .line 230
    :pswitch_0
    iget-object v3, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {v3, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 246
    :goto_0
    return-void

    .line 233
    :pswitch_1
    iget-object v3, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {v3, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/Component;

    .line 234
    .local v2, "pooled":Lcom/artemis/Component;
    iget-object v3, p0, Lcom/artemis/ComponentManager;->pooledComponents:Lcom/artemis/ComponentPool;

    check-cast v2, Lcom/artemis/PooledComponent;

    .end local v2    # "pooled":Lcom/artemis/Component;
    invoke-virtual {v3, v2, p2}, Lcom/artemis/ComponentPool;->free(Lcom/artemis/PooledComponent;Lcom/artemis/ComponentType;)V

    .line 235
    iget-object v3, p0, Lcom/artemis/ComponentManager;->componentsByType:Lcom/artemis/utils/Bag;

    invoke-virtual {v3, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v3, p0, Lcom/artemis/ComponentManager;->packedComponents:Lcom/artemis/utils/Bag;

    invoke-virtual {v3, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/PackedComponent;

    .line 239
    .local v1, "pc":Lcom/artemis/PackedComponent;
    invoke-virtual {v1, p1}, Lcom/artemis/PackedComponent;->forEntity(Lcom/artemis/Entity;)V

    .line 240
    invoke-virtual {v1}, Lcom/artemis/PackedComponent;->reset()V

    .line 241
    invoke-virtual {p0, p2}, Lcom/artemis/ComponentManager;->getPackedComponentOwners(Lcom/artemis/ComponentType;)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
