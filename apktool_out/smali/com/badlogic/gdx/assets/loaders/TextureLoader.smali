.class public Lcom/badlogic/gdx/assets/loaders/TextureLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "TextureLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;,
        Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
        ">;"
    }
.end annotation


# instance fields
.field info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 41
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
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
    .line 41
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .prologue
    .line 56
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iput-object p2, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->filename:Ljava/lang/String;

    .line 57
    if-eqz p4, :cond_0

    iget-object v3, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    if-nez v3, :cond_3

    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v0, 0x0

    .line 60
    .local v0, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    const/4 v1, 0x0

    .line 61
    .local v1, "genMipMaps":Z
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 63
    if-eqz p4, :cond_1

    .line 64
    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 65
    iget-boolean v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 66
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v4, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    invoke-static {p3, v0, v1}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 74
    .end local v0    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v1    # "genMipMaps":Z
    .end local v2    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 75
    :cond_2
    return-void

    .line 71
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v4, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 72
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v4, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v4, v3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v0, v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 81
    .local v0, "texture":Lcom/badlogic/gdx/graphics/Texture;
    if-eqz v0, :cond_2

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 86
    :goto_1
    if-eqz p4, :cond_0

    .line 87
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 88
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    .end local v0    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .restart local v0    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    goto :goto_1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 41
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method
