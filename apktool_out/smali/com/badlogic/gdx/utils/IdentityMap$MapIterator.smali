.class abstract Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;
.super Ljava/lang/Object;
.source "IdentityMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IdentityMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TI;>;",
        "Ljava/util/Iterator",
        "<TI;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/IdentityMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IdentityMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IdentityMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;, "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator<TK;TV;TI;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->valid:Z

    .line 608
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    .line 609
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->reset()V

    .line 610
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .prologue
    .line 619
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;, "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator<TK;TV;TI;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->hasNext:Z

    .line 620
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 621
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v1, v2, v3

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 622
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 623
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->hasNext:Z

    .line 627
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;, "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator<TK;TV;TI;>;"
    const/4 v2, 0x0

    .line 630
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    if-lt v0, v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStashIndex(I)V

    .line 633
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->nextIndex:I

    .line 634
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->findNextIndex()V

    .line 639
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 641
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;, "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator<TK;TV;TI;>;"
    const/4 v0, -0x1

    .line 613
    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->currentIndex:I

    .line 614
    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->nextIndex:I

    .line 615
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->findNextIndex()V

    .line 616
    return-void
.end method
