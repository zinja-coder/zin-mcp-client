.class abstract Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectMap;
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

.field final map:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->valid:Z

    .line 634
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 635
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

    .line 636
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .prologue
    .line 645
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    .line 646
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 647
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v1, v2, v3

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 648
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 649
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    .line 653
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    const/4 v2, 0x0

    .line 656
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    if-lt v0, v1, :cond_1

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->removeStashIndex(I)V

    .line 659
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    .line 660
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->findNextIndex()V

    .line 665
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 667
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;, "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator<TK;TV;TI;>;"
    const/4 v0, -0x1

    .line 639
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 640
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    .line 641
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->findNextIndex()V

    .line 642
    return-void
.end method
