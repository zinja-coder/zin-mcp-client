.class public Lcom/badlogic/gdx/utils/ObjectMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
.source "ObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator",
        "<TK;",
        "Ljava/lang/Object;",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 738
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 741
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 735
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 747
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->nextIndex:I

    aget-object v0, v1, v2

    .line 749
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->currentIndex:I

    .line 750
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->findNextIndex()V

    .line 751
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 735
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 735
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 767
    :cond_0
    return-object p1
.end method
