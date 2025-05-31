.class public abstract Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "ModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;",
        ">",
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/Model;",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected defaultParameters:Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

.field protected items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 37
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->defaultParameters:Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 35
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    .local p3, "parameters":Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;, "TP;"
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 75
    .local v1, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    .line 76
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    if-nez v0, :cond_1

    .line 95
    :cond_0
    return-object v1

    .line 78
    :cond_1
    new-instance v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Entry;-><init>()V

    .line 79
    .local v4, "item":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;>;"
    iput-object p1, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    .line 80
    iput-object v0, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    .line 81
    iget-object v9, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v9

    .line 82
    :try_start_0
    iget-object v8, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 83
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz p3, :cond_3

    iget-object v7, p3, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;->textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .line 89
    .local v7, "textureParameter":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    :goto_0
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    .line 90
    .local v5, "modelMaterial":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-eqz v8, :cond_2

    .line 91
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    .line 92
    .local v6, "modelTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    new-instance v8, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    const-class v10, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v8, v9, v10, v7}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "modelMaterial":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .end local v6    # "modelTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .end local v7    # "textureParameter":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 85
    :cond_3
    iget-object v8, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->defaultParameters:Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    iget-object v7, v8, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;->textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    goto :goto_0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 35
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/assets/AssetManager;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    .local p4, "parameters":Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;, "TP;"
    return-void
.end method

.method public loadModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 2
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 69
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 1
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)",
            "Lcom/badlogic/gdx/graphics/g3d/Model;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    .local p2, "parameters":Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;, "TP;"
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 1
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .prologue
    .line 64
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 2
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;",
            "TP;)",
            "Lcom/badlogic/gdx/graphics/g3d/Model;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    .local p3, "parameters":Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;, "TP;"
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    .line 54
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-direct {v1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    goto :goto_0
.end method

.method public loadModelData(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 1
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 48
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    return-object v0
.end method

.method public abstract loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;"
        }
    .end annotation
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 8
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/assets/AssetManager;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)",
            "Lcom/badlogic/gdx/graphics/g3d/Model;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    .local p4, "parameters":Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;, "TP;"
    const/4 v1, 0x0

    .line 105
    .local v1, "data":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    iget-object v7, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v7

    .line 106
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    iget-object v6, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-object v1, v0

    .line 109
    iget-object v6, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 106
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_1
    monitor-exit v7

    .line 113
    if-nez v1, :cond_2

    const/4 v5, 0x0

    .line 125
    :goto_1
    return-object v5

    .line 112
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 114
    :cond_2
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/Model;

    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$AssetTextureProvider;

    invoke-direct {v6, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$AssetTextureProvider;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-direct {v5, v1, v6}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 117
    .local v5, "result":Lcom/badlogic/gdx/graphics/g3d/Model;
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/Model;->getManagedDisposables()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 118
    .local v3, "disposables":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/utils/Disposable;>;"
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Disposable;

    .line 120
    .local v2, "disposable":Lcom/badlogic/gdx/utils/Disposable;
    instance-of v6, v2, Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v6, :cond_3

    .line 121
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 124
    .end local v2    # "disposable":Lcom/badlogic/gdx/utils/Disposable;
    :cond_4
    const/4 v1, 0x0

    .line 125
    goto :goto_1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 35
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/ModelLoader;, "Lcom/badlogic/gdx/assets/loaders/ModelLoader<TP;>;"
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method
