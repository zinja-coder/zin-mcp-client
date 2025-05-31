.class public Lcom/badlogic/gdx/utils/ArrayMap$Values;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field index:I

.field private final map:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "TV;>;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<Ljava/lang/Object;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 525
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 526
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 529
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 544
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 545
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 546
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 549
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 550
    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v4, v4, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap$Values;, "Lcom/badlogic/gdx/utils/ArrayMap$Values<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 558
    return-object p1
.end method
