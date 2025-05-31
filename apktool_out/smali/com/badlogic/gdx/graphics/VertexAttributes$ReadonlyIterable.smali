.class Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/VertexAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadonlyIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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

.field private iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

.field private iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->array:[Ljava/lang/Object;

    .line 205
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    .line 211
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    .line 222
    :goto_0
    return-object v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator1:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator2:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;

    goto :goto_0
.end method
