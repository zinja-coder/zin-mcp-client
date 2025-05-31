.class public Lcom/badlogic/gdx/utils/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntMap$Values;,
        Lcom/badlogic/gdx/utils/IntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntMap$Entry;
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
        "Lcom/badlogic/gdx/utils/IntMap$Entry",
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

.field private entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

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

.field private values1:Lcom/badlogic/gdx/utils/IntMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntMap$Values;

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
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
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

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

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
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<+TV;>;"
    const/4 v3, 0x0

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 90
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 93
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 94
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 95
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 476
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 477
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 478
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    .line 479
    :goto_1
    return v3

    .line 477
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStash(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 333
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 334
    aget v3, v1, v0

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, v3, v0

    .line 335
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p2

    .line 333
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 540
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 541
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 545
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 546
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(ILjava/lang/Object;IIIIII)V
    .locals 9
    .param p1, "insertKey"    # I
    .param p3, "index1"    # I
    .param p4, "key1"    # I
    .param p5, "index2"    # I
    .param p6, "key2"    # I
    .param p7, "index3"    # I
    .param p8, "key3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;IIIIII)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 217
    .local v3, "keyTable":[I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 218
    .local v6, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 223
    .local v4, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 226
    .local v5, "pushIterations":I
    :goto_0
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 240
    move/from16 v0, p8

    .line 241
    .local v0, "evictedKey":I
    aget-object v1, v6, p7

    .line 242
    .local v1, "evictedValue":Ljava/lang/Object;, "TV;"
    aput p1, v3, p7

    .line 243
    aput-object p2, v6, p7

    .line 248
    :goto_1
    and-int p3, v0, v4

    .line 249
    aget p4, v3, p3

    .line 250
    if-nez p4, :cond_1

    .line 251
    aput v0, v3, p3

    .line 252
    aput-object v1, v6, p3

    .line 253
    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 282
    :cond_0
    :goto_2
    return-void

    .line 228
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_0
    move v0, p4

    .line 229
    .restart local v0    # "evictedKey":I
    aget-object v1, v6, p3

    .line 230
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput p1, v3, p3

    .line 231
    aput-object p2, v6, p3

    goto :goto_1

    .line 234
    .end local v0    # "evictedKey":I
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move v0, p6

    .line 235
    .restart local v0    # "evictedKey":I
    aget-object v1, v6, p5

    .line 236
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput p1, v3, p5

    .line 237
    aput-object p2, v6, p5

    goto :goto_1

    .line 257
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result p5

    .line 258
    aget p6, v3, p5

    .line 259
    if-nez p6, :cond_2

    .line 260
    aput v0, v3, p5

    .line 261
    aput-object v1, v6, p5

    .line 262
    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_2

    .line 266
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result p7

    .line 267
    aget p8, v3, p7

    .line 268
    if-nez p8, :cond_3

    .line 269
    aput v0, v3, p7

    .line 270
    aput-object v1, v6, p7

    .line 271
    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_2

    .line 275
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    .line 281
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->putStash(ILjava/lang/Object;)V

    goto :goto_2

    .line 277
    :cond_4
    move p1, v0

    .line 278
    move-object p2, v1

    .line 279
    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(ILjava/lang/Object;)V
    .locals 9
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    .line 178
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v3, p1, v0

    .line 185
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v4, v0, v3

    .line 186
    .local v4, "key1":I
    if-nez v4, :cond_2

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v3

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 189
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v5

    .line 194
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v6, v0, v5

    .line 195
    .local v6, "key2":I
    if-nez v6, :cond_3

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v5

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 198
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v7

    .line 203
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v8, v0, v7

    .line 204
    .local v8, "key3":I
    if-nez v8, :cond_4

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v7

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 211
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    goto :goto_0
.end method

.method private putStash(ILjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 287
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v1, v2

    .line 293
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v1, v0

    .line 294
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 295
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 296
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 10
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v7, 0x0

    .line 513
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v6, v8

    .line 515
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .line 516
    int-to-float v6, p1

    iget v8, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 517
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 518
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 519
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

    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 520
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

    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 522
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 523
    .local v3, "oldKeyTable":[I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 525
    .local v5, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 526
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 528
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 529
    .local v4, "oldSize":I
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 530
    iput v7, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 531
    if-lez v4, :cond_2

    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 533
    aget v1, v3, v0

    .line 534
    .local v1, "key":I
    if-eqz v1, :cond_0

    aget-object v6, v5, v0

    invoke-direct {p0, v1, v6}, Lcom/badlogic/gdx/utils/IntMap;->putResize(ILjava/lang/Object;)V

    .line 532
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_1
    move v6, v7

    .line 529
    goto :goto_0

    .line 537
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 426
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v4, :cond_0

    .line 437
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 428
    .local v2, "keyTable":[I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 429
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

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

    .line 430
    aput v6, v2, v0

    .line 431
    aput-object v7, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 433
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 434
    iput v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 435
    iput-object v7, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 436
    iput-boolean v6, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    goto :goto_0
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v1, 0x0

    .line 415
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 423
    :goto_0
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 420
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 421
    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 422
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 463
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 472
    :goto_0
    return v1

    .line 464
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v0, p1, v1

    .line 465
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 466
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 468
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKeyStash(I)Z

    move-result v1

    goto :goto_0

    .line 472
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v4, 0x1

    .line 444
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 445
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_3

    .line 446
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v4

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 448
    .local v2, "keyTable":[I
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

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

    .line 449
    aget v5, v2, v0

    if-eqz v5, :cond_2

    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 450
    .end local v1    # "i":I
    .end local v2    # "keyTable":[I
    :cond_3
    if-eqz p2, :cond_4

    .line 451
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eq p1, v5, :cond_0

    .line 452
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

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

    .line 453
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 455
    .end local v1    # "i":I
    :cond_4
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 456
    :cond_5
    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

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

    .line 457
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 459
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
    .line 508
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int v0, v1, p1

    .line 509
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 510
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entries",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 590
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 601
    :goto_0
    return-object v0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    goto :goto_0
.end method

.method public findKey(Ljava/lang/Object;ZI)I
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .param p3, "notFound"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v4, 0x0

    .line 487
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 488
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_2

    .line 489
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    move p3, v4

    .line 502
    .end local p3    # "notFound":I
    :cond_0
    :goto_0
    return p3

    .line 490
    .restart local p3    # "notFound":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 491
    .local v2, "keyTable":[I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v4, v5

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
    aget v4, v2, v0

    if-eqz v4, :cond_8

    aget-object v4, v3, v0

    if-nez v4, :cond_8

    aget p3, v2, v0

    goto :goto_0

    .line 493
    .end local v0    # "i":I
    .end local v2    # "keyTable":[I
    :cond_2
    if-eqz p2, :cond_4

    .line 494
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v5, :cond_3

    move p3, v4

    goto :goto_0

    .line 495
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

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

    .line 496
    aget-object v4, v3, v0

    if-ne v4, p1, :cond_7

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget p3, v4, v0

    goto :goto_0

    .line 498
    .end local v0    # "i":I
    :cond_4
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move p3, v4

    goto :goto_0

    .line 499
    :cond_5
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

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

    .line 500
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget p3, v4, v0

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
    .restart local v2    # "keyTable":[I
    :cond_8
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v1, 0x0

    .line 300
    if-nez p1, :cond_1

    .line 301
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    .line 312
    :goto_0
    return-object v1

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v0, p1, v2

    .line 305
    .local v0, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_2

    .line 306
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 307
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_2

    .line 308
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 309
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/badlogic/gdx/utils/IntMap;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    .line 317
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 328
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object p2

    .line 318
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 320
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v0, p1, v1

    .line 321
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 322
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 324
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/IntMap$Entry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntMap$Keys;
    .locals 3

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 628
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 632
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 633
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 634
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 639
    :goto_0
    return-object v0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 638
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v12, 0x0

    .line 98
    if-nez p1, :cond_1

    .line 99
    iget-object v12, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 100
    .local v12, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 101
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 167
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object v12

    .line 108
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 111
    .local v10, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v3, p1, v0

    .line 112
    .local v3, "index1":I
    aget v4, v10, v3

    .line 113
    .local v4, "key1":I
    if-ne v4, p1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v12, v0, v3

    .line 115
    .restart local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    goto :goto_0

    .line 119
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v5

    .line 120
    .local v5, "index2":I
    aget v6, v10, v5

    .line 121
    .local v6, "key2":I
    if-ne v6, p1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v12, v0, v5

    .line 123
    .restart local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_0

    .line 127
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v7

    .line 128
    .local v7, "index3":I
    aget v8, v10, v7

    .line 129
    .local v8, "key3":I
    if-ne v8, p1, :cond_4

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v12, v0, v7

    .line 131
    .restart local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    goto :goto_0

    .line 136
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    iget v9, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v9, "i":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v11, v9, v0

    .local v11, "n":I
    :goto_1
    if-ge v9, v11, :cond_6

    .line 137
    aget v0, v10, v9

    if-ne v0, p1, :cond_5

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v12, v0, v9

    .line 139
    .restart local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v9

    goto :goto_0

    .line 136
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 145
    :cond_6
    if-nez v4, :cond_7

    .line 146
    aput p1, v10, v3

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 152
    :cond_7
    if-nez v6, :cond_8

    .line 153
    aput p1, v10, v5

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto/16 :goto_0

    .line 159
    :cond_8
    if-nez v8, :cond_9

    .line 160
    aput p1, v10, v7

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 162
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto/16 :goto_0

    :cond_9
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 166
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 172
    .local v0, "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<TV;>;"
    iget v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    iget-object v3, v0, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<TV;>;"
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 340
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v3, :cond_0

    move-object v1, v2

    .line 375
    :goto_0
    return-object v1

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 342
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 343
    iput-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 344
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 348
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v0, p1, v3

    .line 349
    .local v0, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 350
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v4, v3, v0

    .line 351
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 352
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 353
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 357
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 358
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_3

    .line 359
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v4, v3, v0

    .line 360
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 361
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 362
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 366
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 367
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_4

    .line 368
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v4, v3, v0

    .line 369
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 370
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 371
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0

    .line 375
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->removeStash(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method removeStash(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 380
    .local v1, "keyTable":[I
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 381
    aget v4, v1, v0

    if-ne v4, p1, :cond_0

    .line 382
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 383
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->removeStashIndex(I)V

    .line 384
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 388
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v3

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v3, 0x0

    .line 393
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 394
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v0, v1, v2

    .line 395
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 396
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 397
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 398
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, p1

    goto :goto_0
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 406
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
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

    .line 407
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 408
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    if-gt v0, p1, :cond_2

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 410
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/16 v7, 0x3d

    .line 550
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v6, :cond_0

    const-string v6, "[]"

    .line 578
    :goto_0
    return-object v6

    .line 551
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 552
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 553
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 554
    .local v4, "keyTable":[I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 555
    .local v5, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v1, v4

    .line 556
    .local v1, "i":I
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v6, :cond_5

    .line 557
    const-string v6, "0="

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 558
    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 569
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 570
    aget v3, v4, v1

    .line 571
    .local v3, "key":I
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 560
    .end local v3    # "key":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 561
    aget v3, v4, v1

    .line 562
    .restart local v3    # "key":I
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 563
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 564
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 565
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 566
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 572
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 573
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 574
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 575
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 576
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 577
    .end local v2    # "i":I
    .end local v3    # "key":I
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x5d

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 578
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

.method public values()Lcom/badlogic/gdx/utils/IntMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 609
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 620
    :goto_0
    return-object v0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    goto :goto_0
.end method
