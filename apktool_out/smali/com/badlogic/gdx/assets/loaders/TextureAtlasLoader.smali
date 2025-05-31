.class public Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "TextureAtlasLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
        "Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 34
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "atlasFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 55
    .local v2, "imgDir":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz p3, :cond_0

    .line 56
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    iget-boolean v6, p3, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;->flip:Z

    invoke-direct {v5, p2, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v5, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    .line 61
    :goto_0
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 62
    .local v0, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    iget-object v5, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 63
    .local v3, "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    new-instance v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v4}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 64
    .local v4, "params":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-object v5, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 65
    iget-boolean v5, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->useMipMaps:Z

    iput-boolean v5, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 66
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v5, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 67
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v5, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 68
    new-instance v5, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    const-class v7, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v5, v6, v7, v4}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 58
    .end local v0    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v4    # "params":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    :cond_0
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    const/4 v6, 0x0

    invoke-direct {v5, p2, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v5, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    goto :goto_0

    .line 70
    .restart local v0    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 6
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;

    .prologue
    .line 43
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 44
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v3, v4}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Texture;

    .line 45
    .local v2, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 48
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v2    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    return-object v3
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 34
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v0

    return-object v0
.end method
