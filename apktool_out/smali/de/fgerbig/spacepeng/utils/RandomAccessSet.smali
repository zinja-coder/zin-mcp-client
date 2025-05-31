.class public Lde/fgerbig/spacepeng/utils/RandomAccessSet;
.super Ljava/lang/Object;
.source "RandomAccessSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Lde/fgerbig/spacepeng/utils/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TT;>;",
        "Lde/fgerbig/spacepeng/utils/RandomAccess",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final NOT_PRESENT:I

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field positions:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->NOT_PRESENT:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    const/4 v2, -0x1

    .line 84
    iget-object v1, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    .line 85
    .local v0, "position":I
    if-ne v0, v2, :cond_0

    .line 86
    iget-object v1, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v2, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 88
    const/4 v1, 0x1

    .line 90
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 120
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 121
    goto :goto_0

    .line 122
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    .line 143
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    iget-object v1, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    .local v0, "arrayListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v1, Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;

    invoke-direct {v1, p0, v0}, Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;-><init>(Lde/fgerbig/spacepeng/utils/RandomAccessSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    const/4 v4, -0x1

    .line 96
    iget-object v3, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v3, p1, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->remove(Ljava/lang/Object;I)I

    move-result v2

    .line 97
    .local v2, "position":I
    if-ne v2, v4, :cond_0

    .line 98
    const/4 v3, 0x0

    .line 107
    :goto_0
    return v3

    .line 100
    :cond_0
    iget-object v3, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 101
    .local v1, "lastPosition":I
    iget-object v3, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "lastItem":Ljava/lang/Object;, "TT;"
    if-eq v2, v1, :cond_1

    .line 103
    iget-object v3, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v3, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->remove(Ljava/lang/Object;I)I

    .line 105
    iget-object v3, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->positions:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 107
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 133
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 134
    .local v2, "t":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 135
    goto :goto_0

    .line 136
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "retainAll is not supported in this Set implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
