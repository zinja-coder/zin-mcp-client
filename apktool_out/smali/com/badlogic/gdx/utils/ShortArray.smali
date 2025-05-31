.class public Lcom/badlogic/gdx/utils/ShortArray;
.super Ljava/lang/Object;
.source "ShortArray.java"


# instance fields
.field public items:[S

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ShortArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    .line 46
    new-array v0, p2, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 47
    return-void
.end method

.method public constructor <init>(Z[SII)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "array"    # [S
    .param p3, "startIndex"    # I
    .param p4, "count"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([S)V
    .locals 3
    .param p1, "array"    # [S

    .prologue
    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(Z[SII)V

    .line 63
    return-void
.end method

.method public static varargs with([S)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 358
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>([S)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 78
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 79
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 80
    return-void
.end method

.method public add(S)V
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 84
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 85
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 86
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ShortArray;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;

    .prologue
    .line 89
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->addAll(Lcom/badlogic/gdx/utils/ShortArray;II)V

    .line 90
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ShortArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 93
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-le v0, v1, :cond_0

    .line 94
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

    iget v2, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 96
    return-void
.end method

.method public varargs addAll([S)V
    .locals 2
    .param p1, "array"    # [S

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 100
    return-void
.end method

.method public addAll([SII)V
    .locals 5
    .param p1, "array"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 104
    .local v0, "items":[S
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int v1, v2, p3

    .line 105
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

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 106
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 108
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 250
    return-void
.end method

.method public contains(S)Z
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 152
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 153
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .local v2, "items":[S
    move v1, v0

    .line 154
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 155
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-short v3, v2, v1

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    .line 156
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

.method public ensureCapacity(I)[S
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 264
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int v0, v1, p1

    .line 265
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 320
    if-ne p1, p0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v3

    .line 321
    :cond_1
    instance-of v5, p1, Lcom/badlogic/gdx/utils/ShortArray;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 322
    check-cast v0, Lcom/badlogic/gdx/utils/ShortArray;

    .line 323
    .local v0, "array":Lcom/badlogic/gdx/utils/ShortArray;
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 324
    .local v2, "n":I
    iget v5, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eq v2, v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 325
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 326
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v5, v5, v1

    iget-object v6, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v6, v6, v1

    if-eq v5, v6, :cond_4

    move v3, v4

    goto :goto_0

    .line 325
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public first()S
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0
.end method

.method public get(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public incr(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 121
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v1, v0, p1

    add-int/2addr v1, p2

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 123
    return-void
.end method

.method public indexOf(S)I
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 161
    .local v1, "items":[S
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 162
    aget-short v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 163
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 161
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public insert(IS)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 131
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 133
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 134
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v1, :cond_2

    .line 135
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 139
    aput-short p2, v0, p1

    .line 140
    return-void

    .line 137
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v2, v0, p1

    aput-short v2, v0, v1

    goto :goto_0
.end method

.method public lastIndexOf(C)I
    .locals 3
    .param p1, "value"    # C

    .prologue
    .line 167
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 168
    .local v1, "items":[S
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 169
    aget-short v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 170
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 168
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public mul(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 126
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v1, v0, p1

    mul-int/2addr v1, p2

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 128
    return-void
.end method

.method public peek()S
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-short v0, v0, v1

    return v0
.end method

.method public pop()S
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v0, v0, v1

    return v0
.end method

.method public random()S
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v1, :cond_0

    .line 310
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-short v0, v1, v0

    goto :goto_0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/ShortArray;)Z
    .locals 8
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;

    .prologue
    .line 216
    iget v5, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 217
    .local v5, "size":I
    move v6, v5

    .line 218
    .local v6, "startSize":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 219
    .local v3, "items":[S
    const/4 v0, 0x0

    .local v0, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 220
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v2

    .line 221
    .local v2, "item":S
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 222
    aget-short v7, v3, v1

    if-ne v2, v7, :cond_1

    .line 223
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 224
    add-int/lit8 v5, v5, -0x1

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    .end local v1    # "ii":I
    .end local v2    # "item":S
    :cond_2
    if-eq v5, v6, :cond_3

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public removeIndex(I)S
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 186
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 188
    .local v0, "items":[S
    aget-short v1, v0, p1

    .line 189
    .local v1, "value":S
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 190
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v2, :cond_1

    .line 191
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :goto_0
    return v1

    .line 193
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v2, v0, v2

    aput-short v2, v0, p1

    goto :goto_0
.end method

.method public removeRange(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 199
    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v6, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
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

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 202
    .local v2, "items":[S
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 203
    .local v0, "count":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v4, :cond_3

    .line 204
    add-int v4, p1, v0

    iget v5, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {v2, v4, v2, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 211
    return-void

    .line 206
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v3, v4, -0x1

    .line 207
    .local v3, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 208
    add-int v4, p1, v1

    sub-int v5, v3, v1

    aget-short v5, v2, v5

    aput-short v5, v2, v4

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeValue(S)Z
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 174
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 175
    .local v1, "items":[S
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 176
    aget-short v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 178
    const/4 v3, 0x1

    .line 181
    :goto_1
    return v3

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected resize(I)[S
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 270
    new-array v1, p1, [S

    .line 271
    .local v1, "newItems":[S
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 272
    .local v0, "items":[S
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 274
    return-object v1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 283
    .local v2, "items":[S
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "lastIndex":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    div-int/lit8 v4, v6, 0x2

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 284
    sub-int v1, v3, v0

    .line 285
    .local v1, "ii":I
    aget-short v5, v2, v0

    .line 286
    .local v5, "temp":S
    aget-short v6, v2, v1

    aput-short v6, v2, v0

    .line 287
    aput-short v5, v2, v1

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "ii":I
    .end local v5    # "temp":S
    :cond_0
    return-void
.end method

.method public set(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 116
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aput-short p2, v0, p1

    .line 118
    return-void
.end method

.method public shrink()[S
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 292
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 293
    .local v2, "items":[S
    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 294
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 295
    .local v1, "ii":I
    aget-short v3, v2, v0

    .line 296
    .local v3, "temp":S
    aget-short v4, v2, v1

    aput-short v4, v2, v0

    .line 297
    aput-short v3, v2, v1

    .line 293
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 299
    .end local v1    # "ii":I
    .end local v3    # "temp":S
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([SII)V

    .line 279
    return-void
.end method

.method public swap(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 143
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 146
    .local v1, "items":[S
    aget-short v0, v1, p1

    .line 147
    .local v0, "firstValue":S
    aget-short v2, v1, p2

    aput-short v2, v1, p1

    .line 148
    aput-short v0, v1, p2

    .line 149
    return-void
.end method

.method public toArray()[S
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    new-array v0, v1, [S

    .line 315
    .local v0, "array":[S
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 341
    :goto_0
    return-object v3

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 333
    .local v2, "items":[S
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 334
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 335
    const/4 v3, 0x0

    aget-short v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 336
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge v1, v3, :cond_1

    .line 337
    const-string v3, ", "

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 338
    aget-short v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 341
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 345
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 353
    :goto_0
    return-object v3

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 347
    .local v2, "items":[S
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 348
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v3, 0x0

    aget-short v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 349
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge v1, v3, :cond_1

    .line 350
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 351
    aget-short v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .prologue
    .line 304
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 305
    :cond_0
    return-void
.end method
