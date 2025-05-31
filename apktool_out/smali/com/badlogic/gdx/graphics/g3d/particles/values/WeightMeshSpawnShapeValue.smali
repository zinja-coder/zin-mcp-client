.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.source "WeightMeshSpawnShapeValue.java"


# instance fields
.field private distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/math/CumulativeDistribution",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>()V

    .line 24
    new-instance v0, Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/CumulativeDistribution;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;)V

    .line 18
    new-instance v0, Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/CumulativeDistribution;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    .line 19
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 20
    return-void
.end method


# virtual methods
.method public calculateWeights()V
    .locals 24

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/CumulativeDistribution;->clear()V

    .line 37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v12

    .line 38
    .local v12, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v15

    .line 39
    .local v15, "indicesCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v20

    .line 40
    .local v20, "vertexCount":I
    iget v1, v12, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v1, v1, 0x4

    int-to-short v0, v1

    move/from16 v21, v0

    .line 41
    .local v21, "vertexSize":I
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    int-to-short v0, v1

    move/from16 v19, v0

    .line 42
    .local v19, "positionOffset":I
    mul-int v1, v20, v21

    new-array v0, v1, [F

    move-object/from16 v22, v0

    .line 43
    .local v22, "vertices":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 44
    if-lez v15, :cond_0

    .line 45
    new-array v14, v15, [S

    .line 46
    .local v14, "indices":[S
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 49
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_1

    .line 50
    aget-short v1, v14, v13

    mul-int v1, v1, v21

    add-int v16, v1, v19

    .line 51
    .local v16, "p1Offset":I
    add-int/lit8 v1, v13, 0x1

    aget-short v1, v14, v1

    mul-int v1, v1, v21

    add-int v17, v1, v19

    .line 52
    .local v17, "p2Offset":I
    add-int/lit8 v1, v13, 0x2

    aget-short v1, v14, v1

    mul-int v1, v1, v21

    add-int v18, v1, v19

    .line 53
    .local v18, "p3Offset":I
    aget v2, v22, v16

    .local v2, "x1":F
    add-int/lit8 v1, v16, 0x1

    aget v3, v22, v1

    .local v3, "y1":F
    add-int/lit8 v1, v16, 0x2

    aget v4, v22, v1

    .line 54
    .local v4, "z1":F
    aget v5, v22, v17

    .local v5, "x2":F
    add-int/lit8 v1, v17, 0x1

    aget v6, v22, v1

    .local v6, "y2":F
    add-int/lit8 v1, v17, 0x2

    aget v7, v22, v1

    .line 55
    .local v7, "z2":F
    aget v8, v22, v18

    .local v8, "x3":F
    add-int/lit8 v1, v18, 0x1

    aget v9, v22, v1

    .local v9, "y3":F
    add-int/lit8 v1, v18, 0x2

    aget v10, v22, v1

    .line 56
    .local v10, "z3":F
    sub-float v1, v6, v9

    mul-float/2addr v1, v2

    sub-float v23, v9, v3

    mul-float v23, v23, v5

    add-float v1, v1, v23

    sub-float v23, v3, v6

    mul-float v23, v23, v8

    add-float v1, v1, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v1, v1, v23

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 57
    .local v11, "area":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    move-object/from16 v23, v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;

    invoke-direct/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;-><init>(FFFFFFFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v11}, Lcom/badlogic/gdx/math/CumulativeDistribution;->add(Ljava/lang/Object;F)V

    .line 49
    add-int/lit8 v13, v13, 0x3

    goto :goto_0

    .line 62
    .end local v2    # "x1":F
    .end local v3    # "y1":F
    .end local v4    # "z1":F
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .end local v7    # "z2":F
    .end local v8    # "x3":F
    .end local v9    # "y3":F
    .end local v10    # "z3":F
    .end local v11    # "area":F
    .end local v13    # "i":I
    .end local v14    # "indices":[S
    .end local v16    # "p1Offset":I
    .end local v17    # "p2Offset":I
    .end local v18    # "p3Offset":I
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v13, v0, :cond_1

    .line 63
    add-int v16, v13, v19

    .line 64
    .restart local v16    # "p1Offset":I
    add-int v17, v16, v21

    .line 65
    .restart local v17    # "p2Offset":I
    add-int v18, v17, v21

    .line 66
    .restart local v18    # "p3Offset":I
    aget v2, v22, v16

    .restart local v2    # "x1":F
    add-int/lit8 v1, v16, 0x1

    aget v3, v22, v1

    .restart local v3    # "y1":F
    add-int/lit8 v1, v16, 0x2

    aget v4, v22, v1

    .line 67
    .restart local v4    # "z1":F
    aget v5, v22, v17

    .restart local v5    # "x2":F
    add-int/lit8 v1, v17, 0x1

    aget v6, v22, v1

    .restart local v6    # "y2":F
    add-int/lit8 v1, v17, 0x2

    aget v7, v22, v1

    .line 68
    .restart local v7    # "z2":F
    aget v8, v22, v18

    .restart local v8    # "x3":F
    add-int/lit8 v1, v18, 0x1

    aget v9, v22, v1

    .restart local v9    # "y3":F
    add-int/lit8 v1, v18, 0x2

    aget v10, v22, v1

    .line 69
    .restart local v10    # "z3":F
    sub-float v1, v6, v9

    mul-float/2addr v1, v2

    sub-float v23, v9, v3

    mul-float v23, v23, v5

    add-float v1, v1, v23

    sub-float v23, v3, v6

    mul-float v23, v23, v8

    add-float v1, v1, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v1, v1, v23

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 70
    .restart local v11    # "area":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    move-object/from16 v23, v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;

    invoke-direct/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;-><init>(FFFFFFFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v11}, Lcom/badlogic/gdx/math/CumulativeDistribution;->add(Ljava/lang/Object;F)V

    .line 62
    add-int v13, v13, v21

    goto :goto_1

    .line 75
    .end local v2    # "x1":F
    .end local v3    # "y1":F
    .end local v4    # "z1":F
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .end local v7    # "z2":F
    .end local v8    # "x3":F
    .end local v9    # "y3":F
    .end local v10    # "z3":F
    .end local v11    # "area":F
    .end local v16    # "p1Offset":I
    .end local v17    # "p2Offset":I
    .end local v18    # "p3Offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/CumulativeDistribution;->generateNormalized()V

    .line 76
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;)V

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->calculateWeights()V

    .line 30
    return-void
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 8
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 80
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/CumulativeDistribution;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;

    .line 81
    .local v2, "t":Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    .local v0, "a":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v1

    .line 82
    .local v1, "b":F
    iget v3, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    iget v4, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x2:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x3:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y2:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y3:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z2:F

    iget v7, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iget v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z3:F

    iget v7, v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 85
    return-void
.end method
