.class public Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntSetIterator"
.end annotation


# static fields
.field static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field nextIndex:I

.field final set:Lcom/badlogic/gdx/utils/IntSet;

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 1
    .param p1, "set"    # Lcom/badlogic/gdx/utils/IntSet;

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 489
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    .line 490
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 491
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .prologue
    .line 503
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    .line 504
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 505
    .local v0, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v1, v2, v3

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 506
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 507
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    .line 511
    :cond_1
    return-void
.end method

.method public next()I
    .locals 3

    .prologue
    .line 530
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 531
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    .line 533
    .local v0, "key":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 534
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    .line 535
    return v0

    .line 532
    .end local v0    # "key":I
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 525
    :goto_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 527
    return-void

    .line 516
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    if-gez v0, :cond_1

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    if-lt v0, v1, :cond_2

    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->removeStashIndex(I)V

    .line 520
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    .line 521
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    aput v2, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 495
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    goto :goto_0
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    .prologue
    .line 540
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 541
    .local v0, "array":Lcom/badlogic/gdx/utils/IntArray;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    .line 543
    :cond_0
    return-object v0
.end method
