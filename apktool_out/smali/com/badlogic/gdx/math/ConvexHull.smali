.class public Lcom/badlogic/gdx/math/ConvexHull;
.super Ljava/lang/Object;
.source "ConvexHull.java"


# instance fields
.field private final hull:Lcom/badlogic/gdx/utils/FloatArray;

.field private final indices:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method

.method private ccw(FF)F
    .locals 9
    .param p1, "p3x"    # F
    .param p2, "p3y"    # F

    .prologue
    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 155
    .local v0, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    iget v5, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 156
    .local v5, "size":I
    add-int/lit8 v6, v5, -0x4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    .line 157
    .local v1, "p1x":F
    add-int/lit8 v6, v5, -0x3

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    .line 158
    .local v2, "p1y":F
    add-int/lit8 v6, v5, -0x2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    .line 159
    .local v3, "p2x":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->peek()F

    move-result v4

    .line 160
    .local v4, "p2y":F
    sub-float v6, v3, v1

    sub-float v7, p2, v2

    mul-float/2addr v6, v7

    sub-float v7, v4, v2

    sub-float v8, p1, v1

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    return v6
.end method

.method private quicksortPartition([FII)I
    .locals 7
    .param p1, "values"    # [F
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .prologue
    .line 190
    aget v3, p1, p2

    .line 191
    .local v3, "x":F
    add-int/lit8 v5, p2, 0x1

    aget v4, p1, v5

    .line 192
    .local v4, "y":F
    move v2, p3

    .line 193
    .local v2, "up":I
    move v0, p2

    .line 196
    .local v0, "down":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_4

    .line 197
    :goto_1
    if-ge v0, v2, :cond_1

    aget v5, p1, v0

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_1

    .line 198
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 199
    :cond_1
    :goto_2
    aget v5, p1, v2

    cmpl-float v5, v5, v3

    if-gtz v5, :cond_2

    aget v5, p1, v2

    cmpl-float v5, v5, v3

    if-nez v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_3

    .line 200
    :cond_2
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 201
    :cond_3
    if-ge v0, v2, :cond_0

    .line 202
    aget v1, p1, v0

    .line 203
    .local v1, "temp":F
    aget v5, p1, v2

    aput v5, p1, v0

    .line 204
    aput v1, p1, v2

    .line 206
    add-int/lit8 v5, v0, 0x1

    aget v1, p1, v5

    .line 207
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 208
    add-int/lit8 v5, v2, 0x1

    aput v1, p1, v5

    goto :goto_0

    .line 211
    .end local v1    # "temp":F
    :cond_4
    aget v5, p1, v2

    aput v5, p1, p2

    .line 212
    aput v3, p1, v2

    .line 214
    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 215
    add-int/lit8 v5, v2, 0x1

    aput v4, p1, v5

    .line 217
    return v2
.end method

.method private quicksortPartitionWithIndices([FIIZ[S)I
    .locals 8
    .param p1, "values"    # [F
    .param p2, "lower"    # I
    .param p3, "upper"    # I
    .param p4, "yDown"    # Z
    .param p5, "originalIndices"    # [S

    .prologue
    .line 254
    aget v4, p1, p2

    .line 255
    .local v4, "x":F
    add-int/lit8 v6, p2, 0x1

    aget v5, p1, v6

    .line 256
    .local v5, "y":F
    move v3, p3

    .line 257
    .local v3, "up":I
    move v0, p2

    .line 260
    .local v0, "down":I
    :cond_0
    :goto_0
    if-ge v0, v3, :cond_6

    .line 261
    :goto_1
    if-ge v0, v3, :cond_1

    aget v6, p1, v0

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_1

    .line 262
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 263
    :cond_1
    if-eqz p4, :cond_3

    .line 264
    :goto_2
    aget v6, p1, v3

    cmpl-float v6, v6, v4

    if-gtz v6, :cond_2

    aget v6, p1, v3

    cmpl-float v6, v6, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_5

    .line 265
    :cond_2
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    .line 267
    :cond_3
    :goto_3
    aget v6, p1, v3

    cmpl-float v6, v6, v4

    if-gtz v6, :cond_4

    aget v6, p1, v3

    cmpl-float v6, v6, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_5

    .line 268
    :cond_4
    add-int/lit8 v3, v3, -0x2

    goto :goto_3

    .line 270
    :cond_5
    if-ge v0, v3, :cond_0

    .line 271
    aget v1, p1, v0

    .line 272
    .local v1, "temp":F
    aget v6, p1, v3

    aput v6, p1, v0

    .line 273
    aput v1, p1, v3

    .line 275
    add-int/lit8 v6, v0, 0x1

    aget v1, p1, v6

    .line 276
    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    aput v7, p1, v6

    .line 277
    add-int/lit8 v6, v3, 0x1

    aput v1, p1, v6

    .line 279
    div-int/lit8 v6, v0, 0x2

    aget-short v2, p5, v6

    .line 280
    .local v2, "tempIndex":S
    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v3, 0x2

    aget-short v7, p5, v7

    aput-short v7, p5, v6

    .line 281
    div-int/lit8 v6, v3, 0x2

    aput-short v2, p5, v6

    goto :goto_0

    .line 284
    .end local v1    # "temp":F
    .end local v2    # "tempIndex":S
    :cond_6
    aget v6, p1, v3

    aput v6, p1, p2

    .line 285
    aput v4, p1, v3

    .line 287
    add-int/lit8 v6, p2, 0x1

    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    aput v7, p1, v6

    .line 288
    add-int/lit8 v6, v3, 0x1

    aput v5, p1, v6

    .line 290
    div-int/lit8 v6, p2, 0x2

    aget-short v2, p5, v6

    .line 291
    .restart local v2    # "tempIndex":S
    div-int/lit8 v6, p2, 0x2

    div-int/lit8 v7, v3, 0x2

    aget-short v7, p5, v7

    aput-short v7, p5, v6

    .line 292
    div-int/lit8 v6, v3, 0x2

    aput-short v2, p5, v6

    .line 294
    return v3
.end method

.method private sort([FI)V
    .locals 6
    .param p1, "values"    # [F
    .param p2, "count"    # I

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "lower":I
    add-int/lit8 v3, p2, -0x1

    .line 168
    .local v3, "upper":I
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 169
    .local v2, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 170
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 171
    :cond_0
    :goto_0
    iget v4, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v4, :cond_2

    .line 172
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v3

    .line 173
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v1

    .line 174
    if-le v3, v1, :cond_0

    .line 175
    invoke-direct {p0, p1, v1, v3}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartition([FII)I

    move-result v0

    .line 176
    .local v0, "i":I
    sub-int v4, v0, v1

    sub-int v5, v3, v0

    if-le v4, v5, :cond_1

    .line 177
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 178
    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 180
    :cond_1
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 181
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 182
    sub-int v4, v3, v0

    sub-int v5, v0, v1

    if-lt v4, v5, :cond_0

    .line 183
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 184
    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private sortWithIndices([FIZ)V
    .locals 9
    .param p1, "values"    # [F
    .param p2, "count"    # I
    .param p3, "yDown"    # Z

    .prologue
    .line 223
    div-int/lit8 v7, p2, 0x2

    .line 224
    .local v7, "pointCount":I
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 227
    .local v5, "originalIndicesArray":[S
    const/4 v6, 0x0

    .local v6, "i":S
    :goto_0
    if-ge v6, v7, :cond_0

    .line 228
    aput-short v6, v5, v6

    .line 227
    add-int/lit8 v0, v6, 0x1

    int-to-short v6, v0

    goto :goto_0

    .line 230
    :cond_0
    const/4 v2, 0x0

    .line 231
    .local v2, "lower":I
    add-int/lit8 v3, p2, -0x1

    .line 232
    .local v3, "upper":I
    iget-object v8, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 233
    .local v8, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 234
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 235
    .end local v6    # "i":S
    :cond_1
    :goto_1
    iget v0, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v0, :cond_3

    .line 236
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v3

    .line 237
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v2

    .line 238
    if-le v3, v2, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    .line 239
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartitionWithIndices([FIIZ[S)I

    move-result v6

    .line 240
    .local v6, "i":I
    sub-int v0, v6, v2

    sub-int v1, v3, v6

    if-le v0, v1, :cond_2

    .line 241
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 242
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 244
    :cond_2
    add-int/lit8 v0, v6, 0x2

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 245
    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 246
    sub-int v0, v3, v6

    sub-int v1, v6, v2

    if-lt v0, v1, :cond_1

    .line 247
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 248
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    .line 251
    .end local v6    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public computeIndices(Lcom/badlogic/gdx/utils/FloatArray;ZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6
    .param p1, "points"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"    # Z
    .param p3, "yDown"    # Z

    .prologue
    .line 89
    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x0

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 17
    .param p1, "points"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "sorted"    # Z
    .param p5, "yDown"    # Z

    .prologue
    .line 99
    add-int v4, p2, p3

    .line 101
    .local v4, "end":I
    if-nez p4, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    array-length v15, v15

    move/from16 v0, p3

    if-ge v15, v0, :cond_1

    :cond_0
    move/from16 v0, p3

    new-array v15, v0, [F

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    move-object/from16 p1, v0

    .line 105
    const/16 p2, 0x0

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/ConvexHull;->sortWithIndices([FIZ)V

    .line 109
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 110
    .local v8, "indices":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 113
    .local v5, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 116
    move/from16 v6, p2

    .local v6, "i":I
    div-int/lit8 v7, v6, 0x2

    .local v7, "index":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 117
    aget v13, p1, v6

    .line 118
    .local v13, "x":F
    add-int/lit8 v15, v6, 0x1

    aget v14, p1, v15

    .line 119
    .local v14, "y":F
    :goto_1
    iget v15, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_3

    .line 120
    iget v15, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v15, v15, -0x2

    iput v15, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 121
    iget v15, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v15, v15, -0x1

    iput v15, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 124
    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 125
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 116
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 129
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_4
    add-int/lit8 v6, v4, -0x4

    div-int/lit8 v7, v6, 0x2

    iget v15, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v12, v15, 0x2

    .local v12, "t":I
    :goto_2
    move/from16 v0, p2

    if-lt v6, v0, :cond_6

    .line 130
    aget v13, p1, v6

    .line 131
    .restart local v13    # "x":F
    add-int/lit8 v15, v6, 0x1

    aget v14, p1, v15

    .line 132
    .restart local v14    # "y":F
    :goto_3
    iget v15, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v15, v12, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_5

    .line 133
    iget v15, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v15, v15, -0x2

    iput v15, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 134
    iget v15, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v15, v15, -0x1

    iput v15, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_3

    .line 136
    :cond_5
    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 137
    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 138
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 129
    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 142
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_6
    if-nez p4, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v11, v15, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 144
    .local v11, "originalIndicesArray":[S
    iget-object v9, v8, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 145
    .local v9, "indicesArray":[I
    const/4 v6, 0x0

    iget v10, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v10, "n":I
    :goto_4
    if-ge v6, v10, :cond_7

    .line 146
    aget v15, v9, v6

    aget-short v15, v11, v15

    aput v15, v9, v6

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 149
    .end local v9    # "indicesArray":[I
    .end local v10    # "n":I
    .end local v11    # "originalIndicesArray":[S
    :cond_7
    return-object v8
.end method

.method public computeIndices([FZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6
    .param p1, "polygon"    # [F
    .param p2, "sorted"    # Z
    .param p3, "yDown"    # Z

    .prologue
    .line 94
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public computePolygon(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 3
    .param p1, "points"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"    # Z

    .prologue
    .line 34
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method

.method public computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 9
    .param p1, "points"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "sorted"    # Z

    .prologue
    const/4 v8, 0x0

    .line 51
    add-int v0, p2, p3

    .line 53
    .local v0, "end":I
    if-nez p4, :cond_2

    .line 54
    iget-object v6, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    array-length v6, v6

    if-ge v6, p3, :cond_1

    :cond_0
    new-array v6, p3, [F

    iput-object v6, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 55
    :cond_1
    iget-object v6, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    const/4 v7, 0x0

    invoke-static {p1, p2, v6, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/math/ConvexHull;->sort([FI)V

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 62
    .local v1, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 65
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 66
    aget v4, p1, v2

    .line 67
    .local v4, "x":F
    add-int/lit8 v6, v2, 0x1

    aget v5, p1, v6

    .line 68
    .local v5, "y":F
    :goto_1
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_3

    .line 69
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 71
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 65
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 75
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_4
    add-int/lit8 v2, v0, -0x4

    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v6, 0x2

    .local v3, "t":I
    :goto_2
    if-lt v2, p2, :cond_6

    .line 76
    aget v4, p1, v2

    .line 77
    .restart local v4    # "x":F
    add-int/lit8 v6, v2, 0x1

    aget v5, p1, v6

    .line 78
    .restart local v5    # "y":F
    :goto_3
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v6, v3, :cond_5

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_5

    .line 79
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_3

    .line 80
    :cond_5
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 81
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 75
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 84
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_6
    return-object v1
.end method

.method public computePolygon([FZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 2
    .param p1, "polygon"    # [F
    .param p2, "sorted"    # Z

    .prologue
    .line 39
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method
