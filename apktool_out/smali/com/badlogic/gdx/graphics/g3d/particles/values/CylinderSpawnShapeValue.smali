.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "CylinderSpawnShapeValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;)V
    .locals 0
    .param p1, "cylinderSpawnShapeValue"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 13
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;)V

    return-object v0
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 13
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 20
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnWidth:F

    iget v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnWidthDiff:F

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v12, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v9, v10, v11

    .line 21
    .local v9, "width":F
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnHeight:F

    iget v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnHeightDiff:F

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v12, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v1, v10, v11

    .line 22
    .local v1, "height":F
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnDepth:F

    iget v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnDepthDiff:F

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v12, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v0, v10, v11

    .line 25
    .local v0, "depth":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v2, v1, v10

    .line 26
    .local v2, "hf":F
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v10

    sub-float v8, v10, v2

    .line 29
    .local v8, "ty":F
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->edges:Z

    if-eqz v10, :cond_1

    .line 30
    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    .line 31
    .local v5, "radiusX":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v6, v0, v10

    .line 38
    .local v6, "radiusZ":F
    :goto_0
    const/4 v7, 0x0

    .line 41
    .local v7, "spawnTheta":F
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-nez v10, :cond_2

    const/4 v3, 0x1

    .local v3, "isRadiusXZero":Z
    :goto_1
    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-nez v10, :cond_3

    const/4 v4, 0x1

    .line 42
    .local v4, "isRadiusZZero":Z
    :goto_2
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 43
    const/high16 v10, 0x43b40000    # 360.0f

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    .line 49
    :cond_0
    :goto_3
    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    mul-float/2addr v10, v5

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v11

    mul-float/2addr v11, v6

    invoke-virtual {p1, v10, v8, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    return-void

    .line 34
    .end local v3    # "isRadiusXZero":Z
    .end local v4    # "isRadiusZZero":Z
    .end local v5    # "radiusX":F
    .end local v6    # "radiusZ":F
    .end local v7    # "spawnTheta":F
    :cond_1
    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v5, v10, v11

    .line 35
    .restart local v5    # "radiusX":F
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v6, v10, v11

    .restart local v6    # "radiusZ":F
    goto :goto_0

    .line 41
    .restart local v7    # "spawnTheta":F
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3    # "isRadiusXZero":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 45
    .restart local v4    # "isRadiusZZero":Z
    :cond_4
    if-eqz v3, :cond_6

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v10

    if-nez v10, :cond_5

    const/high16 v7, -0x3d4c0000    # -90.0f

    :goto_4
    goto :goto_3

    :cond_5
    const/high16 v7, 0x42b40000    # 90.0f

    goto :goto_4

    .line 46
    :cond_6
    if-eqz v4, :cond_0

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v10

    if-nez v10, :cond_7

    const/4 v7, 0x0

    :goto_5
    goto :goto_3

    :cond_7
    const/high16 v7, 0x43340000    # 180.0f

    goto :goto_5
.end method
