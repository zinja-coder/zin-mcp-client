.class public Lcom/badlogic/gdx/utils/IdentityMap$Keys;
.super Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;
.source "IdentityMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IdentityMap;
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
        "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator",
        "<TK;",
        "Ljava/lang/Object;",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IdentityMap",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Keys;, "Lcom/badlogic/gdx/utils/IdentityMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    .line 714
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 717
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Keys;, "Lcom/badlogic/gdx/utils/IdentityMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Keys;, "Lcom/badlogic/gdx/utils/IdentityMap$Keys<TK;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Keys;, "Lcom/badlogic/gdx/utils/IdentityMap$Keys<TK;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 723
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->nextIndex:I

    aget-object v0, v1, v2

    .line 725
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->currentIndex:I

    .line 726
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->findNextIndex()V

    .line 727
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 711
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Keys;, "Lcom/badlogic/gdx/utils/IdentityMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 711
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Keys;, "Lcom/badlogic/gdx/utils/IdentityMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->reset()V

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
    .line 736
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Keys;, "Lcom/badlogic/gdx/utils/IdentityMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 737
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 739
    :cond_0
    return-object v0
.end method
