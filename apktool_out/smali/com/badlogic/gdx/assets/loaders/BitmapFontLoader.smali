.class public Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "BitmapFontLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
        "Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 39
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 49
    .local v0, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    if-eqz p3, :cond_1

    iget-object v6, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->bitmapFontData:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    if-eqz v6, :cond_1

    .line 50
    iget-object v6, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->bitmapFontData:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iput-object v6, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    if-eqz p3, :cond_2

    iget-boolean v6, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->flip:Z

    :goto_1
    invoke-direct {v7, p2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v7, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 55
    if-eqz p3, :cond_3

    iget-object v6, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 56
    new-instance v6, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v7, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    const-class v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 58
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePaths()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 59
    iget-object v6, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePath(I)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 62
    .local v4, "resolved":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v5}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 64
    .local v5, "textureParams":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    if-eqz p3, :cond_4

    .line 65
    iget-boolean v6, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->genMipMaps:Z

    iput-boolean v6, v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 66
    iget-object v6, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v6, v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 67
    iget-object v6, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v6, v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 70
    :cond_4
    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v6, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v4, v6, v5}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 71
    .local v1, "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 39
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    .prologue
    .line 80
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 8
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    .prologue
    .line 84
    if-eqz p4, :cond_1

    iget-object v5, p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 85
    iget-object v5, p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    const-class v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p1, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 86
    .local v0, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    iget-object v5, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    .line 89
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    if-nez v3, :cond_0

    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find font region "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in atlas "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_0
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v5, p3, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 96
    .end local v0    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :goto_0
    return-object v5

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePaths()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    new-array v4, v5, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 93
    .local v4, "regs":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 94
    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePath(I)Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v5, v7}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v6, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v6, v4, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v4, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    goto :goto_0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 39
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    return-object v0
.end method
