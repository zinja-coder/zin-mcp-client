.class Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap",
            "<TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->valid:Z

    .line 662
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    .line 663
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    .line 664
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .prologue
    .line 676
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    .line 677
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 678
    .local v0, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v1, v2, v3

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 679
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 680
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    .line 684
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 687
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iput-object v3, v0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 700
    :goto_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    .line 701
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 702
    return-void

    .line 690
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_1

    .line 691
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    if-lt v0, v1, :cond_2

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->removeStashIndex(I)V

    .line 694
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    .line 695
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->findNextIndex()V

    goto :goto_0

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    aput v2, v0, v1

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    aput-object v3, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 667
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$MapIterator;, "Lcom/badlogic/gdx/utils/IntMap$MapIterator<TV;>;"
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->currentIndex:I

    .line 668
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->nextIndex:I

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->findNextIndex()V

    goto :goto_0
.end method
