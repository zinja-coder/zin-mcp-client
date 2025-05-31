.class public Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
.super Ljava/lang/Object;
.source "AmbientCubemap.java"


# instance fields
.field public final data:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x12

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .prologue
    .line 41
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>([F)V

    .line 42
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "copyFrom"    # [F

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    array-length v0, p1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect array size"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method

.method private static final clamp(F)F
    .locals 3
    .param p0, "v"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 25
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "v":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "v":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method


# virtual methods
.method public add(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    aget v3, v2, v0

    add-float/2addr v3, p1

    aput v3, v2, v0

    .line 87
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    .line 88
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    aget v3, v2, v0

    add-float/2addr v3, p3

    aput v3, v2, v0

    move v0, v1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    goto :goto_0

    .line 90
    :cond_0
    return-object p0
.end method

.method public add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 12
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    .prologue
    .line 98
    mul-float v5, p4, p4

    .local v5, "x2":F
    mul-float v6, p5, p5

    .local v6, "y2":F
    mul-float v7, p6, p6

    .line 99
    .local v7, "z2":F
    add-float v8, v5, v6

    add-float v1, v8, v7

    .line 100
    .local v1, "d":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-nez v8, :cond_0

    .line 115
    :goto_0
    return-object p0

    .line 101
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v9, v1

    mul-float v1, v8, v9

    .line 102
    mul-float v4, p1, v1

    .local v4, "rd":F
    mul-float v2, p2, v1

    .local v2, "gd":F
    mul-float v0, p3, v1

    .line 103
    .local v0, "bd":F
    const/4 v8, 0x0

    cmpl-float v8, p4, v8

    if-lez v8, :cond_1

    const/4 v3, 0x0

    .line 104
    .local v3, "idx":I
    :goto_1
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v9, v8, v3

    mul-float v10, v5, v4

    add-float/2addr v9, v10

    aput v9, v8, v3

    .line 105
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v9, v3, 0x1

    aget v10, v8, v9

    mul-float v11, v5, v2

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 106
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v9, v3, 0x2

    aget v10, v8, v9

    mul-float v11, v5, v0

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 107
    const/4 v8, 0x0

    cmpl-float v8, p5, v8

    if-lez v8, :cond_2

    const/4 v3, 0x6

    .line 108
    :goto_2
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v9, v8, v3

    mul-float v10, v6, v4

    add-float/2addr v9, v10

    aput v9, v8, v3

    .line 109
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v9, v3, 0x1

    aget v10, v8, v9

    mul-float v11, v6, v2

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 110
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v9, v3, 0x2

    aget v10, v8, v9

    mul-float v11, v6, v0

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 111
    const/4 v8, 0x0

    cmpl-float v8, p6, v8

    if-lez v8, :cond_3

    const/16 v3, 0xc

    .line 112
    :goto_3
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v9, v8, v3

    mul-float v10, v7, v4

    add-float/2addr v9, v10

    aput v9, v8, v3

    .line 113
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v9, v3, 0x1

    aget v10, v8, v9

    mul-float v11, v7, v2

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 114
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v9, v3, 0x2

    aget v10, v8, v9

    mul-float v11, v7, v0

    add-float/2addr v10, v11

    aput v10, v8, v9

    goto :goto_0

    .line 103
    .end local v3    # "idx":I
    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    .line 107
    .restart local v3    # "idx":I
    :cond_2
    const/16 v3, 0x9

    goto :goto_2

    .line 111
    :cond_3
    const/16 v3, 0xf

    goto :goto_3
.end method

.method public add(FFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 123
    iget v4, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 94
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 127
    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 119
    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "target"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 131
    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v4, v0, v4

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v5, v0, v5

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v6, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 8
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intensity"    # F

    .prologue
    .line 135
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    add-float/2addr v0, v1

    div-float v7, p4, v0

    .line 136
    .local v7, "t":F
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v0, v7

    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v0, v7

    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v3, v0, v7

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v4, v0, v4

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v5, v0, v5

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v6, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public clamp()Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->clamp(F)F

    move-result v2

    aput v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object p0
.end method

.method public clear()Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object p0
.end method

.method public getColor(Lcom/badlogic/gdx/graphics/Color;I)Lcom/badlogic/gdx/graphics/Color;
    .locals 4
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "side"    # I

    .prologue
    .line 68
    mul-int/lit8 p2, p2, 0x3

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v0, v0, p2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v2, p2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v3, p2, 0x2

    aget v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    aput p1, v2, v0

    .line 61
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    aput p2, v2, v1

    .line 62
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    aput p3, v2, v0

    move v0, v1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    goto :goto_0

    .line 64
    :cond_0
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 55
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .prologue
    .line 51
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->set([F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 141
    const-string v1, ""

    .line 142
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 145
    :cond_0
    return-object v1
.end method
