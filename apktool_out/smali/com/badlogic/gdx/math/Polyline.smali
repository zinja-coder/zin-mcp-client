.class public Lcom/badlogic/gdx/math/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field private calculateLength:Z

.field private calculateScaledLength:Z

.field private dirty:Z

.field private length:F

.field private final localVertices:[F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private scaledLength:F

.field private worldVertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 28
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 29
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 30
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    .line 34
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 28
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 29
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 30
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 37
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polylines must contain at least 2 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    .line 39
    return-void
.end method


# virtual methods
.method public calculateLength()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 185
    return-void
.end method

.method public calculateScaledLength()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 189
    return-void
.end method

.method public dirty()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 193
    return-void
.end method

.method public getLength()F
    .locals 8

    .prologue
    .line 91
    iget-boolean v4, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    .line 101
    :goto_0
    return v4

    .line 92
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 94
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    array-length v4, v4

    add-int/lit8 v1, v4, -0x2

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 96
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    aget v5, v5, v0

    sub-float v2, v4, v5

    .line 97
    .local v2, "x":F
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    sub-float v3, v4, v5

    .line 98
    .local v3, "y":F
    iget v4, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    .line 95
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 101
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    goto :goto_0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    return v0
.end method

.method public getScaledLength()F
    .locals 8

    .prologue
    .line 106
    iget-boolean v4, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    .line 116
    :goto_0
    return v4

    .line 107
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 109
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    array-length v4, v4

    add-int/lit8 v1, v4, -0x2

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 111
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 112
    .local v2, "x":F
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    iget v6, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 113
    .local v3, "y":F
    iget v4, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    .line 110
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 116
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    goto :goto_0
.end method

.method public getTransformedVertices()[F
    .locals 21

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    move-object/from16 v16, v0

    .line 86
    :cond_0
    return-object v16

    .line 49
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    .line 52
    .local v4, "localVertices":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    :cond_2
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    .line 54
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    move-object/from16 v16, v0

    .line 55
    .local v16, "worldVertices":[F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/math/Polyline;->x:F

    .line 56
    .local v9, "positionX":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/math/Polyline;->y:F

    .line 57
    .local v10, "positionY":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/math/Polyline;->originX:F

    .line 58
    .local v7, "originX":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/math/Polyline;->originY:F

    .line 59
    .local v8, "originY":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    .line 60
    .local v13, "scaleX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 61
    .local v14, "scaleY":F
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v13, v19

    if-nez v19, :cond_4

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v14, v19

    if-eqz v19, :cond_7

    :cond_4
    const/4 v12, 0x1

    .line 62
    .local v12, "scale":Z
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    .line 63
    .local v11, "rotation":F
    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 64
    .local v2, "cos":F
    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 66
    .local v15, "sin":F
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v4

    .local v5, "n":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 67
    aget v19, v4, v3

    sub-float v17, v19, v7

    .line 68
    .local v17, "x":F
    add-int/lit8 v19, v3, 0x1

    aget v19, v4, v19

    sub-float v18, v19, v8

    .line 71
    .local v18, "y":F
    if-eqz v12, :cond_5

    .line 72
    mul-float v17, v17, v13

    .line 73
    mul-float v18, v18, v14

    .line 77
    :cond_5
    const/16 v19, 0x0

    cmpl-float v19, v11, v19

    if-eqz v19, :cond_6

    .line 78
    move/from16 v6, v17

    .line 79
    .local v6, "oldX":F
    mul-float v19, v2, v17

    mul-float v20, v15, v18

    sub-float v17, v19, v20

    .line 80
    mul-float v19, v15, v6

    mul-float v20, v2, v18

    add-float v18, v19, v20

    .line 83
    .end local v6    # "oldX":F
    :cond_6
    add-float v19, v9, v17

    add-float v19, v19, v7

    aput v19, v16, v3

    .line 84
    add-int/lit8 v19, v3, 0x1

    add-float v20, v10, v18

    add-float v20, v20, v8

    aput v20, v16, v19

    .line 66
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 61
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
    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 165
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 167
    return-void
.end method

.method public scale(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    const/4 v1, 0x1

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 179
    iput-boolean v1, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 180
    iput-boolean v1, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 181
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->originX:F

    .line 149
    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->originY:F

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 151
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 154
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    .line 155
    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 157
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 162
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v0, 0x1

    .line 170
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    .line 171
    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 172
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 173
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 174
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 196
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    .line 197
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 199
    return-void
.end method
