.class public Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;
.super Lcom/badlogic/gdx/utils/ObjectMap$Values;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$Values",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private keys:Lcom/badlogic/gdx/utils/Array;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<*TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 217
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 218
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 227
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v3, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    .line 230
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->hasNext:Z

    .line 231
    return-object v0

    .line 230
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 235
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues<TV;>;"
    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->nextIndex:I

    .line 222
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->hasNext:Z

    .line 223
    return-void
.end method
