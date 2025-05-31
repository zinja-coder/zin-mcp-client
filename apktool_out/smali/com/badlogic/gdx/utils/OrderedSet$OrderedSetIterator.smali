.class public Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
.super Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.source "OrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TT;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/OrderedSet;, "Lcom/badlogic/gdx/utils/OrderedSet<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    .line 110
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TT;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "key":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 122
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    .line 123
    return-object v0

    .line 122
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 127
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;, "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<TT;>;"
    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    .line 115
    return-void
.end method
