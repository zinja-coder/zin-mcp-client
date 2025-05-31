.class public Lcom/badlogic/gdx/utils/IntMap$Values;
.super Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/IntMap$MapIterator",
        "<TV;>;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    .line 746
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 749
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 755
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 758
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 761
    .local v0, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->currentIndex:I

    .line 762
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Values;->findNextIndex()V

    .line 763
    return-object v0

    .line 760
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->nextIndex:I

    aget-object v0, v1, v2

    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 779
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->remove()V

    .line 780
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 743
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 773
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Values;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 775
    :cond_0
    return-object v0
.end method
