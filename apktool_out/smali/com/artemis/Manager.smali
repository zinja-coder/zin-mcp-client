.class public abstract Lcom/artemis/Manager;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lcom/artemis/EntityObserver;


# instance fields
.field protected world:Lcom/artemis/World;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public added(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 45
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
    .line 61
    .local p1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    move-object v3, p1

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 63
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Entity;

    invoke-virtual {p0, v3}, Lcom/artemis/Manager;->added(Lcom/artemis/Entity;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public changed(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 48
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
    .line 69
    .local p1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    move-object v3, p1

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 71
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Entity;

    invoke-virtual {p0, v3}, Lcom/artemis/Manager;->changed(Lcom/artemis/Entity;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public deleted(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 51
    return-void
.end method

.method public final deleted(Lcom/artemis/utils/ImmutableBag;)V
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
    .line 77
    .local p1, "entities":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    move-object v3, p1

    check-cast v3, Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 79
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Entity;

    invoke-virtual {p0, v3}, Lcom/artemis/Manager;->deleted(Lcom/artemis/Entity;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public disabled(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 54
    return-void
.end method

.method protected dispose()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public enabled(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 57
    return-void
.end method

.method protected getWorld()Lcom/artemis/World;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/artemis/Manager;->world:Lcom/artemis/World;

    return-object v0
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method protected setWorld(Lcom/artemis/World;)V
    .locals 0
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/artemis/Manager;->world:Lcom/artemis/World;

    .line 33
    return-void
.end method
