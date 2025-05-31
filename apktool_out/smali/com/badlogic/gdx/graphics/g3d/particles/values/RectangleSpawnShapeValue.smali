.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "RectangleSpawnShapeValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 12
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;)V

    return-object v0
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 10
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 18
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnWidth:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnWidthDiff:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v9, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v6, v7, v8

    .line 19
    .local v6, "width":F
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnHeight:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnHeightDiff:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v9, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    .line 20
    .local v2, "height":F
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnDepth:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnDepthDiff:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v9, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 22
    .local v1, "depth":F
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->edges:Z

    if-eqz v7, :cond_e

    .line 24
    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 25
    .local v0, "a":I
    const/4 v3, 0x0

    .local v3, "tx":F
    const/4 v4, 0x0

    .local v4, "ty":F
    const/4 v5, 0x0

    .line 26
    .local v5, "tz":F
    const/4 v7, -0x1

    if-ne v0, v7, :cond_4

    .line 27
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_0

    neg-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 28
    :goto_0
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-nez v7, :cond_3

    .line 29
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_1

    neg-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v4, v7, v8

    .line 30
    :goto_1
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_2

    neg-float v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 61
    :goto_2
    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v5, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 68
    .end local v0    # "a":I
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    .end local v5    # "tz":F
    :goto_3
    return-void

    .line 27
    .restart local v0    # "a":I
    .restart local v3    # "tx":F
    .restart local v4    # "ty":F
    .restart local v5    # "tz":F
    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v6, v7

    goto :goto_0

    .line 29
    :cond_1
    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v2, v7

    goto :goto_1

    .line 30
    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    div-float v5, v1, v7

    goto :goto_2

    .line 33
    :cond_3
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float v4, v7, v8

    .line 34
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    sub-float v5, v7, v8

    goto :goto_2

    .line 37
    :cond_4
    if-nez v0, :cond_9

    .line 39
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_5

    neg-float v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 40
    :goto_4
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_8

    .line 41
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_6

    neg-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v4, v7, v8

    .line 42
    :goto_5
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_7

    neg-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    :goto_6
    goto :goto_2

    .line 39
    :cond_5
    const/high16 v7, 0x40000000    # 2.0f

    div-float v5, v1, v7

    goto :goto_4

    .line 41
    :cond_6
    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v2, v7

    goto :goto_5

    .line 42
    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v6, v7

    goto :goto_6

    .line 45
    :cond_8
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float v4, v7, v8

    .line 46
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v6, v8

    sub-float v3, v7, v8

    goto :goto_2

    .line 51
    :cond_9
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_a

    neg-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v4, v7, v8

    .line 52
    :goto_7
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-nez v7, :cond_d

    .line 53
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_b

    neg-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 54
    :goto_8
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_c

    neg-float v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    :goto_9
    goto/16 :goto_2

    .line 51
    :cond_a
    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v2, v7

    goto :goto_7

    .line 53
    :cond_b
    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v6, v7

    goto :goto_8

    .line 54
    :cond_c
    const/high16 v7, 0x40000000    # 2.0f

    div-float v5, v1, v7

    goto :goto_9

    .line 57
    :cond_d
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v6, v8

    sub-float v3, v7, v8

    .line 58
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    sub-float v5, v7, v8

    goto/16 :goto_2

    .line 64
    .end local v0    # "a":I
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    .end local v5    # "tz":F
    :cond_e
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v6, v8

    sub-float/2addr v7, v8

    iput v7, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 65
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    iput v7, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 66
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    sub-float/2addr v7, v8

    iput v7, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto/16 :goto_3
.end method
