.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "EllipseSpawnShapeValue.java"


# instance fields
.field side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    .line 11
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 11
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 15
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 16
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;)V

    return-object v0
.end method

.method public getSide()Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 2
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;

    .line 80
    .local v0, "shape":Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 81
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 97
    const-string v0, "side"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 98
    return-void
.end method

.method public setSide(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;)V
    .locals 0
    .param p1, "side"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 74
    return-void
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 17
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 23
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnWidthDiff:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v11, v13, v14

    .line 24
    .local v11, "width":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnHeight:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnHeightDiff:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v3, v13, v14

    .line 25
    .local v3, "height":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnDepth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnDepthDiff:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v2, v13, v14

    .line 29
    .local v2, "depth":F
    const/4 v5, 0x0

    .local v5, "minT":F
    const v4, 0x40c90fdb

    .line 30
    .local v4, "maxT":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    if-ne v13, v14, :cond_1

    .line 31
    const v4, 0x40490fdb    # (float)Math.PI

    .line 36
    :cond_0
    :goto_0
    invoke-static {v5, v4}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v10

    .line 39
    .local v10, "t":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->edges:Z

    if-eqz v13, :cond_5

    .line 40
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-nez v13, :cond_2

    .line 41
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v3, v14

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v15

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v16

    mul-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 66
    :goto_1
    return-void

    .line 33
    .end local v10    # "t":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->bottom:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    if-ne v13, v14, :cond_0

    .line 34
    const v4, -0x3fb6f025

    goto :goto_0

    .line 44
    .restart local v10    # "t":F
    :cond_2
    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-nez v13, :cond_3

    .line 45
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v11, v13

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v14

    mul-float/2addr v13, v14

    const/4 v14, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v16

    mul-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    .line 48
    :cond_3
    const/4 v13, 0x0

    cmpl-float v13, v2, v13

    if-nez v13, :cond_4

    .line 49
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v11, v13

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v3, v14

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v15

    mul-float/2addr v14, v15

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    .line 53
    :cond_4
    const/high16 v13, 0x40000000    # 2.0f

    div-float v7, v11, v13

    .line 54
    .local v7, "radiusX":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v8, v3, v13

    .line 55
    .local v8, "radiusY":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v9, v2, v13

    .line 63
    .local v9, "radiusZ":F
    :goto_2
    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v12

    .line 64
    .local v12, "z":F
    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v14, v12, v12

    sub-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v6, v14

    .line 65
    .local v6, "r":F
    mul-float v13, v7, v6

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v14

    mul-float/2addr v13, v14

    mul-float v14, v8, v6

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v15

    mul-float/2addr v14, v15

    mul-float v15, v9, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    .line 58
    .end local v6    # "r":F
    .end local v7    # "radiusX":F
    .end local v8    # "radiusY":F
    .end local v9    # "radiusZ":F
    .end local v12    # "z":F
    :cond_5
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v11, v13

    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    .line 59
    .restart local v7    # "radiusX":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v3, v13

    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v8

    .line 60
    .restart local v8    # "radiusY":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v9

    .restart local v9    # "radiusZ":F
    goto :goto_2
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 91
    const-string v0, "side"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/EllipseSpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method
