.class public Lcom/badlogic/gdx/utils/ObjectMap;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectMap$Entry;
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
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

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

.field private values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 61
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
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

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

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
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    .line 73
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    .line 76
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->pushIterations:I

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<+TK;+TV;>;"
    const/4 v3, 0x0

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 87
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

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
    .line 451
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 452
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 453
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 454
    :goto_1
    return v3

    .line 452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 302
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 303
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 304
    :goto_1
    return-object v3

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
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
    .line 322
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 323
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 324
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, v3, v0

    .line 325
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p2

    .line 323
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 512
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 513
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 517
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 518
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

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
    .line 203
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 204
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v7, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 205
    .local v7, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    .line 210
    .local v5, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->pushIterations:I

    .line 213
    .local v6, "pushIterations":I
    :goto_0
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 227
    move-object/from16 v0, p8

    .line 228
    .local v0, "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p7

    .line 229
    .local v1, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p7

    .line 230
    aput-object p2, v7, p7

    .line 235
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 236
    .local v2, "hashCode":I
    and-int p3, v2, v5

    .line 237
    aget-object p4, v4, p3

    .line 238
    if-nez p4, :cond_1

    .line 239
    aput-object v0, v4, p3

    .line 240
    aput-object v1, v7, p3

    .line 241
    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 270
    :cond_0
    :goto_2
    return-void

    .line 215
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "hashCode":I
    :pswitch_0
    move-object v0, p4

    .line 216
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p3

    .line 217
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p3

    .line 218
    aput-object p2, v7, p3

    goto :goto_1

    .line 221
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move-object/from16 v0, p6

    .line 222
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p5

    .line 223
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p5

    .line 224
    aput-object p2, v7, p5

    goto :goto_1

    .line 245
    .restart local v2    # "hashCode":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result p5

    .line 246
    aget-object p6, v4, p5

    .line 247
    if-nez p6, :cond_2

    .line 248
    aput-object v0, v4, p5

    .line 249
    aput-object v1, v7, p5

    .line 250
    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    goto :goto_2

    .line 254
    :cond_2
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result p7

    .line 255
    aget-object p8, v4, p7

    .line 256
    if-nez p8, :cond_3

    .line 257
    aput-object v0, v4, p7

    .line 258
    aput-object v1, v7, p7

    .line 259
    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    goto :goto_2

    .line 263
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_4

    .line 269
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->putStash(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 265
    :cond_4
    move-object p1, v0

    .line 266
    move-object p2, v1

    .line 267
    goto/16 :goto_0

    .line 213
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
    .line 171
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 172
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v3, v9, v0

    .line 173
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v0, v3

    .line 174
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_1

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v5

    .line 182
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v6, v0, v5

    .line 183
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    if-nez v6, :cond_2

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v7

    .line 191
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v8, v0, v7

    .line 192
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    if-nez v8, :cond_3

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 195
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 199
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

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
    .line 273
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 275
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put_internal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v0, v1, v2

    .line 281
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 283
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 284
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    goto :goto_0
.end method

.method private put_internal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v11, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 102
    .local v11, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 103
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v3, v9, v0

    .line 104
    .local v3, "index1":I
    aget-object v4, v11, v3

    .line 105
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v3

    .line 107
    .local v13, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 159
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v13

    .line 111
    :cond_0
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v5

    .line 112
    .local v5, "index2":I
    aget-object v6, v11, v5

    .line 113
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v5

    .line 115
    .restart local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_0

    .line 119
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v7

    .line 120
    .local v7, "index3":I
    aget-object v8, v11, v7

    .line 121
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v7

    .line 123
    .restart local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    goto :goto_0

    .line 128
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    iget v10, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v10, "i":I
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v12, v10, v0

    .local v12, "n":I
    :goto_1
    if-ge v10, v12, :cond_4

    .line 129
    aget-object v0, v11, v10

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v13, v0, v10

    .line 131
    .restart local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v10

    goto :goto_0

    .line 128
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 137
    :cond_4
    if-nez v4, :cond_6

    .line 138
    aput-object p1, v11, v3

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 140
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 141
    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    .line 144
    :cond_6
    if-nez v6, :cond_8

    .line 145
    aput-object p1, v11, v5

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 147
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 148
    :cond_7
    const/4 v13, 0x0

    goto :goto_0

    .line 151
    :cond_8
    if-nez v8, :cond_a

    .line 152
    aput-object p1, v11, v7

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 154
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 155
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 158
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 159
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private resize(I)V
    .locals 11
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v10, 0x0

    .line 485
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v2, v6, v7

    .line 487
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .line 488
    int-to-float v6, p1

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    .line 489
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    .line 491
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

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    .line 492
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

    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->pushIterations:I

    .line 494
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 495
    .local v3, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 497
    .local v5, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 498
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 500
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 501
    .local v4, "oldSize":I
    iput v10, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 502
    iput v10, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 503
    if-lez v4, :cond_1

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 505
    aget-object v1, v3, v0

    .line 506
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    aget-object v6, v5, v0

    invoke-direct {p0, v1, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "braces"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/16 v7, 0x3d

    .line 530
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-nez v6, :cond_1

    if-eqz p2, :cond_0

    const-string v6, "{}"

    .line 553
    :goto_0
    return-object v6

    .line 530
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 531
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 532
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    if-eqz p2, :cond_2

    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 533
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 534
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 535
    .local v5, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .line 536
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_7

    .line 537
    aget-object v3, v4, v1

    .line 538
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 539
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 540
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 541
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 544
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_5

    .line 545
    aget-object v3, v4, v1

    .line 546
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_4

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 547
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 548
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 549
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 550
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 551
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 552
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v1    # "i":I
    :cond_5
    if-eqz p2, :cond_6

    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 553
    :cond_6
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_7
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 406
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-nez v4, :cond_0

    .line 415
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 408
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 409
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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

    .line 410
    aput-object v7, v2, v0

    .line 411
    aput-object v7, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 413
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 414
    iput v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    goto :goto_0
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 397
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 402
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

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
    .line 438
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 439
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v1, v0, v2

    .line 440
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 442
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 444
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    .line 447
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
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v4, 0x1

    .line 422
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 423
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_1

    .line 424
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 425
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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

    .line 426
    aget-object v5, v2, v0

    if-eqz v5, :cond_4

    aget-object v5, v3, v0

    if-nez v5, :cond_4

    .line 434
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_0
    :goto_1
    return v4

    .line 427
    .end local v0    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 428
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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

    .line 429
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 431
    .end local v1    # "i":I
    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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

    .line 432
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 434
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
    .line 480
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int v0, v1, p1

    .line 481
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 565
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 569
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 576
    :goto_0
    return-object v0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

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
    .line 462
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 463
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_0

    .line 464
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 465
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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

    .line 466
    aget-object v4, v2, v0

    if-eqz v4, :cond_5

    aget-object v4, v3, v0

    if-nez v4, :cond_5

    aget-object v4, v2, v0

    .line 474
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :goto_1
    return-object v4

    .line 467
    .end local v0    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 468
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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

    .line 469
    aget-object v4, v3, v0

    if-ne v4, p1, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v4, v0

    goto :goto_1

    .line 471
    .end local v0    # "i":I
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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

    .line 472
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v4, v0

    goto :goto_1

    .line 474
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
    .line 288
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 289
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v1, v0, v2

    .line 290
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 294
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->getStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 297
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

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
    .line 309
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 310
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v1, v0, v2

    .line 311
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 313
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 315
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 318
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 603
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 614
    :goto_0
    return-object v0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put_internal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v2, p1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->ensureCapacity(I)V

    .line 164
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 165
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<TK;TV;>;"
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 330
    .local v0, "hashCode":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v1, v0, v3

    .line 331
    .local v1, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 333
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 334
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 335
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 357
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v2

    .line 339
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 340
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 342
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 343
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 344
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    goto :goto_0

    .line 348
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 349
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 351
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 352
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 353
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    goto :goto_0

    .line 357
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->removeStash(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 361
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 362
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 363
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 365
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->removeStashIndex(I)V

    .line 366
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 370
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v3

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 375
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 376
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int v0, v1, v2

    .line 377
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 379
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 380
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, p1

    goto :goto_0
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 388
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
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

    .line 389
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 390
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    if-gt v0, p1, :cond_2

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 392
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const-string v0, ", "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 522
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 584
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 595
    :goto_0
    return-object v0

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    goto :goto_0
.end method
