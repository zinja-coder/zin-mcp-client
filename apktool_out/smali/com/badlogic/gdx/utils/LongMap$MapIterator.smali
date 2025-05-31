.class Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
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

.field final map:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap",
            "<TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->valid:Z

    .line 654
    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    .line 655
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    .line 656
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 6

    .prologue
    .line 668
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 669
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 670
    .local v0, "keyTable":[J
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v1, v2, v3

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 671
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 672
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 676
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    const/4 v4, 0x0

    .line 679
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iput-object v4, v0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 692
    :goto_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 694
    return-void

    .line 682
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_1

    .line 683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    if-lt v0, v1, :cond_2

    .line 685
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->removeStashIndex(I)V

    .line 686
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    .line 687
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->findNextIndex()V

    goto :goto_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    aput-object v4, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 659
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$MapIterator;, "Lcom/badlogic/gdx/utils/LongMap$MapIterator<TV;>;"
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 660
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 665
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->findNextIndex()V

    goto :goto_0
.end method
