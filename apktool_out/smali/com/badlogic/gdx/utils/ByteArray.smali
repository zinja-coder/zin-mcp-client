.class public Lcom/badlogic/gdx/utils/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field public items:[B

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ByteArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ByteArray;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    .line 46
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 47
    return-void
.end method

.method public constructor <init>(Z[BII)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "array"    # [B
    .param p3, "startIndex"    # I
    .param p4, "count"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "array"    # [B

    .prologue
    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(Z[BII)V

    .line 63
    return-void
.end method

.method public static varargs with([B)Lcom/badlogic/gdx/utils/ByteArray;
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 351
    new-instance v0, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ByteArray;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 77
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 78
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aput-byte p1, v0, v1

    .line 79
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ByteArray;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ByteArray;

    .prologue
    .line 82
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->addAll(Lcom/badlogic/gdx/utils/ByteArray;II)V

    .line 83
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ByteArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ByteArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 86
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-le v0, v1, :cond_0

    .line 87
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

    iget v2, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/ByteArray;->addAll([BII)V

    .line 89
    return-void
.end method

.method public varargs addAll([B)V
    .locals 2
    .param p1, "array"    # [B

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->addAll([BII)V

    .line 93
    return-void
.end method

.method public addAll([BII)V
    .locals 5
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 97
    .local v0, "items":[B
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int v1, v2, p3

    .line 98
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 99
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 243
    return-void
.end method

.method public contains(B)Z
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 145
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 146
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .local v2, "items":[B
    move v1, v0

    .line 147
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 148
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v3, v2, v1

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    .line 149
    :goto_1
    return v3

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public ensureCapacity(I)[B
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 257
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int v0, v1, p1

    .line 258
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 313
    if-ne p1, p0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v3

    .line 314
    :cond_1
    instance-of v5, p1, Lcom/badlogic/gdx/utils/ByteArray;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 315
    check-cast v0, Lcom/badlogic/gdx/utils/ByteArray;

    .line 316
    .local v0, "array":Lcom/badlogic/gdx/utils/ByteArray;
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 317
    .local v2, "n":I
    iget v5, v0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-eq v2, v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 318
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 319
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v5, v5, v1

    iget-object v6, v0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v6, v6, v1

    if-eq v5, v6, :cond_4

    move v3, v4

    goto :goto_0

    .line 318
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public first()B
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public get(I)B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public incr(IB)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 114
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v1, v0, p1

    add-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 116
    return-void
.end method

.method public indexOf(B)I
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 154
    .local v1, "items":[B
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 155
    aget-byte v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 156
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 154
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public insert(IB)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 124
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index can\'t be > size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 126
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 127
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-eqz v1, :cond_2

    .line 128
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 132
    aput-byte p2, v0, p1

    .line 133
    return-void

    .line 130
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aget-byte v2, v0, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public lastIndexOf(B)I
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 161
    .local v1, "items":[B
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 162
    aget-byte v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 163
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 161
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public mul(IB)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 119
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v1, v0, p1

    mul-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 121
    return-void
.end method

.method public peek()B
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public pop()B
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public random()B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 302
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-byte v0, v1, v0

    goto :goto_0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/ByteArray;)Z
    .locals 8
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ByteArray;

    .prologue
    .line 209
    iget v5, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 210
    .local v5, "size":I
    move v6, v5

    .line 211
    .local v6, "startSize":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 212
    .local v3, "items":[B
    const/4 v0, 0x0

    .local v0, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 213
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ByteArray;->get(I)B

    move-result v2

    .line 214
    .local v2, "item":I
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 215
    aget-byte v7, v3, v1

    if-ne v2, v7, :cond_1

    .line 216
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->removeIndex(I)I

    .line 217
    add-int/lit8 v5, v5, -0x1

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    .end local v1    # "ii":I
    .end local v2    # "item":I
    :cond_2
    if-eq v5, v6, :cond_3

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public removeIndex(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 179
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index can\'t be >= size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 181
    .local v0, "items":[B
    aget-byte v1, v0, p1

    .line 182
    .local v1, "value":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 183
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-eqz v2, :cond_1

    .line 184
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :goto_0
    return v1

    .line 186
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aget-byte v2, v0, v2

    aput-byte v2, v0, p1

    goto :goto_0
.end method

.method public removeRange(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 192
    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p2, v4, :cond_0

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end can\'t be >= size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_0
    if-le p1, p2, :cond_1

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start can\'t be > end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 195
    .local v2, "items":[B
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 196
    .local v0, "count":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-eqz v4, :cond_3

    .line 197
    add-int v4, p1, v0

    iget v5, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {v2, v4, v2, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 204
    return-void

    .line 199
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v3, v4, -0x1

    .line 200
    .local v3, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 201
    add-int v4, p1, v1

    sub-int v5, v3, v1

    aget-byte v5, v2, v5

    aput-byte v5, v2, v4

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeValue(B)Z
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 167
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 168
    .local v1, "items":[B
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 169
    aget-byte v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ByteArray;->removeIndex(I)I

    .line 171
    const/4 v3, 0x1

    .line 174
    :goto_1
    return v3

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected resize(I)[B
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 263
    new-array v1, p1, [B

    .line 264
    .local v1, "newItems":[B
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 265
    .local v0, "items":[B
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 267
    return-object v1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 275
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 276
    .local v2, "items":[B
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "lastIndex":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    div-int/lit8 v4, v6, 0x2

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 277
    sub-int v1, v3, v0

    .line 278
    .local v1, "ii":I
    aget-byte v5, v2, v0

    .line 279
    .local v5, "temp":B
    aget-byte v6, v2, v1

    aput-byte v6, v2, v0

    .line 280
    aput-byte v5, v2, v1

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "ii":I
    .end local v5    # "temp":B
    :cond_0
    return-void
.end method

.method public set(IB)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 109
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aput-byte p2, v0, p1

    .line 111
    return-void
.end method

.method public shrink()[B
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 286
    .local v2, "items":[B
    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 287
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 288
    .local v1, "ii":I
    aget-byte v3, v2, v0

    .line 289
    .local v3, "temp":B
    aget-byte v4, v2, v1

    aput-byte v4, v2, v0

    .line 290
    aput-byte v3, v2, v1

    .line 286
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 292
    .end local v1    # "ii":I
    .end local v3    # "temp":B
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([BII)V

    .line 272
    return-void
.end method

.method public swap(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 136
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first can\'t be >= size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lt p2, v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "second can\'t be >= size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 139
    .local v1, "items":[B
    aget-byte v0, v1, p1

    .line 140
    .local v0, "firstValue":B
    aget-byte v2, v1, p2

    aput-byte v2, v1, p1

    .line 141
    aput-byte v0, v1, p2

    .line 142
    return-void
.end method

.method public toArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    new-array v0, v1, [B

    .line 308
    .local v0, "array":[B
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 334
    :goto_0
    return-object v3

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 326
    .local v2, "items":[B
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 327
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 328
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 329
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge v1, v3, :cond_1

    .line 330
    const-string v3, ", "

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 331
    aget-byte v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 334
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 338
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 346
    :goto_0
    return-object v3

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 340
    .local v2, "items":[B
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 341
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 342
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge v1, v3, :cond_1

    .line 343
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 344
    aget-byte v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .prologue
    .line 297
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 298
    :cond_0
    return-void
.end method
