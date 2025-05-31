.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "PointSpawnShapeValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 12
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;)V

    return-object v0
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 18
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnWidth:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnWidthDiff:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 19
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnHeight:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnHeightDiff:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 20
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnDepth:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnDepthDiff:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 21
    return-void
.end method
