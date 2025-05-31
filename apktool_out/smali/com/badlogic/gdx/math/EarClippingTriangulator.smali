.class public Lcom/badlogic/gdx/math/EarClippingTriangulator;
.super Ljava/lang/Object;
.source "EarClippingTriangulator.java"


# static fields
.field private static final CONCAVE:I = -0x1

.field private static final CONVEX:I = 0x1

.field private static final TANGENTIAL:I


# instance fields
.field private indices:[S

.field private final indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

.field private final triangles:Lcom/badlogic/gdx/utils/ShortArray;

.field private vertexCount:I

.field private final vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

.field private vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method

.method private static areVerticesClockwise([FII)Z
    .locals 10
    .param p0, "vertices"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x0

    .line 207
    const/4 v8, 0x2

    if-gt p2, v8, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v7

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, "area":F
    move v1, p1

    .local v1, "i":I
    add-int v8, p1, p2

    add-int/lit8 v2, v8, -0x3

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 210
    aget v3, p0, v1

    .line 211
    .local v3, "p1x":F
    add-int/lit8 v8, v1, 0x1

    aget v4, p0, v8

    .line 212
    .local v4, "p1y":F
    add-int/lit8 v8, v1, 0x2

    aget v5, p0, v8

    .line 213
    .local v5, "p2x":F
    add-int/lit8 v8, v1, 0x3

    aget v6, p0, v8

    .line 214
    .local v6, "p2y":F
    mul-float v8, v3, v6

    mul-float v9, v5, v4

    sub-float/2addr v8, v9

    add-float/2addr v0, v8

    .line 209
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 216
    .end local v3    # "p1x":F
    .end local v4    # "p1y":F
    .end local v5    # "p2x":F
    .end local v6    # "p2y":F
    :cond_2
    add-int v8, p1, p2

    add-int/lit8 v8, v8, -0x2

    aget v3, p0, v8

    .line 217
    .restart local v3    # "p1x":F
    add-int v8, p1, p2

    add-int/lit8 v8, v8, -0x1

    aget v4, p0, v8

    .line 218
    .restart local v4    # "p1y":F
    aget v5, p0, p1

    .line 219
    .restart local v5    # "p2x":F
    add-int/lit8 v8, p1, 0x1

    aget v6, p0, v8

    .line 220
    .restart local v6    # "p2y":F
    mul-float v8, v3, v6

    add-float/2addr v8, v0

    mul-float v9, v5, v4

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method private classifyVertex(I)I
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 121
    iget-object v7, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 122
    .local v7, "indices":[S
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v0

    aget-short v0, v7, v0

    mul-int/lit8 v9, v0, 0x2

    .line 123
    .local v9, "previous":I
    aget-short v0, v7, p1

    mul-int/lit8 v6, v0, 0x2

    .line 124
    .local v6, "current":I
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v0

    aget-short v0, v7, v0

    mul-int/lit8 v8, v0, 0x2

    .line 125
    .local v8, "next":I
    iget-object v10, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertices:[F

    .line 126
    .local v10, "vertices":[F
    aget v0, v10, v9

    add-int/lit8 v1, v9, 0x1

    aget v1, v10, v1

    aget v2, v10, v6

    add-int/lit8 v3, v6, 0x1

    aget v3, v10, v3

    aget v4, v10, v8

    add-int/lit8 v5, v8, 0x1

    aget v5, v10, v5

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v0

    return v0
.end method

.method private static computeSpannedAreaSign(FFFFFF)I
    .locals 2
    .param p0, "p1x"    # F
    .param p1, "p1y"    # F
    .param p2, "p2x"    # F
    .param p3, "p2y"    # F
    .param p4, "p3x"    # F
    .param p5, "p3y"    # F

    .prologue
    .line 224
    sub-float v1, p5, p3

    mul-float v0, p0, v1

    .line 225
    .local v0, "area":F
    sub-float v1, p1, p5

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 226
    sub-float v1, p3, p1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    .line 227
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private cutEarTip(I)V
    .locals 3
    .param p1, "earTipIndex"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 187
    .local v0, "indices":[S
    iget-object v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 189
    .local v1, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v2

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 190
    aget-short v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 191
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v2

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 193
    iget-object v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 194
    iget-object v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    .line 195
    iget v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    .line 196
    return-void
.end method

.method private findEarTip()I
    .locals 5

    .prologue
    .line 131
    iget v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    .line 132
    .local v1, "vertexCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 133
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isEarTip(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 132
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 143
    .local v2, "vertexTypes":[I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 144
    aget v3, v2, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isEarTip(I)Z
    .locals 26
    .param p1, "earTipIndex"    # I

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v8, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    move-object/from16 v24, v0

    .line 150
    .local v24, "vertexTypes":[I
    aget v8, v24, p1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    .line 182
    :goto_0
    return v8

    .line 152
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v22

    .line 153
    .local v22, "previousIndex":I
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v18

    .line 154
    .local v18, "nextIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    move-object/from16 v17, v0

    .line 155
    .local v17, "indices":[S
    aget-short v8, v17, v22

    mul-int/lit8 v19, v8, 0x2

    .line 156
    .local v19, "p1":I
    aget-short v8, v17, p1

    mul-int/lit8 v20, v8, 0x2

    .line 157
    .local v20, "p2":I
    aget-short v8, v17, v18

    mul-int/lit8 v21, v8, 0x2

    .line 158
    .local v21, "p3":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertices:[F

    move-object/from16 v25, v0

    .line 159
    .local v25, "vertices":[F
    aget v4, v25, v19

    .local v4, "p1x":F
    add-int/lit8 v8, v19, 0x1

    aget v5, v25, v8

    .line 160
    .local v5, "p1y":F
    aget v10, v25, v20

    .local v10, "p2x":F
    add-int/lit8 v8, v20, 0x1

    aget v11, v25, v8

    .line 161
    .local v11, "p2y":F
    aget v2, v25, v21

    .local v2, "p3x":F
    add-int/lit8 v8, v21, 0x1

    aget v3, v25, v8

    .line 165
    .local v3, "p3y":F
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v16

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 168
    aget v8, v24, v16

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 169
    aget-short v8, v17, v16

    mul-int/lit8 v23, v8, 0x2

    .line 170
    .local v23, "v":I
    aget v6, v25, v23

    .line 171
    .local v6, "vx":F
    add-int/lit8 v8, v23, 0x1

    aget v7, v25, v8

    .line 175
    .local v7, "vy":F
    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v8

    if-ltz v8, :cond_1

    move v8, v4

    move v9, v5

    move v12, v6

    move v13, v7

    .line 176
    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v8

    if-ltz v8, :cond_1

    move v12, v2

    move v13, v3

    move v14, v6

    move v15, v7

    .line 177
    invoke-static/range {v10 .. v15}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v8

    if-ltz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 165
    .end local v6    # "vx":F
    .end local v7    # "vy":F
    .end local v23    # "v":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v16

    goto :goto_1

    .line 182
    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private nextIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 203
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private previousIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 199
    if-nez p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    .end local p1    # "index":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private triangulate()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 97
    iget-object v7, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v5, v7, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 99
    .local v5, "vertexTypes":[I
    :goto_0
    iget v7, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    if-le v7, v8, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->findEarTip()I

    move-result v0

    .line 101
    .local v0, "earTipIndex":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->cutEarTip(I)V

    .line 104
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v3

    .line 105
    .local v3, "previousIndex":I
    iget v7, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    if-ne v0, v7, :cond_0

    move v2, v6

    .line 106
    .local v2, "nextIndex":I
    :goto_1
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertex(I)I

    move-result v7

    aput v7, v5, v3

    .line 107
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertex(I)I

    move-result v7

    aput v7, v5, v2

    goto :goto_0

    .end local v2    # "nextIndex":I
    :cond_0
    move v2, v0

    .line 105
    goto :goto_1

    .line 110
    .end local v0    # "earTipIndex":I
    .end local v3    # "previousIndex":I
    :cond_1
    iget v7, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    if-ne v7, v8, :cond_2

    .line 111
    iget-object v4, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 112
    .local v4, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    iget-object v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 113
    .local v1, "indices":[S
    aget-short v6, v1, v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 114
    const/4 v6, 0x1

    aget-short v6, v1, v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 115
    const/4 v6, 0x2

    aget-short v6, v1, v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 117
    .end local v1    # "indices":[S
    .end local v4    # "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    :cond_2
    return-void
.end method


# virtual methods
.method public computeTriangles(Lcom/badlogic/gdx/utils/FloatArray;)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 3
    .param p1, "vertices"    # Lcom/badlogic/gdx/utils/FloatArray;

    .prologue
    .line 52
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([FII)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    .line 57
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([FII)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public computeTriangles([FII)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 10
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertices:[F

    .line 66
    div-int/lit8 v5, p3, 0x2

    iput v5, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    .line 67
    .local v5, "vertexCount":I
    div-int/lit8 v6, p2, 0x2

    .line 69
    .local v6, "vertexOffset":I
    iget-object v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

    .line 70
    .local v2, "indicesArray":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 71
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 72
    iput v5, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 73
    iget-object v1, v2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iput-object v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 74
    .local v1, "indices":[S
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->areVerticesClockwise([FII)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 75
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    if-ge v0, v5, :cond_1

    .line 76
    add-int v8, v6, v0

    int-to-short v8, v8

    aput-short v8, v1, v0

    .line 75
    add-int/lit8 v8, v0, 0x1

    int-to-short v0, v8

    goto :goto_0

    .line 78
    .end local v0    # "i":S
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v3, v5, -0x1

    .local v3, "n":I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 79
    add-int v8, v6, v3

    sub-int/2addr v8, v0

    int-to-short v8, v8

    aput-short v8, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "i":I
    .end local v3    # "n":I
    :cond_1
    iget-object v7, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    .line 83
    .local v7, "vertexTypes":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 84
    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 85
    const/4 v0, 0x0

    .restart local v0    # "i":I
    move v3, v5

    .restart local v3    # "n":I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 86
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertex(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 90
    .local v4, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 91
    const/4 v8, 0x0

    add-int/lit8 v9, v5, -0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 92
    invoke-direct {p0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangulate()V

    .line 93
    return-object v4
.end method
