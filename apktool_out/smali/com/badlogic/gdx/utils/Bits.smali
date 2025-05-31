.class public Lcom/badlogic/gdx/utils/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# instance fields
.field bits:[J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "nbits"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 36
    ushr-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 37
    return-void
.end method

.method private checkCapacity(I)V
    .locals 4
    .param p1, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 89
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [J

    .line 90
    .local v0, "newBits":[J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 93
    .end local v0    # "newBits":[J
    :cond_0
    return-void
.end method


# virtual methods
.method public and(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .prologue
    .line 210
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v0, v1, :cond_0

    .line 212
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v1

    iget-object v6, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v6, v1

    and-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    if-le v3, v0, :cond_1

    .line 216
    move v1, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v3

    .local v2, "s":I
    :goto_1
    if-le v2, v1, :cond_1

    .line 217
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .end local v2    # "s":I
    :cond_1
    return-void
.end method

.method public andNot(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 10
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v3

    .local v1, "j":I
    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v3

    .local v2, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    .line 227
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v6, v0

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 106
    .local v0, "bits":[J
    array-length v2, v0

    .line 107
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 108
    const-wide/16 v4, 0x0

    aput-wide v4, v0, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 98
    ushr-int/lit8 v0, p1, 0x6

    .line 99
    .local v0, "word":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-int/lit8 v6, p1, 0x3f

    shl-long/2addr v4, v6

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0
.end method

.method public containsAll(Lcom/badlogic/gdx/utils/Bits;)Z
    .locals 10
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .prologue
    const/4 v5, 0x0

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 297
    .local v0, "bits":[J
    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 298
    .local v3, "otherBits":[J
    array-length v4, v3

    .line 299
    .local v4, "otherBitsLength":I
    array-length v1, v0

    .line 301
    .local v1, "bitsLength":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 302
    aget-wide v6, v3, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 311
    :cond_0
    :goto_1
    return v5

    .line 301
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_2
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 307
    aget-wide v6, v0, v2

    aget-wide v8, v3, v2

    and-long/2addr v6, v8

    aget-wide v8, v3, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 306
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 311
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 326
    if-ne p0, p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v4

    .line 328
    :cond_1
    if-nez p1, :cond_2

    move v4, v5

    .line 329
    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 331
    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 333
    check-cast v2, Lcom/badlogic/gdx/utils/Bits;

    .line 334
    .local v2, "other":Lcom/badlogic/gdx/utils/Bits;
    iget-object v3, v2, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 336
    .local v3, "otherBits":[J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v6, v6

    array-length v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 337
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-le v0, v1, :cond_5

    .line 338
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v6, v1

    aget-wide v8, v3, v1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    move v4, v5

    .line 339
    goto :goto_0

    .line 337
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
    :cond_5
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v6, v6

    array-length v7, v3

    if-eq v6, v7, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v7

    if-eq v6, v7, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public flip(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 82
    ushr-int/lit8 v0, p1, 0x6

    .line 83
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-int/lit8 v6, p1, 0x3f

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 85
    return-void
.end method

.method public get(I)Z
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    ushr-int/lit8 v0, p1, 0x6

    .line 44
    .local v0, "word":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x1

    and-int/lit8 v6, p1, 0x3f

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAndClear(I)Z
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    ushr-int/lit8 v2, p1, 0x6

    .line 54
    .local v2, "word":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v3

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v0, v4, v2

    .line 56
    .local v0, "oldBits":J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v4, v2

    const-wide/16 v8, 0x1

    and-int/lit8 v5, p1, 0x3f

    shl-long/2addr v8, v5

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long/2addr v6, v8

    aput-wide v6, v4, v2

    .line 57
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v4, v2

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getAndSet(I)Z
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 65
    ushr-int/lit8 v2, p1, 0x6

    .line 66
    .local v2, "word":I
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 67
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v0, v3, v2

    .line 68
    .local v0, "oldBits":J
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x1

    and-int/lit8 v8, p1, 0x3f

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 69
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v3

    ushr-int/lit8 v2, v3, 0x6

    .line 317
    .local v2, "word":I
    const/4 v0, 0x0

    .line 318
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 319
    mul-int/lit8 v3, v0, 0x7f

    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v4, v1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v6, v1

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_0
    return v0
.end method

.method public intersects(Lcom/badlogic/gdx/utils/Bits;)Z
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 281
    .local v0, "bits":[J
    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 282
    .local v2, "otherBits":[J
    array-length v3, v0

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 283
    aget-wide v4, v0, v1

    aget-wide v6, v2, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 284
    const/4 v3, 0x1

    .line 287
    :goto_1
    return v3

    .line 282
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 287
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 139
    .local v0, "bits":[J
    array-length v2, v0

    .line 140
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 141
    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 142
    const/4 v3, 0x0

    .line 145
    :goto_1
    return v3

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public length()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 123
    .local v1, "bits":[J
    array-length v5, v1

    add-int/lit8 v4, v5, -0x1

    .local v4, "word":I
    :goto_0
    if-ltz v4, :cond_2

    .line 124
    aget-wide v2, v1, v4

    .line 125
    .local v2, "bitsAtWord":J
    cmp-long v5, v2, v8

    if-eqz v5, :cond_1

    .line 126
    const/16 v0, 0x3f

    .local v0, "bit":I
    :goto_1
    if-ltz v0, :cond_1

    .line 127
    const-wide/16 v6, 0x1

    and-int/lit8 v5, v0, 0x3f

    shl-long/2addr v6, v5

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 128
    shl-int/lit8 v5, v4, 0x6

    add-int/2addr v5, v0

    .line 133
    .end local v0    # "bit":I
    .end local v2    # "bitsAtWord":J
    :goto_2
    return v5

    .line 126
    .restart local v0    # "bit":I
    .restart local v2    # "bitsAtWord":J
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 123
    .end local v0    # "bit":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 133
    .end local v2    # "bitsAtWord":J
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public nextClearBit(I)I
    .locals 10
    .param p1, "fromIndex"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 182
    .local v0, "bits":[J
    ushr-int/lit8 v5, p1, 0x6

    .line 183
    .local v5, "word":I
    array-length v1, v0

    .line 184
    .local v1, "bitsLength":I
    if-lt v5, v1, :cond_0

    const/4 v6, -0x1

    .line 202
    :goto_0
    return v6

    .line 185
    :cond_0
    aget-wide v2, v0, v5

    .line 186
    .local v2, "bitsAtWord":J
    and-int/lit8 v4, p1, 0x3f

    .local v4, "i":I
    :goto_1
    const/16 v6, 0x40

    if-ge v4, v6, :cond_2

    .line 187
    const-wide/16 v6, 0x1

    and-int/lit8 v8, v4, 0x3f

    shl-long/2addr v6, v8

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 188
    shl-int/lit8 v6, v5, 0x6

    add-int/2addr v6, v4

    goto :goto_0

    .line 186
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_2
    if-ge v5, v1, :cond_6

    .line 192
    if-nez v5, :cond_3

    .line 193
    shl-int/lit8 v6, v5, 0x6

    goto :goto_0

    .line 195
    :cond_3
    aget-wide v2, v0, v5

    .line 196
    const/4 v4, 0x0

    :goto_3
    const/16 v6, 0x40

    if-ge v4, v6, :cond_5

    .line 197
    const-wide/16 v6, 0x1

    and-int/lit8 v8, v4, 0x3f

    shl-long/2addr v6, v8

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 198
    shl-int/lit8 v6, v5, 0x6

    add-int/2addr v6, v4

    goto :goto_0

    .line 196
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 191
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 202
    :cond_6
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public nextSetBit(I)I
    .locals 10
    .param p1, "fromIndex"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 152
    .local v0, "bits":[J
    ushr-int/lit8 v5, p1, 0x6

    .line 153
    .local v5, "word":I
    array-length v1, v0

    .line 154
    .local v1, "bitsLength":I
    if-lt v5, v1, :cond_0

    const/4 v6, -0x1

    .line 175
    :goto_0
    return v6

    .line 155
    :cond_0
    aget-wide v2, v0, v5

    .line 156
    .local v2, "bitsAtWord":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 157
    and-int/lit8 v4, p1, 0x3f

    .local v4, "i":I
    :goto_1
    const/16 v6, 0x40

    if-ge v4, v6, :cond_2

    .line 158
    const-wide/16 v6, 0x1

    and-int/lit8 v8, v4, 0x3f

    shl-long/2addr v6, v8

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 159
    shl-int/lit8 v6, v5, 0x6

    add-int/2addr v6, v4

    goto :goto_0

    .line 157
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v4    # "i":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_2
    if-ge v5, v1, :cond_5

    .line 164
    if-eqz v5, :cond_4

    .line 165
    aget-wide v2, v0, v5

    .line 166
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_4

    .line 167
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    const/16 v6, 0x40

    if-ge v4, v6, :cond_4

    .line 168
    const-wide/16 v6, 0x1

    and-int/lit8 v8, v4, 0x3f

    shl-long/2addr v6, v8

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 169
    shl-int/lit8 v6, v5, 0x6

    add-int/2addr v6, v4

    goto :goto_0

    .line 167
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 163
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 175
    :cond_5
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public numBits()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public or(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .prologue
    .line 236
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v0, v1, :cond_0

    .line 238
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v1

    iget-object v6, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v6, v1

    or-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 242
    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 243
    move v1, v0

    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v3

    .local v2, "s":I
    :goto_1
    if-le v2, v1, :cond_1

    .line 244
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v4, v1

    aput-wide v4, v3, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v2    # "s":I
    :cond_1
    return-void
.end method

.method public set(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 75
    ushr-int/lit8 v0, p1, 0x6

    .line 76
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-int/lit8 v6, p1, 0x3f

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 78
    return-void
.end method

.method public xor(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .prologue
    .line 257
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v0, v1, :cond_0

    .line 260
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v1

    iget-object v6, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v6, v1

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    if-le v3, v0, :cond_1

    .line 264
    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v3

    .local v2, "s":I
    :goto_1
    if-le v2, v1, :cond_2

    .line 265
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    .end local v2    # "s":I
    :cond_1
    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 268
    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v3, v3

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 269
    move v1, v0

    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v3

    .restart local v2    # "s":I
    :goto_2
    if-le v2, v1, :cond_2

    .line 270
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v4, v1

    aput-wide v4, v3, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 273
    .end local v2    # "s":I
    :cond_2
    return-void
.end method
