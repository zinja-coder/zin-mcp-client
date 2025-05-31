.class public Lcom/artemis/utils/IntBag;
.super Ljava/lang/Object;
.source "IntBag.java"


# instance fields
.field private data:[I

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/artemis/utils/IntBag;-><init>(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/utils/IntBag;->size:I

    .line 37
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    .line 38
    return-void
.end method

.method private grow()V
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0x1

    .line 174
    .local v0, "newCapacity":I
    invoke-direct {p0, v0}, Lcom/artemis/utils/IntBag;->grow(I)V

    .line 175
    return-void
.end method

.method private grow(I)V
    .locals 4
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    .line 187
    .local v0, "oldData":[I
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    .line 188
    iget-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "e"    # I

    .prologue
    .line 143
    iget v0, p0, Lcom/artemis/utils/IntBag;->size:I

    iget-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/artemis/utils/IntBag;->grow()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    iget v1, p0, Lcom/artemis/utils/IntBag;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/artemis/utils/IntBag;->size:I

    aput p1, v0, v1

    .line 148
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    iget v1, p0, Lcom/artemis/utils/IntBag;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    iput v2, p0, Lcom/artemis/utils/IntBag;->size:I

    .line 215
    return-void
.end method

.method public contains(I)Z
    .locals 2
    .param p1, "e"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/artemis/utils/IntBag;->size:I

    if-le v1, v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 76
    :goto_1
    return v1

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/artemis/utils/IntBag;->grow(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    array-length v0, v0

    return v0
.end method

.method public getData()[I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/artemis/utils/IntBag;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndexWithinBounds(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/artemis/utils/IntBag;->getCapacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)I
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    aget v0, v1, p1

    .line 57
    .local v0, "e":I
    iget-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    iget-object v2, p0, Lcom/artemis/utils/IntBag;->data:[I

    iget v3, p0, Lcom/artemis/utils/IntBag;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/artemis/utils/IntBag;->size:I

    aget v2, v2, v3

    aput v2, v1, p1

    .line 58
    iget-object v1, p0, Lcom/artemis/utils/IntBag;->data:[I

    iget v2, p0, Lcom/artemis/utils/IntBag;->size:I

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 59
    return v0
.end method

.method public set(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "e"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 160
    mul-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/artemis/utils/IntBag;->grow(I)V

    .line 162
    :cond_0
    iget v0, p0, Lcom/artemis/utils/IntBag;->size:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/artemis/utils/IntBag;->size:I

    .line 163
    iget-object v0, p0, Lcom/artemis/utils/IntBag;->data:[I

    aput p2, v0, p1

    .line 164
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/artemis/utils/IntBag;->size:I

    .line 243
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/artemis/utils/IntBag;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Bag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/artemis/utils/IntBag;->size:I

    if-le v2, v0, :cond_1

    .line 250
    if-lez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/artemis/utils/IntBag;->data:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
