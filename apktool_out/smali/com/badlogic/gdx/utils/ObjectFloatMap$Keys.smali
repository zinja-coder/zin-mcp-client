.class public Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;
.source "ObjectFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectFloatMap;
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
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator",
        "<TK;>;",
        "Ljava/lang/Iterable",
        "<TK;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    .line 693
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 696
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 690
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

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
    .line 701
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 702
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->nextIndex:I

    aget-object v0, v1, v2

    .line 704
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->currentIndex:I

    .line 705
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->findNextIndex()V

    .line 706
    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 729
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->remove()V

    .line 730
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 690
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

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
    .line 715
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 716
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 718
    :cond_0
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
    .line 723
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 725
    :cond_0
    return-object p1
.end method
