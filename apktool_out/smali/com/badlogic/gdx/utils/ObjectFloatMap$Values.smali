.class public Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;
.super Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;
.source "ObjectFloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    .line 665
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->hasNext:Z

    return v0
.end method

.method public next()F
    .locals 3

    .prologue
    .line 673
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 674
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->nextIndex:I

    aget v0, v1, v2

    .line 676
    .local v0, "value":F
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->currentIndex:I

    .line 677
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->findNextIndex()V

    .line 678
    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 662
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 662
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/FloatArray;
    .locals 3

    .prologue
    .line 683
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    .line 684
    .local v0, "array":Lcom/badlogic/gdx/utils/FloatArray;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->next()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_0

    .line 686
    :cond_0
    return-object v0
.end method
