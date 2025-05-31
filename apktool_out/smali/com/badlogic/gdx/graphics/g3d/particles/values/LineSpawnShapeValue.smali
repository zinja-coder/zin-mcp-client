.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "LineSpawnShapeValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 13
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;)V

    return-object v0
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 7
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 19
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnWidth:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnWidthDiff:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 20
    .local v3, "width":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnHeight:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnHeightDiff:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 21
    .local v2, "height":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnDepth:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnDepthDiff:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/LineSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 23
    .local v1, "depth":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    .line 24
    .local v0, "a":F
    mul-float v4, v0, v3

    iput v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 25
    mul-float v4, v0, v2

    iput v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 26
    mul-float v4, v0, v1

    iput v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 27
    return-void
.end method
