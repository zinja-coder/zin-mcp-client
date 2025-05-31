.class public Lcom/badlogic/gdx/utils/Array$ArrayIterator;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final allowRemove:Z

.field private final array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field index:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    .line 513
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 1
    .param p2, "allowRemove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 516
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    .line 517
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->allowRemove:Z

    .line 518
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 521
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    if-nez v0, :cond_1

    .line 532
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->allowRemove:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 544
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterator;, "Lcom/badlogic/gdx/utils/Array$ArrayIterator<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 545
    return-void
.end method
