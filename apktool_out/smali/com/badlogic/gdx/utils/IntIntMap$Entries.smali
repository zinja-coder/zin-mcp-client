.class public Lcom/badlogic/gdx/utils/IntIntMap$Entries;
.super Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntIntMap;

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    .line 683
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 687
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    .locals 4

    .prologue
    .line 691
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 692
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 694
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 695
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 696
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    .line 701
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->currentIndex:I

    .line 702
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->findNextIndex()V

    .line 703
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    return-object v1

    .line 698
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    aget v2, v0, v2

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 699
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 716
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->remove()V

    .line 717
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 682
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method
