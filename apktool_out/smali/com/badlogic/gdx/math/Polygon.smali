.class public Lcom/badlogic/gdx/math/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private dirty:Z

.field private localVertices:[F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private worldVertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 33
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 42
    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 44
    return-void
.end method


# virtual methods
.method public area()F
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    .line 163
    .local v0, "vertices":[F
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/GeometryUtils;->polygonArea([FII)F

    move-result v1

    return v1
.end method

.method public contains(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v3

    .line 199
    .local v3, "vertices":[F
    array-length v2, v3

    .line 200
    .local v2, "numFloats":I
    const/4 v1, 0x0

    .line 202
    .local v1, "intersects":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 203
    aget v4, v3, v0

    .line 204
    .local v4, "x1":F
    add-int/lit8 v9, v0, 0x1

    aget v6, v3, v9

    .line 205
    .local v6, "y1":F
    add-int/lit8 v9, v0, 0x2

    rem-int/2addr v9, v2

    aget v5, v3, v9

    .line 206
    .local v5, "x2":F
    add-int/lit8 v9, v0, 0x3

    rem-int/2addr v9, v2

    aget v7, v3, v9

    .line 207
    .local v7, "y2":F
    cmpg-float v9, v6, p2

    if-gtz v9, :cond_0

    cmpg-float v9, p2, v7

    if-ltz v9, :cond_1

    :cond_0
    cmpg-float v9, v7, p2

    if-gtz v9, :cond_2

    cmpg-float v9, p2, v6

    if-gez v9, :cond_2

    :cond_1
    sub-float v9, v5, v4

    sub-float v10, v7, v6

    div-float/2addr v9, v10

    sub-float v10, p2, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v4

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 202
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 209
    .end local v4    # "x1":F
    .end local v5    # "x2":F
    .end local v6    # "y1":F
    .end local v7    # "y2":F
    :cond_3
    and-int/lit8 v9, v1, 0x1

    if-ne v9, v8, :cond_4

    :goto_1
    return v8

    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public dirty()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 158
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v6

    .line 174
    .local v6, "vertices":[F
    aget v3, v6, v7

    .line 175
    .local v3, "minX":F
    aget v4, v6, v8

    .line 176
    .local v4, "minY":F
    aget v1, v6, v7

    .line 177
    .local v1, "maxX":F
    aget v2, v6, v8

    .line 179
    .local v2, "maxY":F
    array-length v5, v6

    .line 180
    .local v5, "numFloats":I
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_4

    .line 181
    aget v7, v6, v0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_0

    aget v3, v6, v0

    .line 182
    :cond_0
    add-int/lit8 v7, v0, 0x1

    aget v7, v6, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v0, 0x1

    aget v4, v6, v7

    .line 183
    :cond_1
    aget v7, v6, v0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    aget v1, v6, v0

    .line 184
    :cond_2
    add-int/lit8 v7, v0, 0x1

    aget v7, v6, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    add-int/lit8 v7, v0, 0x1

    aget v2, v6, v7

    .line 180
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 187
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v7, :cond_5

    new-instance v7, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 188
    :cond_5
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 189
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 190
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v8, v1, v3

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 191
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v8, v2, v4

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 193
    iget-object v7, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v7
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    return v0
.end method

.method public getTransformedVertices()[F
    .locals 21

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    move-object/from16 v16, v0

    .line 94
    :cond_0
    return-object v16

    .line 57
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 60
    .local v4, "localVertices":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    .line 62
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    move-object/from16 v16, v0

    .line 63
    .local v16, "worldVertices":[F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 64
    .local v9, "positionX":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 65
    .local v10, "positionY":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    .line 66
    .local v7, "originX":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    .line 67
    .local v8, "originY":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 68
    .local v13, "scaleX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 69
    .local v14, "scaleY":F
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v13, v19

    if-nez v19, :cond_4

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v14, v19

    if-eqz v19, :cond_7

    :cond_4
    const/4 v12, 0x1

    .line 70
    .local v12, "scale":Z
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 71
    .local v11, "rotation":F
    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 72
    .local v2, "cos":F
    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 74
    .local v15, "sin":F
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v4

    .local v5, "n":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 75
    aget v19, v4, v3

    sub-float v17, v19, v7

    .line 76
    .local v17, "x":F
    add-int/lit8 v19, v3, 0x1

    aget v19, v4, v19

    sub-float v18, v19, v8

    .line 79
    .local v18, "y":F
    if-eqz v12, :cond_5

    .line 80
    mul-float v17, v17, v13

    .line 81
    mul-float v18, v18, v14

    .line 85
    :cond_5
    const/16 v19, 0x0

    cmpl-float v19, v11, v19

    if-eqz v19, :cond_6

    .line 86
    move/from16 v6, v17

    .line 87
    .local v6, "oldX":F
    mul-float v19, v2, v17

    mul-float v20, v15, v18

    sub-float v17, v19, v20

    .line 88
    mul-float v19, v15, v6

    mul-float v20, v2, v18

    add-float v18, v19, v20

    .line 91
    .end local v6    # "oldX":F
    :cond_6
    add-float v19, v9, v17

    add-float v19, v19, v7

    aput v19, v16, v3

    .line 92
    add-int/lit8 v19, v3, 0x1

    add-float v20, v10, v18

    add-float v20, v20, v8

    aput v20, v16, v19

    .line 74
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 69
    .end local v2    # "cos":F
    .end local v3    # "i":I
    .end local v5    # "n":I
    .end local v11    # "rotation":F
    .end local v12    # "scale":Z
    .end local v15    # "sin":F
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_7
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public getVertices()[F
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 137
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 139
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 150
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 153
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 99
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    .line 100
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 102
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 107
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 109
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 133
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 143
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 144
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 146
    return-void
.end method

.method public setVertices([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    .line 117
    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 120
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 124
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 127
    return-void
.end method
