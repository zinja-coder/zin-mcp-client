.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.source "MeshSpawnShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;
    }
.end annotation


# instance fields
.field protected mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field protected model:Lcom/badlogic/gdx/graphics/g3d/Model;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V

    .line 54
    return-void
.end method


# virtual methods
.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 87
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v2

    .line 88
    .local v2, "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v0

    .line 89
    .local v0, "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 91
    .local v1, "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    const-string v3, "index"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p0, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 93
    .end local v1    # "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 3
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;

    .line 62
    .local v0, "spawnShapeValue":Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 63
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 80
    .local v0, "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    const-string v1, "index"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .end local v0    # "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    :cond_0
    return-void
.end method

.method public setMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 1
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 74
    return-void
.end method

.method public setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 2
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Mesh vertices must have Usage.Position"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 69
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 70
    return-void
.end method
