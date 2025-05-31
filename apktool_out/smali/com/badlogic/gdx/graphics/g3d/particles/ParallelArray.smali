.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.super Ljava/lang/Object;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    }
.end annotation


# instance fields
.field arrays:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">;"
        }
    .end annotation
.end field

.field public capacity:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    .line 163
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    .line 164
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 165
    return-void
.end method

.method private allocateChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 6
    .param p1, "channelDescriptor"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 190
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V

    .line 196
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 193
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;IIILjava/lang/Class;)V

    goto :goto_0
.end method

.method private findIndex(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    aget-object v0, v2, v1

    .line 208
    .local v0, "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->id:I

    if-ne v2, p1, :cond_0

    .line 211
    .end local v0    # "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 206
    .restart local v0    # "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 1
    .param p1, "channelDescriptor"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    return-object v0
.end method

.method public addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 2
    .param p1, "channelDescriptor"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, "initializer":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    .line 178
    .local v0, "channel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;, "TT;"
    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->allocateChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    .line 180
    if-eqz p2, :cond_0

    .line 181
    invoke-interface {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 184
    :cond_1
    return-object v0
.end method

.method public varargs addElement([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 218
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    if-ne v3, v4, :cond_0

    .line 219
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Capacity reached, cannot add other elements"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "k":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 223
    .local v2, "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {v2, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->add(I[Ljava/lang/Object;)V

    .line 224
    iget v3, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v3

    .line 225
    goto :goto_0

    .line 226
    .end local v2    # "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 227
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 253
    return-void
.end method

.method public getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 4
    .param p1, "descriptor"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 243
    .local v0, "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->id:I

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    if-ne v2, v3, :cond_0

    .line 246
    .end local v0    # "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeArray(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->findIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public removeElement(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 231
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/lit8 v1, v3, -0x1

    .line 233
    .local v1, "last":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 234
    .local v2, "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {v2, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->swap(II)V

    goto :goto_0

    .line 236
    .end local v2    # "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    :cond_0
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 237
    return-void
.end method

.method public setCapacity(I)V
    .locals 3
    .param p1, "requiredCapacity"    # I

    .prologue
    .line 258
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    if-eq v2, p1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 260
    .local v0, "channel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->setCapacity(I)V

    goto :goto_0

    .line 262
    .end local v0    # "channel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    .line 264
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
