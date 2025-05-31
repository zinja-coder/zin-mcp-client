.class public Lcom/badlogic/gdx/math/DelaunayTriangulator;
.super Ljava/lang/Object;
.source "DelaunayTriangulator.java"


# static fields
.field private static final COMPLETE:I = 0x1

.field private static final EPSILON:F = 1.0E-6f

.field private static final INCOMPLETE:I = 0x2

.field private static final INSIDE:I


# instance fields
.field private final centroid:Lcom/badlogic/gdx/math/Vector2;

.field private final complete:Lcom/badlogic/gdx/utils/BooleanArray;

.field private final edges:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F

.field private final superTriangle:[F

.field private final triangles:Lcom/badlogic/gdx/utils/ShortArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->edges:Lcom/badlogic/gdx/utils/IntArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->complete:Lcom/badlogic/gdx/utils/BooleanArray;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->superTriangle:[F

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private circumCircle(FFFFFFFF)I
    .locals 15
    .param p1, "xp"    # F
    .param p2, "yp"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F

    .prologue
    .line 228
    sub-float v13, p4, p6

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 229
    .local v10, "y1y2":F
    sub-float v13, p6, p8

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 230
    .local v11, "y2y3":F
    const v13, 0x358637bd    # 1.0E-6f

    cmpg-float v13, v10, v13

    if-gez v13, :cond_1

    .line 231
    const v13, 0x358637bd    # 1.0E-6f

    cmpg-float v13, v11, v13

    if-gez v13, :cond_0

    const/4 v13, 0x2

    .line 261
    :goto_0
    return v13

    .line 232
    :cond_0
    sub-float v13, p7, p5

    neg-float v13, v13

    sub-float v14, p8, p6

    div-float v3, v13, v14

    .line 233
    .local v3, "m2":F
    add-float v13, p5, p7

    const/high16 v14, 0x40000000    # 2.0f

    div-float v5, v13, v14

    .line 234
    .local v5, "mx2":F
    add-float v13, p6, p8

    const/high16 v14, 0x40000000    # 2.0f

    div-float v7, v13, v14

    .line 235
    .local v7, "my2":F
    add-float v13, p5, p3

    const/high16 v14, 0x40000000    # 2.0f

    div-float v9, v13, v14

    .line 236
    .local v9, "xc":F
    sub-float v13, v9, v5

    mul-float/2addr v13, v3

    add-float v12, v13, v7

    .line 253
    .end local v3    # "m2":F
    .end local v5    # "mx2":F
    .end local v7    # "my2":F
    .local v12, "yc":F
    :goto_1
    sub-float v0, p5, v9

    .line 254
    .local v0, "dx":F
    sub-float v1, p6, v12

    .line 255
    .local v1, "dy":F
    mul-float v13, v0, v0

    mul-float v14, v1, v1

    add-float v8, v13, v14

    .line 257
    .local v8, "rsqr":F
    sub-float v0, p1, v9

    .line 258
    mul-float/2addr v0, v0

    .line 259
    sub-float v1, p2, v12

    .line 260
    mul-float v13, v1, v1

    add-float/2addr v13, v0

    sub-float/2addr v13, v8

    const v14, 0x358637bd    # 1.0E-6f

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    .line 238
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v8    # "rsqr":F
    .end local v9    # "xc":F
    .end local v12    # "yc":F
    :cond_1
    sub-float v13, p5, p3

    neg-float v13, v13

    sub-float v14, p6, p4

    div-float v2, v13, v14

    .line 239
    .local v2, "m1":F
    add-float v13, p3, p5

    const/high16 v14, 0x40000000    # 2.0f

    div-float v4, v13, v14

    .line 240
    .local v4, "mx1":F
    add-float v13, p4, p6

    const/high16 v14, 0x40000000    # 2.0f

    div-float v6, v13, v14

    .line 241
    .local v6, "my1":F
    const v13, 0x358637bd    # 1.0E-6f

    cmpg-float v13, v11, v13

    if-gez v13, :cond_2

    .line 242
    add-float v13, p7, p5

    const/high16 v14, 0x40000000    # 2.0f

    div-float v9, v13, v14

    .line 243
    .restart local v9    # "xc":F
    sub-float v13, v9, v4

    mul-float/2addr v13, v2

    add-float v12, v13, v6

    .restart local v12    # "yc":F
    goto :goto_1

    .line 245
    .end local v9    # "xc":F
    .end local v12    # "yc":F
    :cond_2
    sub-float v13, p7, p5

    neg-float v13, v13

    sub-float v14, p8, p6

    div-float v3, v13, v14

    .line 246
    .restart local v3    # "m2":F
    add-float v13, p5, p7

    const/high16 v14, 0x40000000    # 2.0f

    div-float v5, v13, v14

    .line 247
    .restart local v5    # "mx2":F
    add-float v13, p6, p8

    const/high16 v14, 0x40000000    # 2.0f

    div-float v7, v13, v14

    .line 248
    .restart local v7    # "my2":F
    mul-float v13, v2, v4

    mul-float v14, v3, v5

    sub-float/2addr v13, v14

    add-float/2addr v13, v7

    sub-float/2addr v13, v6

    sub-float v14, v2, v3

    div-float v9, v13, v14

    .line 249
    .restart local v9    # "xc":F
    sub-float v13, v9, v4

    mul-float/2addr v13, v2

    add-float v12, v13, v6

    .restart local v12    # "yc":F
    goto :goto_1

    .line 261
    .end local v2    # "m1":F
    .end local v3    # "m2":F
    .end local v4    # "mx1":F
    .end local v5    # "mx2":F
    .end local v6    # "my1":F
    .end local v7    # "my2":F
    .restart local v0    # "dx":F
    .restart local v1    # "dy":F
    .restart local v8    # "rsqr":F
    :cond_3
    cmpl-float v13, p1, v9

    if-lez v13, :cond_4

    cmpl-float v13, v0, v8

    if-lez v13, :cond_4

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x2

    goto/16 :goto_0
.end method

.method private quicksortPartition([FII[S)I
    .locals 7
    .param p1, "values"    # [F
    .param p2, "lower"    # I
    .param p3, "upper"    # I
    .param p4, "originalIndices"    # [S

    .prologue
    .line 298
    aget v4, p1, p2

    .line 299
    .local v4, "value":F
    move v3, p3

    .line 300
    .local v3, "up":I
    add-int/lit8 v0, p2, 0x2

    .line 303
    .local v0, "down":I
    :cond_0
    :goto_0
    if-ge v0, v3, :cond_3

    .line 304
    :goto_1
    if-ge v0, v3, :cond_1

    aget v5, p1, v0

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_1

    .line 305
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 306
    :cond_1
    :goto_2
    aget v5, p1, v3

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    .line 307
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    .line 308
    :cond_2
    if-ge v0, v3, :cond_0

    .line 309
    aget v2, p1, v0

    .line 310
    .local v2, "tempValue":F
    aget v5, p1, v3

    aput v5, p1, v0

    .line 311
    aput v2, p1, v3

    .line 313
    add-int/lit8 v5, v0, 0x1

    aget v2, p1, v5

    .line 314
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 315
    add-int/lit8 v5, v3, 0x1

    aput v2, p1, v5

    .line 317
    div-int/lit8 v5, v0, 0x2

    aget-short v1, p4, v5

    .line 318
    .local v1, "tempIndex":S
    div-int/lit8 v5, v0, 0x2

    div-int/lit8 v6, v3, 0x2

    aget-short v6, p4, v6

    aput-short v6, p4, v5

    .line 319
    div-int/lit8 v5, v3, 0x2

    aput-short v1, p4, v5

    goto :goto_0

    .line 322
    .end local v1    # "tempIndex":S
    .end local v2    # "tempValue":F
    :cond_3
    aget v5, p1, v3

    aput v5, p1, p2

    .line 323
    aput v4, p1, v3

    .line 325
    add-int/lit8 v5, p2, 0x1

    aget v2, p1, v5

    .line 326
    .restart local v2    # "tempValue":F
    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 327
    add-int/lit8 v5, v3, 0x1

    aput v2, p1, v5

    .line 329
    div-int/lit8 v5, p2, 0x2

    aget-short v1, p4, v5

    .line 330
    .restart local v1    # "tempIndex":S
    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, v3, 0x2

    aget-short v6, p4, v6

    aput-short v6, p4, v5

    .line 331
    div-int/lit8 v5, v3, 0x2

    aput-short v1, p4, v5

    .line 332
    return v3
.end method

.method private sort([FI)V
    .locals 8
    .param p1, "values"    # [F
    .param p2, "count"    # I

    .prologue
    .line 267
    div-int/lit8 v3, p2, 0x2

    .line 268
    .local v3, "pointCount":I
    iget-object v6, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 269
    iget-object v6, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 270
    iget-object v6, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v2, v6, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 271
    .local v2, "originalIndicesArray":[S
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    if-ge v0, v3, :cond_0

    .line 272
    aput-short v0, v2, v0

    .line 271
    add-int/lit8 v6, v0, 0x1

    int-to-short v0, v6

    goto :goto_0

    .line 274
    :cond_0
    const/4 v1, 0x0

    .line 275
    .local v1, "lower":I
    add-int/lit8 v5, p2, -0x1

    .line 276
    .local v5, "upper":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 277
    .local v4, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 278
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 279
    .end local v0    # "i":S
    :cond_1
    :goto_1
    iget v6, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v6, :cond_3

    .line 280
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v5

    .line 281
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v1

    .line 282
    if-le v5, v1, :cond_1

    .line 283
    invoke-direct {p0, p1, v1, v5, v2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortPartition([FII[S)I

    move-result v0

    .line 284
    .local v0, "i":I
    sub-int v6, v0, v1

    sub-int v7, v5, v0

    if-le v6, v7, :cond_2

    .line 285
    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 286
    add-int/lit8 v6, v0, -0x2

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 288
    :cond_2
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 289
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 290
    sub-int v6, v5, v0

    sub-int v7, v0, v1

    if-lt v6, v7, :cond_1

    .line 291
    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 292
    add-int/lit8 v6, v0, -0x2

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    .line 295
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public computeTriangles(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 3
    .param p1, "points"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"    # Z

    .prologue
    .line 43
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 43
    .param p1, "points"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "sorted"    # Z

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    move-object/from16 v33, v0

    .line 60
    .local v33, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-virtual/range {v33 .. v33}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 61
    const/4 v4, 0x6

    move/from16 v0, p3

    if-ge v0, v4, :cond_1

    .line 220
    :cond_0
    return-object v33

    .line 62
    :cond_1
    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 64
    if-nez p4, :cond_4

    .line 65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    array-length v4, v4

    move/from16 v0, p3

    if-ge v4, v0, :cond_3

    :cond_2
    move/from16 v0, p3

    new-array v4, v0, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    .line 66
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v42

    move/from16 v3, p3

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    move-object/from16 p1, v0

    .line 68
    const/16 p2, 0x0

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sort([FI)V

    .line 72
    :cond_4
    add-int v21, p2, p3

    .line 75
    .local v21, "end":I
    const/4 v4, 0x0

    aget v38, p1, v4

    .local v38, "xmin":F
    const/4 v4, 0x1

    aget v41, p1, v4

    .line 76
    .local v41, "ymin":F
    move/from16 v36, v38

    .local v36, "xmax":F
    move/from16 v39, v41

    .line 77
    .local v39, "ymax":F
    add-int/lit8 v22, p2, 0x2

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 78
    aget v35, p1, v22

    .line 79
    .local v35, "value":F
    cmpg-float v4, v35, v38

    if-gez v4, :cond_5

    move/from16 v38, v35

    .line 80
    :cond_5
    cmpl-float v4, v35, v36

    if-lez v4, :cond_6

    move/from16 v36, v35

    .line 81
    :cond_6
    add-int/lit8 v22, v22, 0x1

    .line 82
    aget v35, p1, v22

    .line 83
    cmpg-float v4, v35, v41

    if-gez v4, :cond_7

    move/from16 v41, v35

    .line 84
    :cond_7
    cmpl-float v4, v35, v39

    if-lez v4, :cond_8

    move/from16 v39, v35

    .line 77
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 86
    .end local v35    # "value":F
    :cond_9
    sub-float v17, v36, v38

    .local v17, "dx":F
    sub-float v18, v39, v41

    .line 87
    .local v18, "dy":F
    cmpl-float v4, v17, v18

    if-lez v4, :cond_a

    .end local v17    # "dx":F
    :goto_1
    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v16, v17, v4

    .line 88
    .local v16, "dmax":F
    add-float v4, v36, v38

    const/high16 v42, 0x40000000    # 2.0f

    div-float v37, v4, v42

    .local v37, "xmid":F
    add-float v4, v39, v41

    const/high16 v42, 0x40000000    # 2.0f

    div-float v40, v4, v42

    .line 91
    .local v40, "ymid":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->superTriangle:[F

    move-object/from16 v31, v0

    .line 92
    .local v31, "superTriangle":[F
    const/4 v4, 0x0

    sub-float v42, v37, v16

    aput v42, v31, v4

    .line 93
    const/4 v4, 0x1

    sub-float v42, v40, v16

    aput v42, v31, v4

    .line 94
    const/4 v4, 0x2

    aput v37, v31, v4

    .line 95
    const/4 v4, 0x3

    add-float v42, v40, v16

    aput v42, v31, v4

    .line 96
    const/4 v4, 0x4

    add-float v42, v37, v16

    aput v42, v31, v4

    .line 97
    const/4 v4, 0x5

    sub-float v42, v40, v16

    aput v42, v31, v4

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->edges:Lcom/badlogic/gdx/utils/IntArray;

    move-object/from16 v19, v0

    .line 100
    .local v19, "edges":Lcom/badlogic/gdx/utils/IntArray;
    div-int/lit8 v4, p3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->complete:Lcom/badlogic/gdx/utils/BooleanArray;

    .line 103
    .local v13, "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/BooleanArray;->clear()V

    .line 104
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->ensureCapacity(I)[Z

    .line 107
    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 108
    add-int/lit8 v4, v21, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 109
    add-int/lit8 v4, v21, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 110
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    .line 113
    move/from16 v29, p2

    .local v29, "pointIndex":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    .line 114
    aget v5, p1, v29

    .local v5, "x":F
    add-int/lit8 v4, v29, 0x1

    aget v6, p1, v4

    .line 117
    .local v6, "y":F
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    move-object/from16 v34, v0

    .line 118
    .local v34, "trianglesArray":[S
    iget-object v14, v13, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 119
    .local v14, "completeArray":[Z
    move-object/from16 v0, v33

    iget v4, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v32, v4, -0x1

    .local v32, "triangleIndex":I
    :goto_3
    if-ltz v32, :cond_f

    .line 120
    div-int/lit8 v15, v32, 0x3

    .line 121
    .local v15, "completeIndex":I
    aget-boolean v4, v14, v15

    if-eqz v4, :cond_b

    .line 119
    :goto_4
    add-int/lit8 v32, v32, -0x3

    goto :goto_3

    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v13    # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .end local v14    # "completeArray":[Z
    .end local v15    # "completeIndex":I
    .end local v16    # "dmax":F
    .end local v19    # "edges":Lcom/badlogic/gdx/utils/IntArray;
    .end local v29    # "pointIndex":I
    .end local v31    # "superTriangle":[F
    .end local v32    # "triangleIndex":I
    .end local v34    # "trianglesArray":[S
    .end local v37    # "xmid":F
    .end local v40    # "ymid":F
    .restart local v17    # "dx":F
    :cond_a
    move/from16 v17, v18

    .line 87
    goto/16 :goto_1

    .line 122
    .end local v17    # "dx":F
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    .restart local v13    # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .restart local v14    # "completeArray":[Z
    .restart local v15    # "completeIndex":I
    .restart local v16    # "dmax":F
    .restart local v19    # "edges":Lcom/badlogic/gdx/utils/IntArray;
    .restart local v29    # "pointIndex":I
    .restart local v31    # "superTriangle":[F
    .restart local v32    # "triangleIndex":I
    .restart local v34    # "trianglesArray":[S
    .restart local v37    # "xmid":F
    .restart local v40    # "ymid":F
    :cond_b
    add-int/lit8 v4, v32, -0x2

    aget-short v26, v34, v4

    .line 123
    .local v26, "p1":I
    add-int/lit8 v4, v32, -0x1

    aget-short v27, v34, v4

    .line 124
    .local v27, "p2":I
    aget-short v28, v34, v32

    .line 126
    .local v28, "p3":I
    move/from16 v0, v26

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 127
    sub-int v22, v26, v21

    .line 128
    aget v7, v31, v22

    .line 129
    .local v7, "x1":F
    add-int/lit8 v4, v22, 0x1

    aget v8, v31, v4

    .line 134
    .local v8, "y1":F
    :goto_5
    move/from16 v0, v27

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 135
    sub-int v22, v27, v21

    .line 136
    aget v9, v31, v22

    .line 137
    .local v9, "x2":F
    add-int/lit8 v4, v22, 0x1

    aget v10, v31, v4

    .line 142
    .local v10, "y2":F
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    .line 143
    sub-int v22, v28, v21

    .line 144
    aget v11, v31, v22

    .line 145
    .local v11, "x3":F
    add-int/lit8 v4, v22, 0x1

    aget v12, v31, v4

    .local v12, "y3":F
    :goto_7
    move-object/from16 v4, p0

    .line 150
    invoke-direct/range {v4 .. v12}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->circumCircle(FFFFFFFF)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 155
    :pswitch_0
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 156
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 157
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 158
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 159
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 160
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 162
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 163
    add-int/lit8 v4, v32, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 164
    add-int/lit8 v4, v32, -0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 165
    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    goto/16 :goto_4

    .line 131
    .end local v7    # "x1":F
    .end local v8    # "y1":F
    .end local v9    # "x2":F
    .end local v10    # "y2":F
    .end local v11    # "x3":F
    .end local v12    # "y3":F
    :cond_c
    aget v7, p1, v26

    .line 132
    .restart local v7    # "x1":F
    add-int/lit8 v4, v26, 0x1

    aget v8, p1, v4

    .restart local v8    # "y1":F
    goto :goto_5

    .line 139
    :cond_d
    aget v9, p1, v27

    .line 140
    .restart local v9    # "x2":F
    add-int/lit8 v4, v27, 0x1

    aget v10, p1, v4

    .restart local v10    # "y2":F
    goto :goto_6

    .line 147
    :cond_e
    aget v11, p1, v28

    .line 148
    .restart local v11    # "x3":F
    add-int/lit8 v4, v28, 0x1

    aget v12, p1, v4

    .restart local v12    # "y3":F
    goto :goto_7

    .line 152
    :pswitch_1
    const/4 v4, 0x1

    aput-boolean v4, v14, v15

    goto/16 :goto_4

    .line 170
    .end local v7    # "x1":F
    .end local v8    # "y1":F
    .end local v9    # "x2":F
    .end local v10    # "y2":F
    .end local v11    # "x3":F
    .end local v12    # "y3":F
    .end local v15    # "completeIndex":I
    .end local v26    # "p1":I
    .end local v27    # "p2":I
    .end local v28    # "p3":I
    :cond_f
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    move-object/from16 v20, v0

    .line 171
    .local v20, "edgesArray":[I
    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    move/from16 v24, v0

    .local v24, "n":I
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 173
    aget v26, v20, v22

    .line 174
    .restart local v26    # "p1":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_11

    .line 171
    :cond_10
    :goto_9
    add-int/lit8 v22, v22, 0x2

    goto :goto_8

    .line 175
    :cond_11
    add-int/lit8 v4, v22, 0x1

    aget v27, v20, v4

    .line 176
    .restart local v27    # "p2":I
    const/16 v30, 0x0

    .line 177
    .local v30, "skip":Z
    add-int/lit8 v23, v22, 0x2

    .local v23, "ii":I
    :goto_a
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 178
    add-int/lit8 v4, v23, 0x1

    aget v4, v20, v4

    move/from16 v0, v26

    if-ne v0, v4, :cond_12

    aget v4, v20, v23

    move/from16 v0, v27

    if-ne v0, v4, :cond_12

    .line 179
    const/16 v30, 0x1

    .line 180
    const/4 v4, -0x1

    aput v4, v20, v23

    .line 177
    :cond_12
    add-int/lit8 v23, v23, 0x2

    goto :goto_a

    .line 183
    :cond_13
    if-nez v30, :cond_10

    .line 186
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 187
    add-int/lit8 v4, v22, 0x1

    aget v4, v20, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 188
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 189
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    goto :goto_9

    .line 191
    .end local v23    # "ii":I
    .end local v26    # "p1":I
    .end local v27    # "p2":I
    .end local v30    # "skip":Z
    :cond_14
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 113
    add-int/lit8 v29, v29, 0x2

    goto/16 :goto_2

    .line 195
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v14    # "completeArray":[Z
    .end local v20    # "edgesArray":[I
    .end local v24    # "n":I
    .end local v32    # "triangleIndex":I
    .end local v34    # "trianglesArray":[S
    :cond_15
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    move-object/from16 v34, v0

    .line 196
    .restart local v34    # "trianglesArray":[S
    move-object/from16 v0, v33

    iget v4, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v22, v4, -0x1

    :goto_b
    if-ltz v22, :cond_18

    .line 197
    aget-short v4, v34, v22

    move/from16 v0, v21

    if-ge v4, v0, :cond_16

    add-int/lit8 v4, v22, -0x1

    aget-short v4, v34, v4

    move/from16 v0, v21

    if-ge v4, v0, :cond_16

    add-int/lit8 v4, v22, -0x2

    aget-short v4, v34, v4

    move/from16 v0, v21

    if-lt v4, v0, :cond_17

    .line 198
    :cond_16
    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 199
    add-int/lit8 v4, v22, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 200
    add-int/lit8 v4, v22, -0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 196
    :cond_17
    add-int/lit8 v22, v22, -0x3

    goto :goto_b

    .line 205
    :cond_18
    if-nez p4, :cond_19

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v4, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    move-object/from16 v25, v0

    .line 207
    .local v25, "originalIndicesArray":[S
    const/16 v22, 0x0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    move/from16 v24, v0

    .restart local v24    # "n":I
    :goto_c
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_19

    .line 208
    aget-short v4, v34, v22

    div-int/lit8 v4, v4, 0x2

    aget-short v4, v25, v4

    mul-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v34, v22

    .line 207
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 212
    .end local v24    # "n":I
    .end local v25    # "originalIndicesArray":[S
    :cond_19
    if-nez p2, :cond_1a

    .line 213
    const/16 v22, 0x0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    move/from16 v24, v0

    .restart local v24    # "n":I
    :goto_d
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 214
    aget-short v4, v34, v22

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v34, v22

    .line 213
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 216
    .end local v24    # "n":I
    :cond_1a
    const/16 v22, 0x0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    move/from16 v24, v0

    .restart local v24    # "n":I
    :goto_e
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 217
    aget-short v4, v34, v22

    sub-int v4, v4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v34, v22

    .line 216
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public computeTriangles([FZ)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 2
    .param p1, "polygon"    # [F
    .param p2, "sorted"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public trim(Lcom/badlogic/gdx/utils/ShortArray;[F[FII)V
    .locals 15
    .param p1, "triangles"    # Lcom/badlogic/gdx/utils/ShortArray;
    .param p2, "points"    # [F
    .param p3, "hull"    # [F
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 338
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 339
    .local v14, "trianglesArray":[S
    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v10, v3, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 340
    add-int/lit8 v3, v10, -0x2

    aget-short v3, v14, v3

    mul-int/lit8 v11, v3, 0x2

    .line 341
    .local v11, "p1":I
    add-int/lit8 v3, v10, -0x1

    aget-short v3, v14, v3

    mul-int/lit8 v12, v3, 0x2

    .line 342
    .local v12, "p2":I
    aget-short v3, v14, v10

    mul-int/lit8 v13, v3, 0x2

    .line 343
    .local v13, "p3":I
    aget v3, p2, v11

    add-int/lit8 v4, v11, 0x1

    aget v4, p2, v4

    aget v5, p2, v12

    add-int/lit8 v6, v12, 0x1

    aget v6, p2, v6

    aget v7, p2, v13

    add-int/lit8 v8, v13, 0x1

    aget v8, p2, v8

    iget-object v9, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    invoke-static/range {v3 .. v9}, Lcom/badlogic/gdx/math/GeometryUtils;->triangleCentroid(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 345
    iget-object v3, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 347
    add-int/lit8 v3, v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 348
    add-int/lit8 v3, v10, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 339
    :cond_0
    add-int/lit8 v10, v10, -0x3

    goto :goto_0

    .line 351
    .end local v11    # "p1":I
    .end local v12    # "p2":I
    .end local v13    # "p3":I
    :cond_1
    return-void
.end method
