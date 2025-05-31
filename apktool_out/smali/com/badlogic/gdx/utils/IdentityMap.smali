.class public Lcom/badlogic/gdx/utils/IdentityMap;
.super Ljava/lang/Object;
.source "IdentityMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IdentityMap$Keys;,
        Lcom/badlogic/gdx/utils/IdentityMap$Values;,
        Lcom/badlogic/gdx/utils/IdentityMap$Entries;,
        Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IdentityMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

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

.field private values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 61
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 62
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 66
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
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

    .line 68
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

    .line 69
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 71
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

    .line 72
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 77
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IdentityMap;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 88
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 91
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
    .line 433
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 434
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 435
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    .line 436
    :goto_1
    return v3

    .line 434
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 305
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 306
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, v3, v0

    .line 307
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p2

    .line 305
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 494
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 495
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 499
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 500
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .param p3, "index1"    # I
    .param p5, "index2"    # I
    .param p7, "index3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;ITK;ITK;ITK;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 194
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v7, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 195
    .local v7, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 200
    .local v5, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 203
    .local v6, "pushIterations":I
    :goto_0
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 217
    move-object/from16 v0, p8

    .line 218
    .local v0, "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p7

    .line 219
    .local v1, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p7

    .line 220
    aput-object p2, v7, p7

    .line 225
    :goto_1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 226
    .local v2, "hashCode":I
    and-int p3, v2, v5

    .line 227
    aget-object p4, v4, p3

    .line 228
    if-nez p4, :cond_1

    .line 229
    aput-object v0, v4, p3

    .line 230
    aput-object v1, v7, p3

    .line 231
    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 260
    :cond_0
    :goto_2
    return-void

    .line 205
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "hashCode":I
    :pswitch_0
    move-object v0, p4

    .line 206
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p3

    .line 207
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p3

    .line 208
    aput-object p2, v7, p3

    goto :goto_1

    .line 211
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move-object/from16 v0, p6

    .line 212
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p5

    .line 213
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p5

    .line 214
    aput-object p2, v7, p5

    goto :goto_1

    .line 235
    .restart local v2    # "hashCode":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result p5

    .line 236
    aget-object p6, v4, p5

    .line 237
    if-nez p6, :cond_2

    .line 238
    aput-object v0, v4, p5

    .line 239
    aput-object v1, v7, p5

    .line 240
    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_2

    .line 244
    :cond_2
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result p7

    .line 245
    aget-object p8, v4, p7

    .line 246
    if-nez p8, :cond_3

    .line 247
    aput-object v0, v4, p7

    .line 248
    aput-object v1, v7, p7

    .line 249
    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_2

    .line 253
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_4

    .line 259
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->putStash(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_4
    move-object p1, v0

    .line 256
    move-object p2, v1

    .line 257
    goto/16 :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    .line 162
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v3, v9, v0

    .line 163
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v0, v3

    .line 164
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_1

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 167
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v5

    .line 172
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v6, v0, v5

    .line 173
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    if-nez v6, :cond_2

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v7

    .line 181
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v8, v0, v7

    .line 182
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    if-nez v8, :cond_3

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 189
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private putStash(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 265
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v1, v2

    .line 271
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 272
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 273
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 274
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 11
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v10, 0x0

    .line 467
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v6, v7

    .line 469
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 470
    int-to-float v6, p1

    iget v7, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 471
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 473
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

    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 474
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

    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 476
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 477
    .local v3, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 479
    .local v5, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 480
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 482
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 483
    .local v4, "oldSize":I
    iput v10, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 484
    iput v10, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 485
    if-lez v4, :cond_1

    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 487
    aget-object v1, v3, v0

    .line 488
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    aget-object v6, v5, v0

    invoke-direct {p0, v1, v6}, Lcom/badlogic/gdx/utils/IdentityMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 388
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-nez v4, :cond_0

    .line 397
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 390
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 391
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

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

    .line 392
    aput-object v7, v2, v0

    .line 393
    aput-object v7, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 395
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 396
    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    goto :goto_0
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 379
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap;->clear()V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 384
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

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
    .line 420
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 421
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v0, v2

    .line 422
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 423
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 424
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 425
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 426
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    .line 429
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v4, 0x1

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 405
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_1

    .line 406
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 407
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v5, v6

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 408
    aget-object v5, v2, v0

    if-eqz v5, :cond_4

    aget-object v5, v3, v0

    if-nez v5, :cond_4

    .line 416
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_0
    :goto_1
    return v4

    .line 409
    .end local v0    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 410
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 411
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 413
    .end local v1    # "i":I
    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 414
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 416
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .restart local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_4
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 462
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int v0, v1, p1

    .line 463
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 464
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IdentityMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    .line 539
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->reset()V

    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 545
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    .line 550
    :goto_0
    return-object v0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->reset()V

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 550
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    goto :goto_0
.end method

.method public findKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TK;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 445
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_0

    .line 446
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 447
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v4, v5

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 448
    aget-object v4, v2, v0

    if-eqz v4, :cond_5

    aget-object v4, v3, v0

    if-nez v4, :cond_5

    aget-object v4, v2, v0

    .line 456
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :goto_1
    return-object v4

    .line 449
    .end local v0    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 450
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 451
    aget-object v4, v3, v0

    if-ne v4, p1, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v4, v0

    goto :goto_1

    .line 453
    .end local v0    # "i":I
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 454
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v4, v0

    goto :goto_1

    .line 456
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .end local v1    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_5
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 279
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v0, v2

    .line 280
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 281
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 283
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/utils/IdentityMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 287
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 292
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v0, v2

    .line 293
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 294
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 295
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 296
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 300
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap;->entries()Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IdentityMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    .line 577
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->reset()V

    .line 581
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    .line 588
    :goto_0
    return-object v0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->reset()V

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 587
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v11, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 98
    .local v11, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    .line 99
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v3, v9, v0

    .line 100
    .local v3, "index1":I
    aget-object v4, v11, v3

    .line 101
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    if-ne v4, p1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v3

    .line 103
    .local v13, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 155
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v13

    .line 107
    :cond_1
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v5

    .line 108
    .local v5, "index2":I
    aget-object v6, v11, v5

    .line 109
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    if-ne v6, p1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v5

    .line 111
    .restart local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_0

    .line 115
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v7

    .line 116
    .local v7, "index3":I
    aget-object v8, v11, v7

    .line 117
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    if-ne v8, p1, :cond_3

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v7

    .line 119
    .restart local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    goto :goto_0

    .line 124
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    iget v10, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v10, "i":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v12, v10, v0

    .local v12, "n":I
    :goto_1
    if-ge v10, v12, :cond_5

    .line 125
    aget-object v0, v11, v10

    if-ne v0, p1, :cond_4

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v10

    .line 127
    .restart local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v10

    goto :goto_0

    .line 124
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 133
    :cond_5
    if-nez v4, :cond_7

    .line 134
    aput-object p1, v11, v3

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 137
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 140
    :cond_7
    if-nez v6, :cond_9

    .line 141
    aput-object p1, v11, v5

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 144
    :cond_8
    const/4 v13, 0x0

    goto :goto_0

    .line 147
    :cond_9
    if-nez v8, :cond_b

    .line 148
    aput-object p1, v11, v7

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_a

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 151
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 154
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 155
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 311
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 312
    .local v0, "hashCode":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v0, v3

    .line 313
    .local v1, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 314
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 315
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 316
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 317
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 339
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v2

    .line 321
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 322
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 323
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 324
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 325
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 326
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0

    .line 330
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 331
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_2

    .line 332
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 333
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 334
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 335
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0

    .line 339
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method removeStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 344
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 345
    aget-object v4, v1, v0

    if-ne v4, p1, :cond_0

    .line 346
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 347
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStashIndex(I)V

    .line 348
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 352
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v3

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 357
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 358
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v1, v2

    .line 359
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 361
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 362
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, p1

    goto :goto_0
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 370
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
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

    .line 371
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 372
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    if-gt v0, p1, :cond_2

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 374
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/16 v7, 0x3d

    .line 504
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-nez v6, :cond_0

    const-string v6, "[]"

    .line 527
    :goto_0
    return-object v6

    .line 505
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 506
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 507
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 508
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 509
    .local v5, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .line 510
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 511
    aget-object v3, v4, v1

    .line 512
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 513
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 514
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 515
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 518
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 519
    aget-object v3, v4, v1

    .line 520
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 521
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 522
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 523
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 524
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 525
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 526
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x5d

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 527
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public values()Lcom/badlogic/gdx/utils/IdentityMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    .line 558
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;->reset()V

    .line 562
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 563
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    .line 569
    :goto_0
    return-object v0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;->reset()V

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 568
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 569
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    goto :goto_0
.end method
