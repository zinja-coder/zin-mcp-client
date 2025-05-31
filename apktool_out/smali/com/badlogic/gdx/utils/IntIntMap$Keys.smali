.class public Lcom/badlogic/gdx/utils/IntIntMap$Keys;
.super Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntIntMap;

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    .line 755
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->hasNext:Z

    return v0
.end method

.method public next()I
    .locals 3

    .prologue
    .line 763
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 764
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    .line 766
    .local v0, "key":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->currentIndex:I

    .line 767
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->findNextIndex()V

    .line 768
    return v0

    .line 765
    .end local v0    # "key":I
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->nextIndex:I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 752
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 752
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    .prologue
    .line 773
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 774
    .local v0, "array":Lcom/badlogic/gdx/utils/IntArray;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    .line 776
    :cond_0
    return-object v0
.end method
