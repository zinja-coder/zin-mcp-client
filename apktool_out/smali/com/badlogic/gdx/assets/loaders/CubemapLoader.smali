.class public Lcom/badlogic/gdx/assets/loaders/CubemapLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "CubemapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;,
        Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/Cubemap;",
        "Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;",
        ">;"
    }
.end annotation


# instance fields
.field info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 49
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 42
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 42
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    .prologue
    .line 57
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iput-object p2, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->filename:Ljava/lang/String;

    .line 58
    if-eqz p4, :cond_0

    iget-object v3, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemapData:Lcom/badlogic/gdx/graphics/CubemapData;

    if-nez v3, :cond_5

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 60
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v0, 0x0

    .line 61
    .local v0, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    const/4 v1, 0x0

    .line 62
    .local v1, "genMipMaps":Z
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    .line 64
    if-eqz p4, :cond_1

    .line 65
    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 66
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v4, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    .line 69
    :cond_1
    const-string v3, ".ktx"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".zktx"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    new-instance v4, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;

    invoke-direct {v4, p3, v1}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 76
    .end local v0    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v1    # "genMipMaps":Z
    .end local v2    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/CubemapData;->isPrepared()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/CubemapData;->prepare()V

    .line 77
    :cond_4
    return-void

    .line 73
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v4, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemapData:Lcom/badlogic/gdx/graphics/CubemapData;

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 74
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v4, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    goto :goto_0
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;)Lcom/badlogic/gdx/graphics/Cubemap;
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v0, v1, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    .line 83
    .local v0, "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .line 88
    :goto_1
    if-eqz p4, :cond_0

    .line 89
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cubemap;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 90
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cubemap;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    goto :goto_0

    .line 86
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/Cubemap;

    .end local v0    # "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->info:Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapLoaderInfo;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .restart local v0    # "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    goto :goto_1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 42
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;)Lcom/badlogic/gdx/graphics/Cubemap;

    move-result-object v0

    return-object v0
.end method
