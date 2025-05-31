.class public Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.super Ljava/lang/Object;
.source "ObjectSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TK;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field nextIndex:I

.field final set:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 464
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 465
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 466
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .prologue
    .line 475
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    .line 476
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 477
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v1, v2, v3

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 478
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 479
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    .line 483
    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 499
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 456
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

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
    .line 504
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 505
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    aget-object v0, v1, v2

    .line 507
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 508
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->findNextIndex()V

    .line 509
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 486
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    if-lt v0, v1, :cond_1

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->removeStashIndex(I)V

    .line 489
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    .line 490
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->findNextIndex()V

    .line 494
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 495
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 496
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    const/4 v0, -0x1

    .line 469
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 470
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    .line 471
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->findNextIndex()V

    .line 472
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
    .line 525
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

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
    .line 518
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;, "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 520
    :cond_0
    return-object p1
.end method
