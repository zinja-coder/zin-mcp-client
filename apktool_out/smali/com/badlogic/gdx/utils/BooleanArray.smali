.class public Lcom/badlogic/gdx/utils/BooleanArray;
.super Ljava/lang/Object;
.source "BooleanArray.java"


# instance fields
.field public items:[Z

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 58
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 48
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 49
    return-void
.end method

.method public constructor <init>(Z[ZII)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "array"    # [Z
    .param p3, "startIndex"    # I
    .param p4, "count"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 73
    iput p4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(Z[ZII)V

    .line 65
    return-void
.end method

.method public static varargs with([Z)Lcom/badlogic/gdx/utils/BooleanArray;
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 306
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public add(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 79
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 80
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 81
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;

    .prologue
    .line 84
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V

    .line 85
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 88
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, v1, :cond_0

    .line 89
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

    iget v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 91
    return-void
.end method

.method public varargs addAll([Z)V
    .locals 2
    .param p1, "array"    # [Z

    .prologue
    .line 94
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 95
    return-void
.end method

.method public addAll([ZII)V
    .locals 5
    .param p1, "array"    # [Z
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 99
    .local v0, "items":[Z
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int v1, v2, p3

    .line 100
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

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 101
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 103
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 202
    return-void
.end method

.method public ensureCapacity(I)[Z
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 216
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int v0, v1, p1

    .line 217
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 268
    if-ne p1, p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v3

    .line 269
    :cond_1
    instance-of v5, p1, Lcom/badlogic/gdx/utils/BooleanArray;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 270
    check-cast v0, Lcom/badlogic/gdx/utils/BooleanArray;

    .line 271
    .local v0, "array":Lcom/badlogic/gdx/utils/BooleanArray;
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 272
    .local v2, "n":I
    iget v5, v0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v2, v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 273
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 274
    iget-object v5, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v5, v5, v1

    iget-object v6, v0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v6, v6, v1

    if-eq v5, v6, :cond_4

    move v3, v4

    goto :goto_0

    .line 273
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public first()Z
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public get(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 106
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public insert(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 116
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 118
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 119
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v1, :cond_2

    .line 120
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 124
    aput-boolean p2, v0, p1

    .line 125
    return-void

    .line 122
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v0, p1

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public peek()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public pop()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public random()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 257
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v1, :cond_0

    .line 258
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-boolean v0, v1, v0

    goto :goto_0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/BooleanArray;)Z
    .locals 8
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;

    .prologue
    .line 168
    iget v5, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 169
    .local v5, "size":I
    move v6, v5

    .line 170
    .local v6, "startSize":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 171
    .local v3, "items":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 172
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->get(I)Z

    move-result v2

    .line 173
    .local v2, "item":Z
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 174
    aget-boolean v7, v3, v1

    if-ne v2, v7, :cond_1

    .line 175
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    .line 176
    add-int/lit8 v5, v5, -0x1

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v1    # "ii":I
    .end local v2    # "item":Z
    :cond_2
    if-eq v5, v6, :cond_3

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public removeIndex(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 138
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 140
    .local v0, "items":[Z
    aget-boolean v1, v0, p1

    .line 141
    .local v1, "value":Z
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 142
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v2, :cond_1

    .line 143
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    :goto_0
    return v1

    .line 145
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v0, v2

    aput-boolean v2, v0, p1

    goto :goto_0
.end method

.method public removeRange(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 151
    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    iget v6, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
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

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 154
    .local v2, "items":[Z
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 155
    .local v0, "count":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v4, :cond_3

    .line 156
    add-int v4, p1, v0

    iget v5, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {v2, v4, v2, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 163
    return-void

    .line 158
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v3, v4, -0x1

    .line 159
    .local v3, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 160
    add-int v4, p1, v1

    sub-int v5, v3, v1

    aget-boolean v5, v2, v5

    aput-boolean v5, v2, v4

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected resize(I)[Z
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 222
    new-array v1, p1, [Z

    .line 223
    .local v1, "newItems":[Z
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 224
    .local v0, "items":[Z
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iput-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 226
    return-object v1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 230
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 231
    .local v2, "items":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "lastIndex":I
    iget v6, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    div-int/lit8 v4, v6, 0x2

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 232
    sub-int v1, v3, v0

    .line 233
    .local v1, "ii":I
    aget-boolean v5, v2, v0

    .line 234
    .local v5, "temp":Z
    aget-boolean v6, v2, v1

    aput-boolean v6, v2, v0

    .line 235
    aput-boolean v5, v2, v1

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "ii":I
    .end local v5    # "temp":Z
    :cond_0
    return-void
.end method

.method public set(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 111
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean p2, v0, p1

    .line 113
    return-void
.end method

.method public shrink()[Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 240
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 241
    .local v2, "items":[Z
    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 242
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 243
    .local v1, "ii":I
    aget-boolean v3, v2, v0

    .line 244
    .local v3, "temp":Z
    aget-boolean v4, v2, v1

    aput-boolean v4, v2, v0

    .line 245
    aput-boolean v3, v2, v1

    .line 241
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 247
    .end local v1    # "ii":I
    .end local v3    # "temp":Z
    :cond_0
    return-void
.end method

.method public swap(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 128
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 131
    .local v1, "items":[Z
    aget-boolean v0, v1, p1

    .line 132
    .local v0, "firstValue":Z
    aget-boolean v2, v1, p2

    aput-boolean v2, v1, p1

    .line 133
    aput-boolean v0, v1, p2

    .line 134
    return-void
.end method

.method public toArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v0, v1, [Z

    .line 263
    .local v0, "array":[Z
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 289
    :goto_0
    return-object v3

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 281
    .local v2, "items":[Z
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 282
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 283
    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 284
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v1, v3, :cond_1

    .line 285
    const-string v3, ", "

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 286
    aget-boolean v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 289
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 293
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 301
    :goto_0
    return-object v3

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 295
    .local v2, "items":[Z
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 296
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 297
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v1, v3, :cond_1

    .line 298
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 299
    aget-boolean v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .prologue
    .line 252
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 253
    :cond_0
    return-void
.end method
