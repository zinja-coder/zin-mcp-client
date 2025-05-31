.class Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/VertexAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadonlyIterator"
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
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field index:I

.field valid:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 168
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    .line 169
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 173
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

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
    .line 195
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
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
    .line 179
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 186
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    .line 191
    return-void
.end method
