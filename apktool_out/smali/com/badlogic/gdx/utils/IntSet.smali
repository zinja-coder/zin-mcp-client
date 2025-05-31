.class public Lcom/badlogic/gdx/utils/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field hasZeroValue:Z

.field private hashShift:I

.field private iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field keyTable:[I

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 58
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 59
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .line 68
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    .line 71
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    .line 72
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 73
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    .line 74
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntSet;

    .prologue
    const/4 v3, 0x0

    .line 82
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 83
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 84
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 86
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 87
    return-void
.end method

.method private addResize(I)V
    .locals 8
    .param p1, "key"    # I

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v2, p1, v0

    .line 176
    .local v2, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v3, v0, v2

    .line 177
    .local v3, "key1":I
    if-nez v3, :cond_2

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v0, v2

    .line 179
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v4

    .line 184
    .local v4, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v5, v0, v4

    .line 185
    .local v5, "key2":I
    if-nez v5, :cond_3

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v0, v4

    .line 187
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v6

    .line 192
    .local v6, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v7, v0, v6

    .line 193
    .local v7, "key3":I
    if-nez v7, :cond_4

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v0, v6

    .line 195
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move v1, p1

    .line 199
    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/IntSet;->push(IIIIIII)V

    goto :goto_0
.end method

.method private addStash(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 261
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 263
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v0, v1, v2

    .line 269
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v1, v0

    .line 270
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 271
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    goto :goto_0
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 371
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 372
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 373
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    .line 374
    :goto_1
    return v3

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 418
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 419
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 423
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(IIIIIII)V
    .locals 7
    .param p1, "insertKey"    # I
    .param p2, "index1"    # I
    .param p3, "key1"    # I
    .param p4, "index2"    # I
    .param p5, "key2"    # I
    .param p6, "index3"    # I
    .param p7, "key3"    # I

    .prologue
    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 205
    .local v2, "keyTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 209
    .local v3, "mask":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 212
    .local v4, "pushIterations":I
    :goto_0
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 222
    move v0, p7

    .line 223
    .local v0, "evictedKey":I
    aput p1, v2, p6

    .line 228
    :goto_1
    and-int p2, v0, v3

    .line 229
    aget p3, v2, p2

    .line 230
    if-nez p3, :cond_1

    .line 231
    aput v0, v2, p2

    .line 232
    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v5, v6, :cond_0

    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 258
    :cond_0
    :goto_2
    return-void

    .line 214
    .end local v0    # "evictedKey":I
    :pswitch_0
    move v0, p3

    .line 215
    .restart local v0    # "evictedKey":I
    aput p1, v2, p2

    goto :goto_1

    .line 218
    .end local v0    # "evictedKey":I
    :pswitch_1
    move v0, p5

    .line 219
    .restart local v0    # "evictedKey":I
    aput p1, v2, p4

    goto :goto_1

    .line 236
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result p4

    .line 237
    aget p5, v2, p4

    .line 238
    if-nez p5, :cond_2

    .line 239
    aput v0, v2, p4

    .line 240
    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v5, v6, :cond_0

    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    goto :goto_2

    .line 244
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result p6

    .line 245
    aget p7, v2, p6

    .line 246
    if-nez p7, :cond_3

    .line 247
    aput v0, v2, p6

    .line 248
    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v5, v6, :cond_0

    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    goto :goto_2

    .line 252
    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_4

    .line 257
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->addStash(I)V

    goto :goto_2

    .line 254
    :cond_4
    move p1, v0

    .line 255
    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resize(I)V
    .locals 10
    .param p1, "newSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 393
    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v2, v5, v7

    .line 395
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .line 396
    int-to-float v5, p1

    iget v7, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    .line 397
    add-int/lit8 v5, p1, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    .line 399
    const/4 v5, 0x3

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    .line 400
    const/16 v5, 0x8

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    div-int/lit8 v7, v7, 0x8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 402
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 404
    .local v3, "oldKeyTable":[I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    add-int/2addr v5, p1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 406
    iget v4, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 407
    .local v4, "oldSize":I
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 408
    iput v6, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 409
    if-lez v4, :cond_2

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 411
    aget v1, v3, v0

    .line 412
    .local v1, "key":I
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    .line 410
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_1
    move v5, v6

    .line 407
    goto :goto_0

    .line 415
    :cond_2
    return-void
.end method

.method public static varargs with([I)Lcom/badlogic/gdx/utils/IntSet;
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 473
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 474
    .local v0, "set":Lcom/badlogic/gdx/utils/IntSet;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([I)V

    .line 475
    return-object v0
.end method


# virtual methods
.method public add(I)Z
    .locals 12
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 91
    if-nez p1, :cond_2

    .line 92
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iput-boolean v11, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 94
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    move v0, v11

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    iget-object v9, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 101
    .local v9, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v2, p1, v1

    .line 102
    .local v2, "index1":I
    aget v3, v9, v2

    .line 103
    .local v3, "key1":I
    if-eq v3, p1, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v4

    .line 106
    .local v4, "index2":I
    aget v5, v9, v4

    .line 107
    .local v5, "key2":I
    if-eq v5, p1, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v6

    .line 110
    .local v6, "index3":I
    aget v7, v9, v6

    .line 111
    .local v7, "key3":I
    if-eq v7, p1, :cond_0

    .line 114
    iget v8, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .local v8, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v10, v8, v1

    .local v10, "n":I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 115
    aget v1, v9, v8

    if-eq v1, p1, :cond_0

    .line 114
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 118
    :cond_3
    if-nez v3, :cond_5

    .line 119
    aput p1, v9, v2

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_4
    move v0, v11

    .line 121
    goto :goto_0

    .line 124
    :cond_5
    if-nez v5, :cond_7

    .line 125
    aput p1, v9, v4

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_6
    move v0, v11

    .line 127
    goto :goto_0

    .line 130
    :cond_7
    if-nez v7, :cond_9

    .line 131
    aput p1, v9, v6

    .line 132
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_8
    move v0, v11

    .line 133
    goto :goto_0

    :cond_9
    move-object v0, p0

    move v1, p1

    .line 136
    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/IntSet;->push(IIIIIII)V

    move v0, v11

    .line 137
    goto :goto_0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;

    .prologue
    .line 141
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->addAll(Lcom/badlogic/gdx/utils/IntArray;II)V

    .line 142
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 145
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-le v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 148
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 2
    .param p1, "set"    # Lcom/badlogic/gdx/utils/IntSet;

    .prologue
    .line 161
    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 162
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v0

    .line 163
    .local v0, "iterator":Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    :goto_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public varargs addAll([I)V
    .locals 2
    .param p1, "array"    # [I

    .prologue
    .line 151
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 152
    return-void
.end method

.method public addAll([III)V
    .locals 3
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 156
    move v0, p2

    .local v0, "i":I
    add-int v1, v0, p3

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 157
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 348
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v3, :cond_0

    .line 355
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 350
    .local v2, "keyTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v0, v3, v4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_1

    .line 351
    aput v5, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 352
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 353
    iput v5, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 354
    iput-boolean v5, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    goto :goto_0
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 338
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    if-gt v0, p1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 343
    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 344
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    goto :goto_0
.end method

.method public contains(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 358
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 367
    :goto_0
    return v1

    .line 359
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v0, p1, v1

    .line 360
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 361
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->containsKeyStash(I)Z

    move-result v1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 388
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int v0, v1, p1

    .line 389
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public first()I
    .locals 5

    .prologue
    .line 378
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 381
    :goto_0
    return v3

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 380
    .local v1, "keyTable":[I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v2, v3, v4

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 381
    aget v3, v1, v0

    if-eqz v3, :cond_1

    aget v3, v1, v0

    goto :goto_0

    .line 380
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "IntSet is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 458
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 469
    :goto_0
    return-object v0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    goto :goto_0
.end method

.method public remove(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 276
    if-nez p1, :cond_1

    .line 277
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-nez v3, :cond_0

    .line 304
    :goto_0
    return v1

    .line 278
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 279
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    move v1, v2

    .line 280
    goto :goto_0

    .line 283
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v0, p1, v3

    .line 284
    .local v0, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 285
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput v1, v3, v0

    .line 286
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    move v1, v2

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v0

    .line 291
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_3

    .line 292
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput v1, v3, v0

    .line 293
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    move v1, v2

    .line 294
    goto :goto_0

    .line 297
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v0

    .line 298
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_4

    .line 299
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput v1, v3, v0

    .line 300
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    move v1, v2

    .line 301
    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->removeStash(I)Z

    move-result v1

    goto :goto_0
.end method

.method removeStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 308
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 309
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 310
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->removeStashIndex(I)V

    .line 312
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 313
    const/4 v3, 0x1

    .line 316
    :goto_1
    return v3

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 321
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 322
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int v0, v1, v2

    .line 323
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 324
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 329
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 331
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    if-gt v0, p1, :cond_2

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 333
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 428
    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v5, :cond_0

    const-string v5, "[]"

    .line 450
    :goto_0
    return-object v5

    .line 429
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 430
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 431
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 432
    .local v4, "keyTable":[I
    array-length v1, v4

    .line 433
    .local v1, "i":I
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v5, :cond_5

    .line 434
    const-string v5, "0"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 443
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 444
    aget v3, v4, v1

    .line 445
    .local v3, "key":I
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 436
    .end local v3    # "key":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 437
    aget v3, v4, v1

    .line 438
    .restart local v3    # "key":I
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 439
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 440
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 446
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v5, ", "

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 447
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 448
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 449
    .end local v2    # "i":I
    .end local v3    # "key":I
    .restart local v1    # "i":I
    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 450
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method
