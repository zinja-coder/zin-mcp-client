.class public Lcom/badlogic/gdx/utils/ObjectFloatMap;
.super Ljava/lang/Object;
.source "ObjectFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry",
        "<TK;>;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[F

.field private values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    .line 61
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
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

    .line 67
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

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    .line 70
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

    .line 71
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    .line 73
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hashShift:I

    .line 76
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashCapacity:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->pushIterations:I

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap",
            "<+TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<+TK;>;"
    const/4 v3, 0x0

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;-><init>(IF)V

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    .line 87
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 90
    return-void
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 431
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 432
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 433
    :goto_1
    return v3

    .line 431
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getAndIncrementStash(Ljava/lang/Object;FF)F
    .locals 6
    .param p2, "defaultValue"    # F
    .param p3, "increment"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 316
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 317
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v3, v4, v0

    .line 319
    .local v3, "value":F
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    add-float v5, v3, p3

    aput v5, v4, v0

    .line 323
    .end local v3    # "value":F
    :goto_1
    return v3

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    add-float v4, p2, p3

    invoke-virtual {p0, p1, v4}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->put(Ljava/lang/Object;F)V

    move v3, p2

    .line 323
    goto :goto_1
.end method

.method private getStash(Ljava/lang/Object;F)F
    .locals 4
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 292
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 293
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget p2, v3, v0

    .line 294
    .end local p2    # "defaultValue":F
    :cond_0
    return p2

    .line 292
    .restart local p2    # "defaultValue":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 480
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 481
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 485
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 486
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;FILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .param p2, "insertValue"    # F
    .param p3, "index1"    # I
    .param p5, "index2"    # I
    .param p7, "index3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FITK;ITK;ITK;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 193
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v7, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 194
    .local v7, "valueTable":[F
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    .line 199
    .local v5, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->pushIterations:I

    .line 202
    .local v6, "pushIterations":I
    :goto_0
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 216
    move-object/from16 v0, p8

    .line 217
    .local v0, "evictedKey":Ljava/lang/Object;, "TK;"
    aget v1, v7, p7

    .line 218
    .local v1, "evictedValue":F
    aput-object p1, v4, p7

    .line 219
    aput p2, v7, p7

    .line 224
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 225
    .local v2, "hashCode":I
    and-int p3, v2, v5

    .line 226
    aget-object p4, v4, p3

    .line 227
    if-nez p4, :cond_1

    .line 228
    aput-object v0, v4, p3

    .line 229
    aput v1, v7, p3

    .line 230
    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 259
    :cond_0
    :goto_2
    return-void

    .line 204
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":F
    .end local v2    # "hashCode":I
    :pswitch_0
    move-object v0, p4

    .line 205
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget v1, v7, p3

    .line 206
    .restart local v1    # "evictedValue":F
    aput-object p1, v4, p3

    .line 207
    aput p2, v7, p3

    goto :goto_1

    .line 210
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":F
    :pswitch_1
    move-object/from16 v0, p6

    .line 211
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget v1, v7, p5

    .line 212
    .restart local v1    # "evictedValue":F
    aput-object p1, v4, p5

    .line 213
    aput p2, v7, p5

    goto :goto_1

    .line 234
    .restart local v2    # "hashCode":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash2(I)I

    move-result p5

    .line 235
    aget-object p6, v4, p5

    .line 236
    if-nez p6, :cond_2

    .line 237
    aput-object v0, v4, p5

    .line 238
    aput v1, v7, p5

    .line 239
    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_2

    .line 243
    :cond_2
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash3(I)I

    move-result p7

    .line 244
    aget-object p8, v4, p7

    .line 245
    if-nez p8, :cond_3

    .line 246
    aput-object v0, v4, p7

    .line 247
    aput v1, v7, p7

    .line 248
    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_2

    .line 252
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_4

    .line 258
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->putStash(Ljava/lang/Object;F)V

    goto :goto_2

    .line 254
    :cond_4
    move-object p1, v0

    .line 255
    move p2, v1

    .line 256
    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(Ljava/lang/Object;F)V
    .locals 10
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 161
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v3, v9, v0

    .line 162
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v0, v3

    .line 163
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_1

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v3

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash2(I)I

    move-result v5

    .line 171
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v6, v0, v5

    .line 172
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    if-nez v6, :cond_2

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v5

    .line 175
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash3(I)I

    move-result v7

    .line 180
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v8, v0, v7

    .line 181
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    if-nez v8, :cond_3

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v7

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 188
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->push(Ljava/lang/Object;FILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private putStash(Ljava/lang/Object;F)V
    .locals 3
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 264
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->put(Ljava/lang/Object;F)V

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v0, v1, v2

    .line 270
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 271
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v1, v0

    .line 272
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    .line 273
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 11
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/4 v10, 0x0

    .line 453
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v2, v6, v7

    .line 455
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    .line 456
    int-to-float v6, p1

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    .line 457
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hashShift:I

    .line 459
    const/4 v6, 0x3

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashCapacity:I

    .line 460
    const/16 v6, 0x8

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    div-int/lit8 v7, v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->pushIterations:I

    .line 462
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 463
    .local v3, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 465
    .local v5, "oldValueTable":[F
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 466
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 468
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 469
    .local v4, "oldSize":I
    iput v10, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 470
    iput v10, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    .line 471
    if-lez v4, :cond_1

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 473
    aget-object v1, v3, v0

    .line 474
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    aget v6, v5, v0

    invoke-direct {p0, v1, v6}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->putResize(Ljava/lang/Object;F)V

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/4 v5, 0x0

    .line 399
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v3, :cond_0

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 401
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

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

    .line 402
    const/4 v3, 0x0

    aput-object v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 403
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 404
    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    goto :goto_0
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 390
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->clear()V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 395
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 418
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v1, v0, v2

    .line 419
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash2(I)I

    move-result v1

    .line 421
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash3(I)I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    .line 426
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsValue(F)Z
    .locals 5
    .param p1, "value"    # F

    .prologue
    .line 410
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 411
    .local v2, "valueTable":[F
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v0, v3, v4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 412
    aget v3, v2, v0

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 413
    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 448
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int v0, v1, p1

    .line 449
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    .line 450
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    .line 525
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->reset()V

    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 530
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    .line 536
    :goto_0
    return-object v0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->reset()V

    .line 534
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    goto :goto_0
.end method

.method public findKey(F)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TK;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 440
    .local v2, "valueTable":[F
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v0, v3, v4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 441
    aget v3, v2, v0

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 442
    :goto_1
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;F)F
    .locals 3
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 279
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v1, v0, v2

    .line 280
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash2(I)I

    move-result v1

    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash3(I)I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->getStash(Ljava/lang/Object;F)F

    move-result v2

    .line 287
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v2, v2, v1

    goto :goto_0
.end method

.method public getAndIncrement(Ljava/lang/Object;FF)F
    .locals 5
    .param p2, "defaultValue"    # F
    .param p3, "increment"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 301
    .local v0, "hashCode":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v1, v0, v3

    .line 302
    .local v1, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash2(I)I

    move-result v1

    .line 304
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash3(I)I

    move-result v1

    .line 306
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->getAndIncrementStash(Ljava/lang/Object;FF)F

    move-result v2

    .line 311
    :goto_0
    return v2

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v2, v3, v1

    .line 310
    .local v2, "value":F
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    add-float v4, v2, p3

    aput v4, v3, v1

    goto :goto_0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    .line 563
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->reset()V

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 568
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 569
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    .line 574
    :goto_0
    return-object v0

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->reset()V

    .line 572
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 573
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keys2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;F)V
    .locals 13
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v11, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 97
    .local v11, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 98
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v3, v9, v0

    .line 99
    .local v3, "index1":I
    aget-object v4, v11, v3

    .line 100
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v3

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash2(I)I

    move-result v5

    .line 106
    .local v5, "index2":I
    aget-object v6, v11, v5

    .line 107
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v5

    goto :goto_0

    .line 112
    :cond_3
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash3(I)I

    move-result v7

    .line 113
    .local v7, "index3":I
    aget-object v8, v11, v7

    .line 114
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v7

    goto :goto_0

    .line 120
    :cond_4
    iget v10, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    .local v10, "i":I
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v12, v10, v0

    .local v12, "n":I
    :goto_1
    if-ge v10, v12, :cond_6

    .line 121
    aget-object v0, v11, v10

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v10

    goto :goto_0

    .line 120
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 128
    :cond_6
    if-nez v4, :cond_7

    .line 129
    aput-object p1, v11, v3

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v3

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_0

    .line 135
    :cond_7
    if-nez v6, :cond_8

    .line 136
    aput-object p1, v11, v5

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v5

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_0

    .line 142
    :cond_8
    if-nez v8, :cond_9

    .line 143
    aput-object p1, v11, v7

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aput p2, v0, v7

    .line 145
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto/16 :goto_0

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 149
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->push(Ljava/lang/Object;FILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    .line 154
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<TK;>;"
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->key:Ljava/lang/Object;

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->value:F

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->put(Ljava/lang/Object;F)V

    goto :goto_0

    .line 155
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<TK;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;F)F
    .locals 5
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 328
    .local v0, "hashCode":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->mask:I

    and-int v1, v0, v3

    .line 329
    .local v1, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 331
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v2, v3, v1

    .line 332
    .local v2, "oldValue":F
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 352
    .end local v2    # "oldValue":F
    :goto_0
    return v2

    .line 336
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash2(I)I

    move-result v1

    .line 337
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 339
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v2, v3, v1

    .line 340
    .restart local v2    # "oldValue":F
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    goto :goto_0

    .line 344
    .end local v2    # "oldValue":F
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->hash3(I)I

    move-result v1

    .line 345
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 347
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v2, v3, v1

    .line 348
    .restart local v2    # "oldValue":F
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    goto :goto_0

    .line 352
    .end local v2    # "oldValue":F
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->removeStash(Ljava/lang/Object;F)F

    move-result v2

    goto :goto_0
.end method

.method removeStash(Ljava/lang/Object;F)F
    .locals 5
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 357
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 358
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v3, v4, v0

    .line 360
    .local v3, "oldValue":F
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->removeStashIndex(I)V

    .line 361
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 365
    .end local v3    # "oldValue":F
    :goto_1
    return v3

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, p2

    .line 365
    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 370
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    .line 371
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->stashSize:I

    add-int v0, v1, v2

    .line 372
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    aget v2, v2, v0

    aput v2, v1, p1

    .line 376
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 381
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
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

    .line 382
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    .line 383
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->capacity:I

    if-gt v0, p1, :cond_2

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 385
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/16 v7, 0x3d

    .line 490
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    if-nez v6, :cond_0

    const-string v6, "{}"

    .line 513
    :goto_0
    return-object v6

    .line 491
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 492
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 493
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 494
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    .line 495
    .local v5, "valueTable":[F
    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .line 496
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 497
    aget-object v3, v4, v1

    .line 498
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 499
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 500
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 501
    aget v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 504
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 505
    aget-object v3, v4, v1

    .line 506
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 507
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 508
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 509
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 510
    aget v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 511
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 512
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 513
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;
    .locals 3

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    .line 544
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->reset()V

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 550
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    .line 555
    :goto_0
    return-object v0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->reset()V

    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 554
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values1:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;->valid:Z

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->values2:Lcom/badlogic/gdx/utils/ObjectFloatMap$Values;

    goto :goto_0
.end method
