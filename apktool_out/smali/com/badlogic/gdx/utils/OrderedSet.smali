.class public Lcom/badlogic/gdx/utils/OrderedSet;
.super Lcom/badlogic/gdx/utils/ObjectSet;
.source "OrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

.field iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet;->capacity:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 41
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 34
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet;->capacity:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .locals 2
    .param p1, "set"    # Lcom/badlogic/gdx/utils/OrderedSet;

    .prologue
    .line 44
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet;->capacity:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 66
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    .line 67
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 61
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear(I)V

    .line 62
    return-void
.end method

.method public bridge synthetic iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->reset()V

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->reset()V

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public orderedItems()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 56
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 91
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    iget v5, p0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v5, :cond_0

    const-string v5, "{}"

    .line 101
    :goto_0
    return-object v5

    .line 92
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 93
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 94
    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    .line 95
    .local v3, "keys":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 96
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "key":Ljava/lang/Object;, "TT;"
    if-lez v1, :cond_1

    const-string v5, ", "

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 98
    :cond_1
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    .end local v2    # "key":Ljava/lang/Object;, "TT;"
    :cond_2
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 101
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
