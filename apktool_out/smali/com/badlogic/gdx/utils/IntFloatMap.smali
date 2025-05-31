.class public Lcom/badlogic/gdx/utils/IntFloatMap;
.super Ljava/lang/Object;
.source "IntFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Values;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
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

.field private entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[F

.field private values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field zeroValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 64
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 65
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
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

    .line 71
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

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .line 74
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

    .line 75
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    .line 80
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->pushIterations:I

    .line 83
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntFloatMap;

    .prologue
    const/4 v3, 0x0

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 90
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 91
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 94
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 95
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 96
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 480
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 481
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 482
    aget v3, v1, v0

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    .line 483
    :goto_1
    return v3

    .line 481
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getAndIncrementStash(IFF)F
    .locals 6
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F
    .param p3, "increment"    # F

    .prologue
    .line 346
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 347
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 348
    aget v4, v1, v0

    if-ne p1, v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v3, v4, v0

    .line 350
    .local v3, "value":F
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    add-float v5, v3, p3

    aput v5, v4, v0

    .line 354
    .end local v3    # "value":F
    :goto_1
    return v3

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    add-float v4, p2, p3

    invoke-virtual {p0, p1, v4}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    move v3, p2

    .line 354
    goto :goto_1
.end method

.method private getStash(IF)F
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 311
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 312
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 313
    aget v3, v1, v0

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p2, v3, v0

    .line 314
    .end local p2    # "defaultValue":F
    :cond_0
    return p2

    .line 312
    .restart local p2    # "defaultValue":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 531
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 532
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 536
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 537
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(IFIIIIII)V
    .locals 9
    .param p1, "insertKey"    # I
    .param p2, "insertValue"    # F
    .param p3, "index1"    # I
    .param p4, "key1"    # I
    .param p5, "index2"    # I
    .param p6, "key2"    # I
    .param p7, "index3"    # I
    .param p8, "key3"    # I

    .prologue
    .line 210
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 211
    .local v3, "keyTable":[I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 212
    .local v6, "valueTable":[F
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 217
    .local v4, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->pushIterations:I

    .line 220
    .local v5, "pushIterations":I
    :goto_0
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 234
    move/from16 v0, p8

    .line 235
    .local v0, "evictedKey":I
    aget v1, v6, p7

    .line 236
    .local v1, "evictedValue":F
    aput p1, v3, p7

    .line 237
    aput p2, v6, p7

    .line 242
    :goto_1
    and-int p3, v0, v4

    .line 243
    aget p4, v3, p3

    .line 244
    if-nez p4, :cond_1

    .line 245
    aput v0, v3, p3

    .line 246
    aput v1, v6, p3

    .line 247
    iget v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 276
    :cond_0
    :goto_2
    return-void

    .line 222
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":F
    :pswitch_0
    move v0, p4

    .line 223
    .restart local v0    # "evictedKey":I
    aget v1, v6, p3

    .line 224
    .restart local v1    # "evictedValue":F
    aput p1, v3, p3

    .line 225
    aput p2, v6, p3

    goto :goto_1

    .line 228
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":F
    :pswitch_1
    move v0, p6

    .line 229
    .restart local v0    # "evictedKey":I
    aget v1, v6, p5

    .line 230
    .restart local v1    # "evictedValue":F
    aput p1, v3, p5

    .line 231
    aput p2, v6, p5

    goto :goto_1

    .line 251
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result p5

    .line 252
    aget p6, v3, p5

    .line 253
    if-nez p6, :cond_2

    .line 254
    aput v0, v3, p5

    .line 255
    aput v1, v6, p5

    .line 256
    iget v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_2

    .line 260
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result p7

    .line 261
    aget p8, v3, p7

    .line 262
    if-nez p8, :cond_3

    .line 263
    aput v0, v3, p7

    .line 264
    aput v1, v6, p7

    .line 265
    iget v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_2

    .line 269
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    .line 275
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->putStash(IF)V

    goto :goto_2

    .line 271
    :cond_4
    move p1, v0

    .line 272
    move p2, v1

    .line 273
    goto/16 :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(IF)V
    .locals 9
    .param p1, "key"    # I
    .param p2, "value"    # F

    .prologue
    .line 172
    if-nez p1, :cond_1

    .line 173
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v3, p1, v0

    .line 180
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v4, v0, v3

    .line 181
    .local v4, "key1":I
    if-nez v4, :cond_2

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v0, v3

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v3

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v5

    .line 189
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v6, v0, v5

    .line 190
    .local v6, "key2":I
    if-nez v6, :cond_3

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v0, v5

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v5

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v7

    .line 198
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v8, v0, v7

    .line 199
    .local v8, "key3":I
    if-nez v8, :cond_4

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v0, v7

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v7

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 206
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntFloatMap;->push(IFIIIIII)V

    goto :goto_0
.end method

.method private putStash(IF)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # F

    .prologue
    .line 279
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 281
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v0, v1, v2

    .line 287
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v1, v0

    .line 288
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v1, v0

    .line 289
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 290
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 10
    .param p1, "newSize"    # I

    .prologue
    const/4 v7, 0x0

    .line 504
    iget v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v2, v6, v8

    .line 506
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .line 507
    int-to-float v6, p1

    iget v8, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    .line 508
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    .line 510
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

    iput v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    .line 511
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

    iput v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->pushIterations:I

    .line 513
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 514
    .local v3, "oldKeyTable":[I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 516
    .local v5, "oldValueTable":[F
    iget v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 517
    iget v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 519
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 520
    .local v4, "oldSize":I
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 521
    iput v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 522
    if-lez v4, :cond_2

    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 524
    aget v1, v3, v0

    .line 525
    .local v1, "key":I
    if-eqz v1, :cond_0

    aget v6, v5, v0

    invoke-direct {p0, v1, v6}, Lcom/badlogic/gdx/utils/IntFloatMap;->putResize(IF)V

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_1
    move v6, v7

    .line 520
    goto :goto_0

    .line 528
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 437
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v3, :cond_0

    .line 444
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 439
    .local v2, "keyTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

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

    .line 440
    aput v5, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 441
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput-boolean v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 442
    iput v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 443
    iput v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    goto :goto_0
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 427
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->clear()V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 432
    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 433
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 467
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 476
    :goto_0
    return v1

    .line 468
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v0, p1, v1

    .line 469
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 470
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 472
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKeyStash(I)Z

    move-result v1

    goto :goto_0

    .line 476
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(F)Z
    .locals 6
    .param p1, "value"    # F

    .prologue
    const/4 v3, 0x1

    .line 449
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v3

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 451
    .local v2, "valueTable":[F
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

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

    .line 452
    aget v4, v2, v0

    cmpl-float v4, v4, p1

    if-eqz v4, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 453
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public containsValue(FF)Z
    .locals 6
    .param p1, "value"    # F
    .param p2, "epsilon"    # F

    .prologue
    const/4 v3, 0x1

    .line 459
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v3

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 461
    .local v2, "valueTable":[F
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

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

    .line 462
    aget v4, v2, v0

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-lez v4, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 463
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
    .line 499
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int v0, v1, p1

    .line 500
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 501
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 581
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 587
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 592
    :goto_0
    return-object v0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 591
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    goto :goto_0
.end method

.method public findKey(FI)I
    .locals 5
    .param p1, "value"    # F
    .param p2, "notFound"    # I

    .prologue
    .line 489
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    const/4 p2, 0x0

    .line 493
    .end local p2    # "notFound":I
    :cond_0
    :goto_0
    return p2

    .line 490
    .restart local p2    # "notFound":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 491
    .local v2, "valueTable":[F
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

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

    .line 492
    aget v3, v2, v0

    cmpl-float v3, v3, p1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget p2, v3, v0

    goto :goto_0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public get(IF)F
    .locals 2
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 295
    if-nez p1, :cond_1

    .line 296
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 307
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .line 297
    .restart local p2    # "defaultValue":F
    :cond_0
    iget p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    goto :goto_0

    .line 299
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v0, p1, v1

    .line 300
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 301
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 303
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntFloatMap;->getStash(IF)F

    move-result p2

    goto :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p2, v1, v0

    goto :goto_0
.end method

.method public getAndIncrement(IFF)F
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F
    .param p3, "increment"    # F

    .prologue
    .line 320
    if-nez p1, :cond_1

    .line 321
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    .line 322
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 323
    .local v1, "value":F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 342
    .end local v1    # "value":F
    :goto_0
    return v1

    .line 326
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 327
    add-float v2, p2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 328
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    move v1, p2

    .line 329
    goto :goto_0

    .line 332
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v0, p1, v2

    .line 333
    .local v0, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v2, v0

    if-eq p1, v2, :cond_2

    .line 334
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v0

    .line 335
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v2, v0

    if-eq p1, v2, :cond_2

    .line 336
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v0

    .line 337
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v2, v0

    if-eq p1, v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/IntFloatMap;->getAndIncrementStash(IFF)F

    move-result v1

    goto :goto_0

    .line 340
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v1, v2, v0

    .line 341
    .restart local v1    # "value":F
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    add-float v3, v1, p3

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
            "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntFloatMap$Keys;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 619
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 625
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 630
    :goto_0
    return-object v0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    goto :goto_0
.end method

.method public put(IF)V
    .locals 12
    .param p1, "key"    # I
    .param p2, "value"    # F

    .prologue
    .line 99
    if-nez p1, :cond_1

    .line 100
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 101
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 111
    .local v10, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v3, p1, v0

    .line 112
    .local v3, "index1":I
    aget v4, v10, v3

    .line 113
    .local v4, "key1":I
    if-ne p1, v4, :cond_2

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v3

    goto :goto_0

    .line 118
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v5

    .line 119
    .local v5, "index2":I
    aget v6, v10, v5

    .line 120
    .local v6, "key2":I
    if-ne p1, v6, :cond_3

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v5

    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v7

    .line 126
    .local v7, "index3":I
    aget v8, v10, v7

    .line 127
    .local v8, "key3":I
    if-ne p1, v8, :cond_4

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v7

    goto :goto_0

    .line 133
    :cond_4
    iget v9, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v9, "i":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v11, v9, v0

    .local v11, "n":I
    :goto_1
    if-ge v9, v11, :cond_6

    .line 134
    aget v0, v10, v9

    if-ne p1, v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v9

    goto :goto_0

    .line 133
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 141
    :cond_6
    if-nez v4, :cond_7

    .line 142
    aput p1, v10, v3

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v3

    .line 144
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_0

    .line 148
    :cond_7
    if-nez v6, :cond_8

    .line 149
    aput p1, v10, v5

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v5

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_0

    .line 155
    :cond_8
    if-nez v8, :cond_9

    .line 156
    aput p1, v10, v7

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v0, v7

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto/16 :goto_0

    :cond_9
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 162
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntFloatMap;->push(IFIIIIII)V

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntFloatMap;

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    .line 167
    .local v0, "entry":Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    iget v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->value:F

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    goto :goto_0

    .line 168
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    :cond_0
    return-void
.end method

.method public remove(IF)F
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .prologue
    const/4 v3, 0x0

    .line 358
    if-nez p1, :cond_1

    .line 359
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    move v1, p2

    .line 389
    :goto_0
    return v1

    .line 360
    :cond_0
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 361
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 362
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    goto :goto_0

    .line 365
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v0, p1, v2

    .line 366
    .local v0, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput v3, v2, v0

    .line 368
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v1, v2, v0

    .line 369
    .local v1, "oldValue":F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    goto :goto_0

    .line 373
    .end local v1    # "oldValue":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v0

    .line 374
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_3

    .line 375
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput v3, v2, v0

    .line 376
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v1, v2, v0

    .line 377
    .restart local v1    # "oldValue":F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    goto :goto_0

    .line 381
    .end local v1    # "oldValue":F
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v0

    .line 382
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput v3, v2, v0

    .line 384
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v1, v2, v0

    .line 385
    .restart local v1    # "oldValue":F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    goto :goto_0

    .line 389
    .end local v1    # "oldValue":F
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntFloatMap;->removeStash(IF)F

    move-result v1

    goto :goto_0
.end method

.method removeStash(IF)F
    .locals 5
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 393
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 394
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 395
    aget v4, v1, v0

    if-ne p1, v4, :cond_0

    .line 396
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v3, v4, v0

    .line 397
    .local v3, "oldValue":F
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->removeStashIndex(I)V

    .line 398
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 402
    .end local v3    # "oldValue":F
    :goto_1
    return v3

    .line 394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, p2

    .line 402
    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 407
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 408
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int v0, v1, v2

    .line 409
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 411
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v2, v2, v0

    aput v2, v1, p1

    .line 413
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 418
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

    .line 419
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 420
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    if-gt v0, p1, :cond_2

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 422
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x3d

    .line 541
    iget v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v6, :cond_0

    const-string v6, "{}"

    .line 569
    :goto_0
    return-object v6

    .line 542
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 543
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 544
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 545
    .local v4, "keyTable":[I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 546
    .local v5, "valueTable":[F
    array-length v1, v4

    .line 547
    .local v1, "i":I
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v6, :cond_5

    .line 548
    const-string v6, "0="

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 549
    iget v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 560
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 561
    aget v3, v4, v1

    .line 562
    .local v3, "key":I
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 551
    .end local v3    # "key":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 552
    aget v3, v4, v1

    .line 553
    .restart local v3    # "key":I
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 554
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 555
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 556
    aget v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 557
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 563
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 564
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 565
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 566
    aget v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 567
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 568
    .end local v2    # "i":I
    .end local v3    # "key":I
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 569
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

.method public values()Lcom/badlogic/gdx/utils/IntFloatMap$Values;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 600
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 611
    :goto_0
    return-object v0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    goto :goto_0
.end method
