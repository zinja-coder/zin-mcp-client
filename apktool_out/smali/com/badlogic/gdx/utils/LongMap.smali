.class public Lcom/badlogic/gdx/utils/LongMap;
.super Ljava/lang/Object;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/LongMap$Keys;,
        Lcom/badlogic/gdx/utils/LongMap$Values;,
        Lcom/badlogic/gdx/utils/LongMap$Entries;,
        Lcom/badlogic/gdx/utils/LongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/LongMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[J

.field private keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values1:Lcom/badlogic/gdx/utils/LongMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/LongMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
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

    .line 70
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

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 73
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

    .line 74
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<+TV;>;"
    const/4 v3, 0x0

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 90
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v2, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 93
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 94
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 95
    return-void
.end method

.method private containsKeyStash(J)Z
    .locals 7
    .param p1, "key"    # J

    .prologue
    .line 473
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 474
    .local v1, "keyTable":[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 475
    aget-wide v4, v1, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 476
    :goto_1
    return v3

    .line 474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStash(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 332
    .local v1, "keyTable":[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 333
    aget-wide v4, v1, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object p3, v3, v0

    .line 334
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p3

    .line 332
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(J)I
    .locals 5
    .param p1, "h"    # J

    .prologue
    .line 537
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x4b47d1c7

    mul-long/2addr p1, v0

    .line 538
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private hash3(J)I
    .locals 5
    .param p1, "h"    # J

    .prologue
    .line 542
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x312e3dbf

    mul-long/2addr p1, v0

    .line 543
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private push(JLjava/lang/Object;IJIJIJ)V
    .locals 11
    .param p1, "insertKey"    # J
    .param p4, "index1"    # I
    .param p5, "key1"    # J
    .param p7, "index2"    # I
    .param p8, "key2"    # J
    .param p10, "index3"    # I
    .param p11, "key3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;IJIJIJ)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "insertValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 216
    .local v4, "keyTable":[J
    iget-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 217
    .local v7, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 222
    .local v5, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 225
    .local v6, "pushIterations":I
    :goto_0
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 239
    move-wide/from16 v0, p11

    .line 240
    .local v0, "evictedKey":J
    aget-object v2, v7, p10

    .line 241
    .local v2, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide p1, v4, p10

    .line 242
    aput-object p3, v7, p10

    .line 247
    :goto_1
    int-to-long v8, v5

    and-long/2addr v8, v0

    long-to-int p4, v8

    .line 248
    aget-wide p5, v4, p4

    .line 249
    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-nez v8, :cond_1

    .line 250
    aput-wide v0, v4, p4

    .line 251
    aput-object v2, v7, p4

    .line 252
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 281
    :cond_0
    :goto_2
    return-void

    .line 227
    .end local v0    # "evictedKey":J
    .end local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_0
    move-wide/from16 v0, p5

    .line 228
    .restart local v0    # "evictedKey":J
    aget-object v2, v7, p4

    .line 229
    .restart local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide p1, v4, p4

    .line 230
    aput-object p3, v7, p4

    goto :goto_1

    .line 233
    .end local v0    # "evictedKey":J
    .end local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move-wide/from16 v0, p8

    .line 234
    .restart local v0    # "evictedKey":J
    aget-object v2, v7, p7

    .line 235
    .restart local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide p1, v4, p7

    .line 236
    aput-object p3, v7, p7

    goto :goto_1

    .line 256
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result p7

    .line 257
    aget-wide p8, v4, p7

    .line 258
    const-wide/16 v8, 0x0

    cmp-long v8, p8, v8

    if-nez v8, :cond_2

    .line 259
    aput-wide v0, v4, p7

    .line 260
    aput-object v2, v7, p7

    .line 261
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_2

    .line 265
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result p10

    .line 266
    aget-wide p11, v4, p10

    .line 267
    const-wide/16 v8, 0x0

    cmp-long v8, p11, v8

    if-nez v8, :cond_3

    .line 268
    aput-wide v0, v4, p10

    .line 269
    aput-object v2, v7, p10

    .line 270
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_2

    .line 274
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_4

    .line 280
    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->putStash(JLjava/lang/Object;)V

    goto :goto_2

    .line 276
    :cond_4
    move-wide p1, v0

    .line 277
    move-object p3, v2

    .line 278
    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(JLjava/lang/Object;)V
    .locals 17
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 178
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 179
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long v2, v2, p1

    long-to-int v7, v2

    .line 185
    .local v7, "index1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v8, v2, v7

    .line 186
    .local v8, "key1":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_2

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v2, v7

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v7

    .line 189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v10

    .line 194
    .local v10, "index2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v11, v2, v10

    .line 195
    .local v11, "key2":J
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-nez v2, :cond_3

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v2, v10

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v10

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v13

    .line 203
    .local v13, "index3":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v14, v2, v13

    .line 204
    .local v14, "key3":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v2, v13

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v13

    .line 207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    .line 211
    invoke-direct/range {v3 .. v15}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    goto/16 :goto_0
.end method

.method private putStash(JLjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 286
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 287
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v1, v2

    .line 292
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v0

    .line 293
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 294
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 295
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 12
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v8, 0x0

    .line 510
    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v1, v7, v9

    .line 512
    .local v1, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 513
    int-to-float v7, p1

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 514
    add-int/lit8 v7, p1, -0x1

    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 515
    int-to-long v10, p1

    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x3f

    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 516
    const/4 v7, 0x3

    int-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 517
    const/16 v7, 0x8

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v9, v10

    div-int/lit8 v9, v9, 0x8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 519
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 520
    .local v4, "oldKeyTable":[J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 522
    .local v6, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v7, p1

    new-array v7, v7, [J

    iput-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 523
    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v7, p1

    new-array v7, v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iput-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 525
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 526
    .local v5, "oldSize":I
    iget-boolean v7, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 527
    iput v8, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 528
    if-lez v5, :cond_2

    .line 529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 530
    aget-wide v2, v4, v0

    .line 531
    .local v2, "key":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    aget-object v7, v6, v0

    invoke-direct {p0, v2, v3, v7}, Lcom/badlogic/gdx/utils/LongMap;->putResize(JLjava/lang/Object;)V

    .line 529
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "key":J
    :cond_1
    move v7, v8

    .line 526
    goto :goto_0

    .line 534
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 425
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v4, :cond_0

    .line 436
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 427
    .local v2, "keyTable":[J
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 428
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_1

    .line 429
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 430
    aput-object v7, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 432
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 433
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 434
    iput-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 435
    iput-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    goto :goto_0
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v1, 0x0

    .line 414
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->clear()V

    .line 422
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 419
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 420
    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 421
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0
.end method

.method public containsKey(J)Z
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 460
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 469
    :goto_0
    return v1

    .line 461
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 462
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->containsKeyStash(J)Z

    move-result v1

    goto :goto_0

    .line 469
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v4, 0x1

    .line 441
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 442
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_3

    .line 443
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v4

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 445
    .local v2, "keyTable":[J
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 446
    aget-wide v6, v2, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 447
    .end local v1    # "i":I
    .end local v2    # "keyTable":[J
    :cond_3
    if-eqz p2, :cond_4

    .line 448
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eq p1, v5, :cond_0

    .line 449
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 450
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 452
    .end local v1    # "i":I
    :cond_4
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 453
    :cond_5
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 454
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 456
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 505
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int v0, v1, p1

    .line 506
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 507
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/LongMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entries",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 582
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 587
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 593
    :goto_0
    return-object v0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 591
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    goto :goto_0
.end method

.method public findKey(Ljava/lang/Object;ZJ)J
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .param p3, "notFound"    # J

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v4, 0x0

    .line 484
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 485
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_2

    .line 486
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v6, :cond_1

    move-wide p3, v4

    .line 499
    .end local p3    # "notFound":J
    :cond_0
    :goto_0
    return-wide p3

    .line 487
    .restart local p3    # "notFound":J
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 488
    .local v2, "keyTable":[J
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v6, v7

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 489
    aget-wide v6, v2, v0

    cmp-long v6, v6, v4

    if-eqz v6, :cond_8

    aget-object v6, v3, v0

    if-nez v6, :cond_8

    aget-wide p3, v2, v0

    goto :goto_0

    .line 490
    .end local v0    # "i":I
    .end local v2    # "keyTable":[J
    :cond_2
    if-eqz p2, :cond_4

    .line 491
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v6, :cond_3

    move-wide p3, v4

    goto :goto_0

    .line 492
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 493
    aget-object v4, v3, v0

    if-ne v4, p1, :cond_7

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p3, v4, v0

    goto :goto_0

    .line 495
    .end local v0    # "i":I
    :cond_4
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-wide p3, v4

    goto :goto_0

    .line 496
    :cond_5
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 497
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p3, v4, v0

    goto :goto_0

    :cond_6
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_7
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .end local v1    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "keyTable":[J
    :cond_8
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v1, 0x0

    .line 299
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 300
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    .line 311
    :goto_0
    return-object v1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 303
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 304
    .local v0, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_2

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 306
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_2

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 316
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 327
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object p3

    .line 317
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object p3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 319
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 320
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/LongMap$Entry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/LongMap$Keys;
    .locals 3

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 620
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 625
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 631
    :goto_0
    return-object v0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    goto :goto_0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 100
    .local v18, "oldValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 101
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v3, :cond_0

    .line 102
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 103
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 167
    .end local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object v18

    .line 108
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    move-object/from16 v16, v0

    .line 111
    .local v16, "keyTable":[J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v4, v3

    and-long v4, v4, p1

    long-to-int v7, v4

    .line 112
    .local v7, "index1":I
    aget-wide v8, v16, v7

    .line 113
    .local v8, "key1":J
    cmp-long v3, v8, p1

    if-nez v3, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v3, v7

    .line 115
    .restart local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v3, v7

    goto :goto_0

    .line 119
    .end local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v10

    .line 120
    .local v10, "index2":I
    aget-wide v11, v16, v10

    .line 121
    .local v11, "key2":J
    cmp-long v3, v11, p1

    if-nez v3, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v3, v10

    .line 123
    .restart local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v3, v10

    goto :goto_0

    .line 127
    .end local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v13

    .line 128
    .local v13, "index3":I
    aget-wide v14, v16, v13

    .line 129
    .local v14, "key3":J
    cmp-long v3, v14, p1

    if-nez v3, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v3, v13

    .line 131
    .restart local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v3, v13

    goto :goto_0

    .line 136
    .end local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v2, "i":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v17, v2, v3

    .local v17, "n":I
    :goto_1
    move/from16 v0, v17

    if-ge v2, v0, :cond_6

    .line 137
    aget-wide v4, v16, v2

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v3, v2

    .line 139
    .restart local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v3, v2

    goto :goto_0

    .line 136
    .end local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_8

    .line 146
    aput-wide p1, v16, v7

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v3, v7

    .line 148
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 149
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 152
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v3, v11, v4

    if-nez v3, :cond_a

    .line 153
    aput-wide p1, v16, v10

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v3, v10

    .line 155
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 156
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 159
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-nez v3, :cond_c

    .line 160
    aput-wide p1, v16, v13

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v3, v13

    .line 162
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 163
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    .line 166
    invoke-direct/range {v3 .. v15}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    .line 167
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 172
    .local v0, "entry":Lcom/badlogic/gdx/utils/LongMap$Entry;, "Lcom/badlogic/gdx/utils/LongMap$Entry<TV;>;"
    iget-wide v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    iget-object v4, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/LongMap$Entry;, "Lcom/badlogic/gdx/utils/LongMap$Entry<TV;>;"
    :cond_0
    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 338
    cmp-long v3, p1, v6

    if-nez v3, :cond_1

    .line 339
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v3, :cond_0

    move-object v1, v2

    .line 374
    :goto_0
    return-object v1

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 341
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 342
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 343
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 347
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v4, v3

    and-long/2addr v4, p1

    long-to-int v0, v4

    .line 348
    .local v0, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v6, v3, v0

    .line 350
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 351
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 352
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 356
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 357
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 358
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v6, v3, v0

    .line 359
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 360
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 361
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 365
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 366
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_4

    .line 367
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v6, v3, v0

    .line 368
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 369
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 370
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 374
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->removeStash(J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method removeStash(J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 379
    .local v1, "keyTable":[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 380
    aget-wide v4, v1, v0

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 381
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 382
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->removeStashIndex(I)V

    .line 383
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 387
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v3

    .line 379
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v4, 0x0

    .line 392
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 393
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v1, v2

    .line 394
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, p1

    .line 396
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 397
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v1, p1

    goto :goto_0
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 405
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
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

    .line 406
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 407
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    if-gt v0, p1, :cond_2

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 409
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v10, 0x0

    const/16 v8, 0x3d

    .line 547
    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v7, :cond_0

    const-string v7, "[]"

    .line 570
    :goto_0
    return-object v7

    .line 548
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 549
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v7, 0x5b

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 550
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 551
    .local v3, "keyTable":[J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 552
    .local v6, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .line 553
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 554
    aget-wide v4, v3, v1

    .line 555
    .local v4, "key":J
    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 556
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 557
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 558
    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 561
    .end local v1    # "i":I
    .end local v4    # "key":J
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 562
    aget-wide v4, v3, v1

    .line 563
    .restart local v4    # "key":J
    cmp-long v7, v4, v10

    if-nez v7, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 564
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v7, ", "

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 565
    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 566
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 567
    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 568
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 569
    .end local v2    # "i":I
    .end local v4    # "key":J
    .restart local v1    # "i":I
    :cond_3
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 570
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public values()Lcom/badlogic/gdx/utils/LongMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 601
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 612
    :goto_0
    return-object v0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    goto :goto_0
.end method
