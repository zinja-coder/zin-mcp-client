.class public Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;
.super Lcom/badlogic/gdx/utils/ObjectMap$Keys;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedMapKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$Keys",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private keys:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedMap",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 189
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 190
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 199
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 202
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    .line 203
    return-object v0

    .line 202
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 207
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    .line 195
    return-void
.end method
