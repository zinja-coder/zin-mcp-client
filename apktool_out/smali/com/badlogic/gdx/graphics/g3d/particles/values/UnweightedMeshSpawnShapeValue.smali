.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.source "UnweightedMeshSpawnShapeValue.java"


# instance fields
.field private indices:[S

.field private positionOffset:I

.field private triangleCount:I

.field private vertexCount:I

.field private vertexSize:I

.field private vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 19
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;)V

    return-object v0
.end method

.method public setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 3
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 26
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    .line 27
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    .line 28
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    .line 29
    .local v0, "indicesCount":I
    if-lez v0, :cond_0

    .line 30
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    .line 31
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 32
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->triangleCount:I

    .line 35
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexCount:I

    .line 36
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexCount:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    .line 37
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 38
    return-void

    .line 34
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    goto :goto_0
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 15
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 42
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    if-nez v9, :cond_0

    .line 44
    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexCount:I

    add-int/lit8 v9, v9, -0x3

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v9

    iget v14, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int v13, v9, v14

    .line 45
    .local v13, "triangleIndex":I
    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    add-int v10, v13, v9

    .line 46
    .local v10, "p1Offset":I
    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    add-int v11, v10, v9

    .line 47
    .local v11, "p2Offset":I
    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    add-int v12, v11, v9

    .line 48
    .local v12, "p3Offset":I
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v0, v9, v10

    .local v0, "x1":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v10, 0x1

    aget v1, v9, v14

    .local v1, "y1":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v10, 0x2

    aget v2, v9, v14

    .line 49
    .local v2, "z1":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v3, v9, v11

    .local v3, "x2":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v11, 0x1

    aget v4, v9, v14

    .local v4, "y2":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v11, 0x2

    aget v5, v9, v14

    .line 50
    .local v5, "z2":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v6, v9, v12

    .local v6, "x3":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v12, 0x1

    aget v7, v9, v14

    .local v7, "y3":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v12, 0x2

    aget v8, v9, v14

    .local v8, "z3":F
    move-object/from16 v9, p1

    .line 51
    invoke-static/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->pick(FFFFFFFFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 64
    :goto_0
    return-void

    .line 55
    .end local v0    # "x1":F
    .end local v1    # "y1":F
    .end local v2    # "z1":F
    .end local v3    # "x2":F
    .end local v4    # "y2":F
    .end local v5    # "z2":F
    .end local v6    # "x3":F
    .end local v7    # "y3":F
    .end local v8    # "z3":F
    .end local v10    # "p1Offset":I
    .end local v11    # "p2Offset":I
    .end local v12    # "p3Offset":I
    .end local v13    # "triangleIndex":I
    :cond_0
    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->triangleCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v9

    mul-int/lit8 v13, v9, 0x3

    .line 56
    .restart local v13    # "triangleIndex":I
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    aget-short v9, v9, v13

    iget v14, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int/2addr v9, v14

    iget v14, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    add-int v10, v9, v14

    .line 57
    .restart local v10    # "p1Offset":I
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    add-int/lit8 v14, v13, 0x1

    aget-short v9, v9, v14

    iget v14, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int/2addr v9, v14

    iget v14, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    add-int v11, v9, v14

    .line 58
    .restart local v11    # "p2Offset":I
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    add-int/lit8 v14, v13, 0x2

    aget-short v9, v9, v14

    iget v14, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int/2addr v9, v14

    iget v14, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    add-int v12, v9, v14

    .line 59
    .restart local v12    # "p3Offset":I
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v0, v9, v10

    .restart local v0    # "x1":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v10, 0x1

    aget v1, v9, v14

    .restart local v1    # "y1":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v10, 0x2

    aget v2, v9, v14

    .line 60
    .restart local v2    # "z1":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v3, v9, v11

    .restart local v3    # "x2":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v11, 0x1

    aget v4, v9, v14

    .restart local v4    # "y2":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v11, 0x2

    aget v5, v9, v14

    .line 61
    .restart local v5    # "z2":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v6, v9, v12

    .restart local v6    # "x3":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v12, 0x1

    aget v7, v9, v14

    .restart local v7    # "y3":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    add-int/lit8 v14, v12, 0x2

    aget v8, v9, v14

    .restart local v8    # "z3":F
    move-object/from16 v9, p1

    .line 62
    invoke-static/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->pick(FFFFFFFFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0
.end method
