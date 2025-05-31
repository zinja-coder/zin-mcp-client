.class public Lcom/artemis/Aspect;
.super Ljava/lang/Object;
.source "Aspect.java"


# instance fields
.field private allSet:Ljava/util/BitSet;

.field private final allTypes:Lcom/artemis/utils/Bag;
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

.field private exclusionSet:Ljava/util/BitSet;

.field private final exclusionTypes:Lcom/artemis/utils/Bag;
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

.field private isInitialized:Z

.field private oneSet:Ljava/util/BitSet;

.field private final oneTypes:Lcom/artemis/utils/Bag;
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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/Aspect;->allTypes:Lcom/artemis/utils/Bag;

    .line 57
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/Aspect;->exclusionTypes:Lcom/artemis/utils/Bag;

    .line 58
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/Aspect;->oneTypes:Lcom/artemis/utils/Bag;

    .line 59
    return-void
.end method

.method private static associate(Lcom/artemis/ComponentTypeFactory;Lcom/artemis/utils/Bag;Ljava/util/BitSet;)V
    .locals 3
    .param p0, "tf"    # Lcom/artemis/ComponentTypeFactory;
    .param p2, "componentBits"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/ComponentTypeFactory;",
            "Lcom/artemis/utils/Bag",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;>;",
            "Ljava/util/BitSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "types":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/Class<+Lcom/artemis/Component;>;>;"
    invoke-virtual {p1}, Lcom/artemis/utils/Bag;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 83
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    invoke-virtual {p0, v1}, Lcom/artemis/ComponentTypeFactory;->getIndexFor(Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 85
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_0
    return-void
.end method

.method public static varargs getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    new-instance v0, Lcom/artemis/Aspect;

    invoke-direct {v0}, Lcom/artemis/Aspect;-><init>()V

    .line 298
    .local v0, "aspect":Lcom/artemis/Aspect;
    invoke-virtual {v0, p0}, Lcom/artemis/Aspect;->all([Ljava/lang/Class;)Lcom/artemis/Aspect;

    .line 299
    return-object v0
.end method

.method public static varargs getAspectForOne([Ljava/lang/Class;)Lcom/artemis/Aspect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    new-instance v0, Lcom/artemis/Aspect;

    invoke-direct {v0}, Lcom/artemis/Aspect;-><init>()V

    .line 313
    .local v0, "aspect":Lcom/artemis/Aspect;
    invoke-virtual {v0, p0}, Lcom/artemis/Aspect;->one([Ljava/lang/Class;)Lcom/artemis/Aspect;

    .line 314
    return-object v0
.end method

.method public static getEmpty()Lcom/artemis/Aspect;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/artemis/Aspect;

    invoke-direct {v0}, Lcom/artemis/Aspect;-><init>()V

    return-object v0
.end method

.method private requireInitialized(Z)V
    .locals 3
    .param p1, "actualState"    # Z

    .prologue
    .line 278
    iget-boolean v1, p0, Lcom/artemis/Aspect;->isInitialized:Z

    if-ne v1, p1, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong Aspect state, cannot call method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "before"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " calling Aspect#initialize(World)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Lcom/artemis/MundaneWireException;

    invoke-direct {v1, v0}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    const-string v1, "after"

    goto :goto_0
.end method


# virtual methods
.method public all(Ljava/util/Collection;)Lcom/artemis/Aspect;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;>;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lcom/artemis/Component;>;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 196
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v2, p0, Lcom/artemis/Aspect;->allTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_0
    return-object p0
.end method

.method public varargs all([Ljava/lang/Class;)Lcom/artemis/Aspect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 176
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 177
    .local v3, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v4, p0, Lcom/artemis/Aspect;->allTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v3}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v3    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_0
    return-object p0
.end method

.method public exclude(Ljava/util/Collection;)Lcom/artemis/Aspect;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;>;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lcom/artemis/Component;>;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 237
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 238
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v2, p0, Lcom/artemis/Aspect;->exclusionTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_0
    return-object p0
.end method

.method public varargs exclude([Ljava/lang/Class;)Lcom/artemis/Aspect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 216
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 217
    .local v3, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v4, p0, Lcom/artemis/Aspect;->exclusionTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v3}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_0
    return-object p0
.end method

.method public getAllSet()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 96
    iget-object v0, p0, Lcom/artemis/Aspect;->allSet:Ljava/util/BitSet;

    return-object v0
.end method

.method public getExclusionSet()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 107
    iget-object v0, p0, Lcom/artemis/Aspect;->exclusionSet:Ljava/util/BitSet;

    return-object v0
.end method

.method public getOneSet()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 119
    iget-object v0, p0, Lcom/artemis/Aspect;->oneSet:Ljava/util/BitSet;

    return-object v0
.end method

.method public initialize(Lcom/artemis/World;)V
    .locals 3
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/artemis/Aspect;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/artemis/Aspect;->allSet:Ljava/util/BitSet;

    .line 66
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/artemis/Aspect;->exclusionSet:Ljava/util/BitSet;

    .line 67
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/artemis/Aspect;->oneSet:Ljava/util/BitSet;

    .line 69
    invoke-virtual {p1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    iget-object v0, v1, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 70
    .local v0, "tf":Lcom/artemis/ComponentTypeFactory;
    iget-object v1, p0, Lcom/artemis/Aspect;->allTypes:Lcom/artemis/utils/Bag;

    iget-object v2, p0, Lcom/artemis/Aspect;->allSet:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/artemis/Aspect;->associate(Lcom/artemis/ComponentTypeFactory;Lcom/artemis/utils/Bag;Ljava/util/BitSet;)V

    .line 71
    iget-object v1, p0, Lcom/artemis/Aspect;->exclusionTypes:Lcom/artemis/utils/Bag;

    iget-object v2, p0, Lcom/artemis/Aspect;->exclusionSet:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/artemis/Aspect;->associate(Lcom/artemis/ComponentTypeFactory;Lcom/artemis/utils/Bag;Ljava/util/BitSet;)V

    .line 72
    iget-object v1, p0, Lcom/artemis/Aspect;->oneTypes:Lcom/artemis/utils/Bag;

    iget-object v2, p0, Lcom/artemis/Aspect;->oneSet:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/artemis/Aspect;->associate(Lcom/artemis/ComponentTypeFactory;Lcom/artemis/utils/Bag;Ljava/util/BitSet;)V

    .line 74
    iget-object v1, p0, Lcom/artemis/Aspect;->allTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->clear()V

    .line 75
    iget-object v1, p0, Lcom/artemis/Aspect;->exclusionTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->clear()V

    .line 76
    iget-object v1, p0, Lcom/artemis/Aspect;->oneTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->clear()V

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/artemis/Aspect;->isInitialized:Z

    goto :goto_0
.end method

.method public isInterested(Lcom/artemis/Entity;)Z
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/artemis/Entity;->getComponentBits()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artemis/Aspect;->isInterested(Ljava/util/BitSet;)Z

    move-result v0

    return v0
.end method

.method public isInterested(Ljava/util/BitSet;)Z
    .locals 6
    .param p1, "componentBits"    # Ljava/util/BitSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-direct {p0, v2}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 137
    const/4 v1, 0x1

    .line 140
    .local v1, "interested":Z
    iget-object v4, p0, Lcom/artemis/Aspect;->allSet:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/artemis/Aspect;->allSet:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    const/4 v1, 0x0

    .line 151
    .end local v0    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/artemis/Aspect;->exclusionSet:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 152
    iget-object v4, p0, Lcom/artemis/Aspect;->exclusionSet:Ljava/util/BitSet;

    invoke-virtual {v4, p1}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 157
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/artemis/Aspect;->oneSet:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/artemis/Aspect;->oneSet:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v1

    .line 161
    :cond_2
    return v1

    .line 141
    .restart local v0    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/artemis/Aspect;->allSet:Ljava/util/BitSet;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .end local v0    # "i":I
    :cond_4
    move v1, v3

    .line 152
    goto :goto_1
.end method

.method public one(Ljava/util/Collection;)Lcom/artemis/Aspect;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;>;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lcom/artemis/Component;>;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 271
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 272
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v2, p0, Lcom/artemis/Aspect;->oneTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_0
    return-object p0
.end method

.method public varargs one([Ljava/lang/Class;)Lcom/artemis/Aspect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/Aspect;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/artemis/Aspect;->requireInitialized(Z)V

    .line 254
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 255
    .local v3, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v4, p0, Lcom/artemis/Aspect;->oneTypes:Lcom/artemis/utils/Bag;

    invoke-virtual {v4, v3}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v3    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    :cond_0
    return-object p0
.end method
