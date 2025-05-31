.class Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<TK;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->valid:Z

    .line 594
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 595
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    .line 596
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .prologue
    .line 605
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<TK;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->hasNext:Z

    .line 606
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 607
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int v1, v2, v3

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 608
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 609
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->hasNext:Z

    .line 613
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 616
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    if-lt v0, v1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->removeStashIndex(I)V

    .line 619
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    .line 620
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->findNextIndex()V

    .line 624
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    .line 625
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 626
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<TK;>;"
    const/4 v0, -0x1

    .line 599
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    .line 600
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    .line 601
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->findNextIndex()V

    .line 602
    return-void
.end method
