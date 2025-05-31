.class public Lcom/badlogic/gdx/utils/ObjectSet;
.super Ljava/lang/Object;
.source "ObjectSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private hashShift:I

.field private iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

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
    .line 51
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 57
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 62
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
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

    .line 64
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

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .line 67
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

    .line 68
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    .line 70
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    .line 71
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 72
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    .line 73
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 4
    .param p1, "set"    # Lcom/badlogic/gdx/utils/ObjectSet;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const/4 v3, 0x0

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 82
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 83
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 85
    return-void
.end method

.method private addResize(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 164
    .local v8, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v2, v8, v0

    .line 165
    .local v2, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v3, v0, v2

    .line 166
    .local v3, "key1":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_1

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v4

    .line 173
    .local v4, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v5, v0, v4

    .line 174
    .local v5, "key2":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_2

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v6

    .line 181
    .local v6, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v7, v0, v6

    .line 182
    .local v7, "key3":Ljava/lang/Object;, "TT;"
    if-nez v7, :cond_3

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v6

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 188
    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/ObjectSet;->push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addStash(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 252
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v0, v1, v2

    .line 258
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 259
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 260
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    goto :goto_0
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 353
    .local v1, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 354
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 355
    :goto_1
    return v3

    .line 353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 398
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 399
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 403
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 404
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .param p2, "index1"    # I
    .param p4, "index2"    # I
    .param p6, "index3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITT;ITT;ITT;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TT;"
    .local p3, "key1":Ljava/lang/Object;, "TT;"
    .local p5, "key2":Ljava/lang/Object;, "TT;"
    .local p7, "key3":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 193
    .local v3, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 197
    .local v4, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    .line 200
    .local v5, "pushIterations":I
    :goto_0
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 210
    move-object v0, p7

    .line 211
    .local v0, "evictedKey":Ljava/lang/Object;, "TT;"
    aput-object p1, v3, p6

    .line 216
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 217
    .local v1, "hashCode":I
    and-int p2, v1, v4

    .line 218
    aget-object p3, v3, p2

    .line 219
    if-nez p3, :cond_1

    .line 220
    aput-object v0, v3, p2

    .line 221
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v6, v7, :cond_0

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 247
    :cond_0
    :goto_2
    return-void

    .line 202
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TT;"
    .end local v1    # "hashCode":I
    :pswitch_0
    move-object v0, p3

    .line 203
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TT;"
    aput-object p1, v3, p2

    goto :goto_1

    .line 206
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TT;"
    :pswitch_1
    move-object v0, p5

    .line 207
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TT;"
    aput-object p1, v3, p4

    goto :goto_1

    .line 225
    .restart local v1    # "hashCode":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result p4

    .line 226
    aget-object p5, v3, p4

    .line 227
    if-nez p5, :cond_2

    .line 228
    aput-object v0, v3, p4

    .line 229
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v6, v7, :cond_0

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    goto :goto_2

    .line 233
    :cond_2
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result p6

    .line 234
    aget-object p7, v3, p6

    .line 235
    if-nez p7, :cond_3

    .line 236
    aput-object v0, v3, p6

    .line 237
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v6, v7, :cond_0

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    goto :goto_2

    .line 241
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    .line 246
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->addStash(Ljava/lang/Object;)V

    goto :goto_2

    .line 243
    :cond_4
    move-object p1, v0

    .line 244
    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resize(I)V
    .locals 9
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const/4 v8, 0x0

    .line 373
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v2, v5, v6

    .line 375
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .line 376
    int-to-float v5, p1

    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    .line 377
    add-int/lit8 v5, p1, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    .line 379
    const/4 v5, 0x3

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    .line 380
    const/16 v5, 0x8

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    div-int/lit8 v6, v6, 0x8

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    .line 382
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 384
    .local v3, "oldKeyTable":[Ljava/lang/Object;, "[TT;"
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    add-int/2addr v5, p1

    new-array v5, v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 386
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 387
    .local v4, "oldSize":I
    iput v8, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 388
    iput v8, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 389
    if-lez v4, :cond_1

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 391
    aget-object v1, v3, v0

    .line 392
    .local v1, "key":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->addResize(Ljava/lang/Object;)V

    .line 390
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/ObjectSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    .line 452
    .local v0, "set":Lcom/badlogic/gdx/utils/ObjectSet;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;)V

    .line 453
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 90
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v10, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 94
    .local v10, "keyTable":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 95
    .local v8, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v2, v8, v1

    .line 96
    .local v2, "index1":I
    aget-object v3, v10, v2

    .line 97
    .local v3, "key1":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v4

    .line 100
    .local v4, "index2":I
    aget-object v5, v10, v4

    .line 101
    .local v5, "key2":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v6

    .line 104
    .local v6, "index3":I
    aget-object v7, v10, v6

    .line 105
    .local v7, "key3":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget v9, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .local v9, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v11, v9, v1

    .local v11, "n":I
    :goto_1
    if-ge v9, v11, :cond_3

    .line 109
    aget-object v1, v10, v9

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 112
    :cond_3
    if-nez v3, :cond_5

    .line 113
    aput-object p1, v10, v2

    .line 114
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_4
    move v0, v12

    .line 115
    goto :goto_0

    .line 118
    :cond_5
    if-nez v5, :cond_7

    .line 119
    aput-object p1, v10, v4

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_6
    move v0, v12

    .line 121
    goto :goto_0

    .line 124
    :cond_7
    if-nez v7, :cond_9

    .line 125
    aput-object p1, v10, v6

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_8
    move v0, v12

    .line 127
    goto :goto_0

    :cond_9
    move-object v0, p0

    move-object v1, p1

    .line 130
    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/ObjectSet;->push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    move v0, v12

    .line 131
    goto :goto_0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 136
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;II)V
    .locals 3
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v0, v1, :cond_0

    .line 140
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

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    .line 142
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v2, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    .line 156
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v1    # "key":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    .line 146
    return-void
.end method

.method public addAll([Ljava/lang/Object;II)V
    .locals 3
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    .line 150
    move v0, p2

    .local v0, "i":I
    add-int v1, v0, p3

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 151
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const/4 v5, 0x0

    .line 330
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v3, :cond_0

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 332
    .local v2, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

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

    .line 333
    const/4 v3, 0x0

    aput-object v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 334
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 335
    iput v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    goto :goto_0
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 321
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    if-gt v0, p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 326
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 340
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v1, v0, v2

    .line 341
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v1

    .line 345
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    .line 348
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 368
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int v0, v1, p1

    .line 369
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 370
    :cond_0
    return-void
.end method

.method public first()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 360
    .local v1, "keyTable":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v2, v3, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 361
    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    aget-object v3, v1, v0

    return-object v3

    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "IntSet is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 436
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 447
    :goto_0
    return-object v0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 266
    .local v0, "hashCode":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v1, v0, v3

    .line 267
    .local v1, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 269
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 287
    :goto_0
    return v2

    .line 273
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 274
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 276
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    goto :goto_0

    .line 280
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v1

    .line 281
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 283
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->removeStash(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method removeStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 292
    .local v1, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 293
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->removeStashIndex(I)V

    .line 295
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 296
    const/4 v3, 0x1

    .line 299
    :goto_1
    return v3

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 304
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 305
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int v0, v1, v2

    .line 306
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 307
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 312
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
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

    .line 313
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 314
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    if-gt v0, p1, :cond_2

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 316
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 412
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v5, :cond_0

    const-string v5, ""

    .line 428
    :goto_0
    return-object v5

    .line 413
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 414
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 415
    .local v4, "keyTable":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .line 416
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 417
    aget-object v3, v4, v1

    .line 418
    .local v3, "key":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 419
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 422
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TT;"
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 423
    aget-object v3, v4, v1

    .line 424
    .restart local v3    # "key":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 425
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 426
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v1

    .line 427
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 428
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TT;"
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method
