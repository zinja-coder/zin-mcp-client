.class public Lcom/badlogic/gdx/utils/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntIntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntIntMap$Values;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[I

.field private values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field zeroValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 62
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 63
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
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

    .line 69
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

    .line 70
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .line 72
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

    .line 73
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    .line 78
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->pushIterations:I

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntIntMap;

    .prologue
    const/4 v3, 0x0

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 92
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 93
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 94
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 468
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 469
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 470
    aget v3, v1, v0

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    .line 471
    :goto_1
    return v3

    .line 469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getAndIncrementStash(III)I
    .locals 6
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I
    .param p3, "increment"    # I

    .prologue
    .line 344
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 345
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 346
    aget v4, v1, v0

    if-ne p1, v4, :cond_0

    .line 347
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v3, v4, v0

    .line 348
    .local v3, "value":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    add-int v5, v3, p3

    aput v5, v4, v0

    .line 352
    .end local v3    # "value":I
    :goto_1
    return v3

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    add-int v4, p2, p3

    invoke-virtual {p0, p1, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    move v3, p2

    .line 352
    goto :goto_1
.end method

.method private getStash(II)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 310
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 311
    aget v3, v1, v0

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget p2, v3, v0

    .line 312
    .end local p2    # "defaultValue":I
    :cond_0
    return p2

    .line 310
    .restart local p2    # "defaultValue":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 519
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 520
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 524
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 525
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(IIIIIIII)V
    .locals 9
    .param p1, "insertKey"    # I
    .param p2, "insertValue"    # I
    .param p3, "index1"    # I
    .param p4, "key1"    # I
    .param p5, "index2"    # I
    .param p6, "key2"    # I
    .param p7, "index3"    # I
    .param p8, "key3"    # I

    .prologue
    .line 208
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 209
    .local v3, "keyTable":[I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 210
    .local v6, "valueTable":[I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 215
    .local v4, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->pushIterations:I

    .line 218
    .local v5, "pushIterations":I
    :goto_0
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 232
    move/from16 v0, p8

    .line 233
    .local v0, "evictedKey":I
    aget v1, v6, p7

    .line 234
    .local v1, "evictedValue":I
    aput p1, v3, p7

    .line 235
    aput p2, v6, p7

    .line 240
    :goto_1
    and-int p3, v0, v4

    .line 241
    aget p4, v3, p3

    .line 242
    if-nez p4, :cond_1

    .line 243
    aput v0, v3, p3

    .line 244
    aput v1, v6, p3

    .line 245
    iget v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 274
    :cond_0
    :goto_2
    return-void

    .line 220
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":I
    :pswitch_0
    move v0, p4

    .line 221
    .restart local v0    # "evictedKey":I
    aget v1, v6, p3

    .line 222
    .restart local v1    # "evictedValue":I
    aput p1, v3, p3

    .line 223
    aput p2, v6, p3

    goto :goto_1

    .line 226
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":I
    :pswitch_1
    move v0, p6

    .line 227
    .restart local v0    # "evictedKey":I
    aget v1, v6, p5

    .line 228
    .restart local v1    # "evictedValue":I
    aput p1, v3, p5

    .line 229
    aput p2, v6, p5

    goto :goto_1

    .line 249
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result p5

    .line 250
    aget p6, v3, p5

    .line 251
    if-nez p6, :cond_2

    .line 252
    aput v0, v3, p5

    .line 253
    aput v1, v6, p5

    .line 254
    iget v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_2

    .line 258
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result p7

    .line 259
    aget p8, v3, p7

    .line 260
    if-nez p8, :cond_3

    .line 261
    aput v0, v3, p7

    .line 262
    aput v1, v6, p7

    .line 263
    iget v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_2

    .line 267
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    .line 273
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->putStash(II)V

    goto :goto_2

    .line 269
    :cond_4
    move p1, v0

    .line 270
    move p2, v1

    .line 271
    goto/16 :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(II)V
    .locals 9
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 171
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v3, p1, v0

    .line 178
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v4, v0, v3

    .line 179
    .local v4, "key1":I
    if-nez v4, :cond_2

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v0, v3

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v3

    .line 182
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v5

    .line 187
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v6, v0, v5

    .line 188
    .local v6, "key2":I
    if-nez v6, :cond_3

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v0, v5

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v5

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v7

    .line 196
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v8, v0, v7

    .line 197
    .local v8, "key3":I
    if-nez v8, :cond_4

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v0, v7

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v7

    .line 200
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 204
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntIntMap;->push(IIIIIIII)V

    goto :goto_0
.end method

.method private putStash(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 277
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 279
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 289
    :goto_0
    return-void

    .line 284
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v0, v1, v2

    .line 285
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v1, v0

    .line 286
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v1, v0

    .line 287
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 288
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 10
    .param p1, "newSize"    # I

    .prologue
    const/4 v7, 0x0

    .line 492
    iget v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v2, v6, v8

    .line 494
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .line 495
    int-to-float v6, p1

    iget v8, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    .line 496
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    .line 498
    const/4 v6, 0x3

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    .line 499
    const/16 v6, 0x8

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    div-int/lit8 v8, v8, 0x8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->pushIterations:I

    .line 501
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 502
    .local v3, "oldKeyTable":[I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 504
    .local v5, "oldValueTable":[I
    iget v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 505
    iget v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 507
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 508
    .local v4, "oldSize":I
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 509
    iput v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 510
    if-lez v4, :cond_2

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 512
    aget v1, v3, v0

    .line 513
    .local v1, "key":I
    if-eqz v1, :cond_0

    aget v6, v5, v0

    invoke-direct {p0, v1, v6}, Lcom/badlogic/gdx/utils/IntIntMap;->putResize(II)V

    .line 511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_1
    move v6, v7

    .line 508
    goto :goto_0

    .line 516
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 435
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v3, :cond_0

    .line 442
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 437
    .local v2, "keyTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

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

    .line 438
    aput v5, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 439
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 440
    iput v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 441
    iput-boolean v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    goto :goto_0
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 425
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 432
    :goto_0
    return-void

    .line 429
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 430
    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 431
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 455
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 464
    :goto_0
    return v1

    .line 456
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v0, p1, v1

    .line 457
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 458
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 460
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKeyStash(I)Z

    move-result v1

    goto :goto_0

    .line 464
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(I)Z
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    .line 447
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v4, p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v3

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 449
    .local v2, "valueTable":[I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v0, v4, v5

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 450
    aget v4, v2, v0

    if-eq v4, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 451
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 487
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int v0, v1, p1

    .line 488
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 489
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 569
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 573
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 580
    :goto_0
    return-object v0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 578
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    goto :goto_0
.end method

.method public findKey(II)I
    .locals 5
    .param p1, "value"    # I
    .param p2, "notFound"    # I

    .prologue
    .line 477
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v3, p1, :cond_1

    const/4 p2, 0x0

    .line 481
    .end local p2    # "notFound":I
    :cond_0
    :goto_0
    return p2

    .line 478
    .restart local p2    # "notFound":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 479
    .local v2, "valueTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v0, v3, v4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 480
    aget v3, v2, v0

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget p2, v3, v0

    goto :goto_0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public get(II)I
    .locals 2
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 293
    if-nez p1, :cond_1

    .line 294
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 305
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 295
    .restart local p2    # "defaultValue":I
    :cond_0
    iget p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    goto :goto_0

    .line 297
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v0, p1, v1

    .line 298
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 299
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 301
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->getStash(II)I

    move-result p2

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget p2, v1, v0

    goto :goto_0
.end method

.method public getAndIncrement(III)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I
    .param p3, "increment"    # I

    .prologue
    .line 318
    if-nez p1, :cond_1

    .line 319
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    .line 320
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 321
    .local v1, "value":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 340
    .end local v1    # "value":I
    :goto_0
    return v1

    .line 324
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 325
    add-int v2, p2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 326
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    move v1, p2

    .line 327
    goto :goto_0

    .line 330
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v0, p1, v2

    .line 331
    .local v0, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v2, v0

    if-eq p1, v2, :cond_2

    .line 332
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v0

    .line 333
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v2, v0

    if-eq p1, v2, :cond_2

    .line 334
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v0

    .line 335
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v2, v0

    if-eq p1, v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->getAndIncrementStash(III)I

    move-result v1

    goto :goto_0

    .line 338
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v1, v2, v0

    .line 339
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    add-int v3, v1, p3

    aput v3, v2, v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntIntMap$Keys;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 607
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 618
    :goto_0
    return-object v0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    goto :goto_0
.end method

.method public put(II)V
    .locals 12
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 98
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 99
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 101
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 109
    .local v10, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v3, p1, v0

    .line 110
    .local v3, "index1":I
    aget v4, v10, v3

    .line 111
    .local v4, "key1":I
    if-ne p1, v4, :cond_2

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v3

    goto :goto_0

    .line 116
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v5

    .line 117
    .local v5, "index2":I
    aget v6, v10, v5

    .line 118
    .local v6, "key2":I
    if-ne p1, v6, :cond_3

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v5

    goto :goto_0

    .line 123
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v7

    .line 124
    .local v7, "index3":I
    aget v8, v10, v7

    .line 125
    .local v8, "key3":I
    if-ne p1, v8, :cond_4

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v7

    goto :goto_0

    .line 131
    :cond_4
    iget v9, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v9, "i":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v11, v9, v0

    .local v11, "n":I
    :goto_1
    if-ge v9, v11, :cond_6

    .line 132
    aget v0, v10, v9

    if-ne p1, v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v9

    goto :goto_0

    .line 131
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 139
    :cond_6
    if-nez v4, :cond_7

    .line 140
    aput p1, v10, v3

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v3

    .line 142
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_0

    .line 146
    :cond_7
    if-nez v6, :cond_8

    .line 147
    aput p1, v10, v5

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v5

    .line 149
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_0

    .line 153
    :cond_8
    if-nez v8, :cond_9

    .line 154
    aput p1, v10, v7

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v0, v7

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto/16 :goto_0

    :cond_9
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 160
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntIntMap;->push(IIIIIIII)V

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntIntMap;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 165
    .local v0, "entry":Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    iget v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_0

    .line 166
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    :cond_0
    return-void
.end method

.method public remove(II)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v3, 0x0

    .line 356
    if-nez p1, :cond_1

    .line 357
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    move v1, p2

    .line 387
    :goto_0
    return v1

    .line 358
    :cond_0
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 359
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 360
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    goto :goto_0

    .line 363
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v0, p1, v2

    .line 364
    .local v0, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_2

    .line 365
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput v3, v2, v0

    .line 366
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v1, v2, v0

    .line 367
    .local v1, "oldValue":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    goto :goto_0

    .line 371
    .end local v1    # "oldValue":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v0

    .line 372
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_3

    .line 373
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput v3, v2, v0

    .line 374
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v1, v2, v0

    .line 375
    .restart local v1    # "oldValue":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    goto :goto_0

    .line 379
    .end local v1    # "oldValue":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v0

    .line 380
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_4

    .line 381
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput v3, v2, v0

    .line 382
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v1, v2, v0

    .line 383
    .restart local v1    # "oldValue":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    goto :goto_0

    .line 387
    .end local v1    # "oldValue":I
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->removeStash(II)I

    move-result v1

    goto :goto_0
.end method

.method removeStash(II)I
    .locals 5
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 391
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 392
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 393
    aget v4, v1, v0

    if-ne p1, v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v3, v4, v0

    .line 395
    .local v3, "oldValue":I
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->removeStashIndex(I)V

    .line 396
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 400
    .end local v3    # "oldValue":I
    :goto_1
    return v3

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, p2

    .line 400
    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 405
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 406
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int v0, v1, v2

    .line 407
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 408
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 409
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 411
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 416
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

    .line 417
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 418
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    if-gt v0, p1, :cond_2

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 420
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x3d

    .line 529
    iget v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v6, :cond_0

    const-string v6, "{}"

    .line 557
    :goto_0
    return-object v6

    .line 530
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 531
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 532
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 533
    .local v4, "keyTable":[I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 534
    .local v5, "valueTable":[I
    array-length v1, v4

    .line 535
    .local v1, "i":I
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v6, :cond_5

    .line 536
    const-string v6, "0="

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 537
    iget v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 548
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 549
    aget v3, v4, v1

    .line 550
    .local v3, "key":I
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 539
    .end local v3    # "key":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 540
    aget v3, v4, v1

    .line 541
    .restart local v3    # "key":I
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 542
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 543
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 544
    aget v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 545
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 551
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 552
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 553
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 554
    aget v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 555
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 556
    .end local v2    # "i":I
    .end local v3    # "key":I
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 557
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

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

.method public values()Lcom/badlogic/gdx/utils/IntIntMap$Values;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 588
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 599
    :goto_0
    return-object v0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 597
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    goto :goto_0
.end method
