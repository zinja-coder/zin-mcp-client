.class public Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.source "TmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 57
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
    check-cast p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 127
    .local v0, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :try_start_0
    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v6

    iput-object v6, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 128
    if-eqz p3, :cond_1

    iget-boolean v2, p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->generateMipMaps:Z

    .line 129
    .local v2, "generateMipMaps":Z
    :goto_0
    new-instance v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v5}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 130
    .local v5, "texParams":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    iput-boolean v2, v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 131
    if-eqz p3, :cond_0

    .line 132
    iget-object v6, p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v6, v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 133
    iget-object v6, p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v6, v5, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v6, p2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilesets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/files/FileHandle;

    .line 136
    .local v4, "image":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v7, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v6, v4, v7, v5}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    .end local v2    # "generateMipMaps":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "texParams":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t load tilemap \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    .restart local v2    # "generateMipMaps":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "texParams":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v6, p2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadImages(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/files/FileHandle;

    .line 139
    .restart local v4    # "image":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v7, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v6, v4, v7, v5}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 141
    .end local v4    # "image":Lcom/badlogic/gdx/files/FileHandle;
    :cond_3
    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .prologue
    .line 75
    :try_start_0
    iget-boolean v9, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->convertObjectToTileSpace:Z

    iput-boolean v9, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->convertObjectToTileSpace:Z

    .line 76
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 77
    .local v8, "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    iput-object v9, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 78
    new-instance v7, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 79
    .local v7, "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v9, v8}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilesets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    .line 80
    .local v6, "textureFiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v9, v8}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadImages(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 82
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/files/FileHandle;

    .line 83
    .local v5, "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    iget-boolean v9, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->generateMipMaps:Z

    invoke-direct {v4, v5, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 84
    .local v4, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v9, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v10, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v4, v9, v10}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 85
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v5    # "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6    # "textureFiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    .end local v7    # "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    .end local v8    # "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t load tilemap \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "textureFiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    .restart local v7    # "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    .restart local v8    # "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 89
    .local v2, "imageResolver":Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;
    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v9, v8, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilemap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v3

    .line 90
    .local v3, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    return-object v3
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 42
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)V
    .locals 4
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .prologue
    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 101
    if-eqz p4, :cond_0

    .line 102
    iget-boolean v1, p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->convertObjectToTileSpace:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->convertObjectToTileSpace:Z

    .line 107
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v2, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-virtual {p0, v1, p3, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilemap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->convertObjectToTileSpace:Z

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load tilemap \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected loadImages(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .locals 8
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 259
    .local v4, "images":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    const-string v6, "imagelayer"

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 260
    .local v3, "imageLayer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v6, "image"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    .line 261
    .local v2, "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v6, "source"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "source":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 264
    invoke-static {p2, v5}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 266
    .local v0, "handle":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 267
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    .end local v0    # "handle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v3    # "imageLayer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v5    # "source":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 42
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method protected loadTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 48
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p3, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .prologue
    .line 301
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v45

    const-string v46, "tileset"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_10

    .line 302
    const-string v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 303
    .local v27, "name":Ljava/lang/String;
    const-string v45, "firstgid"

    const/16 v46, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v13

    .line 304
    .local v13, "firstgid":I
    const-string v45, "tilewidth"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v7

    .line 305
    .local v7, "tilewidth":I
    const-string v45, "tileheight"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v8

    .line 306
    .local v8, "tileheight":I
    const-string v45, "spacing"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v35

    .line 307
    .local v35, "spacing":I
    const-string v45, "margin"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v26

    .line 308
    .local v26, "margin":I
    const-string v45, "source"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 310
    .local v34, "source":Ljava/lang/String;
    const/16 v29, 0x0

    .line 311
    .local v29, "offsetX":I
    const/16 v30, 0x0

    .line 313
    .local v30, "offsetY":I
    const-string v22, ""

    .line 314
    .local v22, "imageSource":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "imageWidth":I
    const/16 v21, 0x0

    .line 316
    .local v21, "imageHeight":I
    const/16 v19, 0x0

    .line 317
    .local v19, "image":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz v34, :cond_2

    .line 318
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v44

    .line 320
    .local v44, "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p2

    .line 321
    const-string v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 322
    const-string v45, "tilewidth"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v7

    .line 323
    const-string v45, "tileheight"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v8

    .line 324
    const-string v45, "spacing"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v35

    .line 325
    const-string v45, "margin"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v26

    .line 326
    const-string v45, "tileoffset"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v28

    .line 327
    .local v28, "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v28, :cond_0

    .line 328
    const-string v45, "x"

    const/16 v46, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v29

    .line 329
    const-string v45, "y"

    const/16 v46, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v30

    .line 331
    :cond_0
    const-string v45, "image"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v20

    .line 332
    .local v20, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v20, :cond_1

    .line 333
    const-string v45, "source"

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 334
    const-string v45, "width"

    const/16 v46, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v23

    .line 335
    const-string v45, "height"

    const/16 v46, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v21

    .line 336
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 356
    .end local v44    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1
    :goto_0
    new-instance v43, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct/range {v43 .. v43}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    .line 357
    .local v43, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v45

    const-string v46, "firstgid"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    if-eqz v19, :cond_5

    .line 360
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p4

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 362
    .local v4, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v33

    .line 363
    .local v33, "props":Lcom/badlogic/gdx/maps/MapProperties;
    const-string v45, "imagesource"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    const-string v45, "imagewidth"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    const-string v45, "imageheight"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    const-string v45, "tilewidth"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    const-string v45, "tileheight"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    const-string v45, "margin"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    const-string v45, "spacing"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v45

    sub-int v38, v45, v7

    .line 372
    .local v38, "stopWidth":I
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v45

    sub-int v37, v45, v8

    .line 374
    .local v37, "stopHeight":I
    move/from16 v17, v13

    .line 376
    .local v17, "id":I
    move/from16 v6, v26

    .local v6, "y":I
    :goto_1
    move/from16 v0, v37

    if-gt v6, v0, :cond_7

    .line 377
    move/from16 v5, v26

    .local v5, "x":I
    move/from16 v18, v17

    .end local v17    # "id":I
    .local v18, "id":I
    :goto_2
    move/from16 v0, v38

    if-gt v5, v0, :cond_4

    .line 378
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 379
    .local v3, "tileRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v40, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 380
    .local v40, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    .line 381
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    .line 382
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    .line 383
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "id":I
    .restart local v17    # "id":I
    move-object/from16 v0, v43

    move/from16 v1, v18

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 377
    add-int v45, v7, v35

    add-int v5, v5, v45

    move/from16 v18, v17

    .end local v17    # "id":I
    .restart local v18    # "id":I
    goto :goto_2

    .line 338
    .end local v3    # "tileRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v4    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v18    # "id":I
    .end local v20    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v28    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v33    # "props":Lcom/badlogic/gdx/maps/MapProperties;
    .end local v37    # "stopHeight":I
    .end local v38    # "stopWidth":I
    .end local v40    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v43    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .restart local v44    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v12

    .line 339
    .local v12, "e":Ljava/io/IOException;
    new-instance v45, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v46, "Error parsing external tileset."

    invoke-direct/range {v45 .. v46}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 342
    .end local v12    # "e":Ljava/io/IOException;
    .end local v44    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2
    const-string v45, "tileoffset"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v28

    .line 343
    .restart local v28    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v28, :cond_3

    .line 344
    const-string v45, "x"

    const/16 v46, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v29

    .line 345
    const-string v45, "y"

    const/16 v46, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v30

    .line 347
    :cond_3
    const-string v45, "image"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v20

    .line 348
    .restart local v20    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v20, :cond_1

    .line 349
    const-string v45, "source"

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 350
    const-string v45, "width"

    const/16 v46, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v23

    .line 351
    const-string v45, "height"

    const/16 v46, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v21

    .line 352
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v19

    goto/16 :goto_0

    .line 376
    .restart local v4    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local v18    # "id":I
    .restart local v33    # "props":Lcom/badlogic/gdx/maps/MapProperties;
    .restart local v37    # "stopHeight":I
    .restart local v38    # "stopWidth":I
    .restart local v43    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    :cond_4
    add-int v45, v8, v35

    add-int v6, v6, v45

    move/from16 v17, v18

    .end local v18    # "id":I
    .restart local v17    # "id":I
    goto/16 :goto_1

    .line 387
    .end local v4    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v17    # "id":I
    .end local v33    # "props":Lcom/badlogic/gdx/maps/MapProperties;
    .end local v37    # "stopHeight":I
    .end local v38    # "stopWidth":I
    :cond_5
    const-string v45, "tile"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v42

    .line 388
    .local v42, "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    invoke-virtual/range {v42 .. v42}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 389
    .local v41, "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v45, "image"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v20

    .line 390
    if-eqz v20, :cond_6

    .line 391
    const-string v45, "source"

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 392
    const-string v45, "width"

    const/16 v46, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v23

    .line 393
    const-string v45, "height"

    const/16 v46, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v21

    .line 394
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v19

    .line 396
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p4

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 397
    .restart local v4    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v40, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 398
    .restart local v40    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    const-string v45, "id"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v45

    add-int v45, v45, v13

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    .line 399
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    .line 400
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    .line 401
    invoke-interface/range {v40 .. v40}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v45

    move-object/from16 v0, v43

    move/from16 v1, v45

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto/16 :goto_3

    .line 404
    .end local v4    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v40    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v41    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v42    # "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    :cond_7
    const-string v45, "tile"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v42

    .line 406
    .restart local v42    # "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 408
    .local v10, "animatedTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;>;"
    invoke-virtual/range {v42 .. v42}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 409
    .restart local v41    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v45, "id"

    const/16 v46, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v25

    .line 410
    .local v25, "localtid":I
    add-int v45, v13, v25

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v40

    .line 411
    .restart local v40    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v40, :cond_8

    .line 412
    const-string v45, "animation"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v11

    .line 413
    .local v11, "animationElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v11, :cond_a

    .line 415
    new-instance v36, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v36 .. v36}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 416
    .local v36, "staticTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    new-instance v24, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct/range {v24 .. v24}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    .line 417
    .local v24, "intervals":Lcom/badlogic/gdx/utils/IntArray;
    const-string v45, "frame"

    move-object/from16 v0, v45

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 418
    .local v14, "frameElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v45, "tileid"

    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v45

    add-int v45, v45, v13

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v45

    check-cast v45, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 419
    const-string v45, "duration"

    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_5

    .line 422
    .end local v14    # "frameElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_9
    new-instance v9, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-direct {v9, v0, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V

    .line 423
    .local v9, "animatedTile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    invoke-interface/range {v40 .. v40}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v45

    move/from16 v0, v45

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->setId(I)V

    .line 424
    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 425
    move-object/from16 v40, v9

    .line 428
    .end local v9    # "animatedTile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v24    # "intervals":Lcom/badlogic/gdx/utils/IntArray;
    .end local v36    # "staticTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    :cond_a
    const-string v45, "terrain"

    const/16 v46, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 429
    .local v39, "terrain":Ljava/lang/String;
    if-eqz v39, :cond_b

    .line 430
    invoke-interface/range {v40 .. v40}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v45

    const-string v46, "terrain"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    :cond_b
    const-string v45, "probability"

    const/16 v46, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 433
    .local v31, "probability":Ljava/lang/String;
    if-eqz v31, :cond_c

    .line 434
    invoke-interface/range {v40 .. v40}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v45

    const-string v46, "probability"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    :cond_c
    const-string v45, "properties"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v32

    .line 437
    .local v32, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v32, :cond_8

    .line 438
    invoke-interface/range {v40 .. v40}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto/16 :goto_4

    .line 443
    .end local v11    # "animationElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v25    # "localtid":I
    .end local v31    # "probability":Ljava/lang/String;
    .end local v32    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v39    # "terrain":Ljava/lang/String;
    .end local v40    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v41    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_d
    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    .line 444
    .local v40, "tile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    invoke-virtual/range {v40 .. v40}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getId()I

    move-result v45

    move-object/from16 v0, v43

    move/from16 v1, v45

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_6

    .line 447
    .end local v40    # "tile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    :cond_e
    const-string v45, "properties"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v32

    .line 448
    .restart local v32    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v32, :cond_f

    .line 449
    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 451
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    .line 453
    .end local v7    # "tilewidth":I
    .end local v8    # "tileheight":I
    .end local v10    # "animatedTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;>;"
    .end local v13    # "firstgid":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v21    # "imageHeight":I
    .end local v22    # "imageSource":Ljava/lang/String;
    .end local v23    # "imageWidth":I
    .end local v26    # "margin":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v29    # "offsetX":I
    .end local v30    # "offsetY":I
    .end local v32    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v34    # "source":Ljava/lang/String;
    .end local v35    # "spacing":I
    .end local v42    # "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .end local v43    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    :cond_10
    return-void
.end method

.method protected loadTilemap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 20
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .prologue
    .line 153
    new-instance v7, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    .line 155
    .local v7, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    const-string v18, "orientation"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "mapOrientation":Ljava/lang/String;
    const-string v18, "width"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v12

    .line 157
    .local v12, "mapWidth":I
    const-string v18, "height"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    .line 158
    .local v9, "mapHeight":I
    const-string v18, "tilewidth"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v16

    .line 159
    .local v16, "tileWidth":I
    const-string v18, "tileheight"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v15

    .line 160
    .local v15, "tileHeight":I
    const-string v18, "backgroundcolor"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "mapBackgroundColor":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v11

    .line 163
    .local v11, "mapProperties":Lcom/badlogic/gdx/maps/MapProperties;
    if-eqz v10, :cond_0

    .line 164
    const-string v18, "orientation"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    :cond_0
    const-string v18, "width"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v18, "height"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string v18, "tilewidth"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v18, "tileheight"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    if-eqz v8, :cond_1

    .line 171
    const-string v18, "backgroundcolor"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v8}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapTileWidth:I

    .line 174
    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapTileHeight:I

    .line 175
    mul-int v18, v12, v16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapWidthInPixels:I

    .line 176
    mul-int v18, v9, v15

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapHeightInPixels:I

    .line 178
    if-eqz v10, :cond_2

    .line 179
    const-string v18, "staggered"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 180
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_2

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapWidthInPixels:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapWidthInPixels:I

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapHeightInPixels:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    div-int/lit8 v19, v15, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapHeightInPixels:I

    .line 187
    :cond_2
    const-string v18, "properties"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v14

    .line 188
    .local v14, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v14, :cond_3

    .line 189
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 191
    :cond_3
    const-string v18, "tileset"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v17

    .line 192
    .local v17, "tilesets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 193
    .local v3, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v7, v3, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->removeChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    .line 196
    .end local v3    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v6

    .local v6, "j":I
    :goto_1
    if-ge v4, v6, :cond_8

    .line 197
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 198
    .restart local v3    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, "name":Ljava/lang/String;
    const-string v18, "layer"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 196
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    :cond_6
    const-string v18, "objectgroup"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_2

    .line 204
    :cond_7
    const-string v18, "imagelayer"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v7, v3, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    goto :goto_2

    .line 208
    .end local v3    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v13    # "name":Ljava/lang/String;
    :cond_8
    return-object v7
.end method

.method protected loadTilesets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .locals 12
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 217
    .local v5, "images":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    const-string v10, "tileset"

    invoke-virtual {p1, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 218
    .local v8, "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v10, "source"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "source":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 220
    invoke-static {p2, v6}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 221
    .local v9, "tsxFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v10, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    .line 222
    const-string v10, "image"

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 223
    .local v3, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v3, :cond_1

    .line 224
    const-string v10, "image"

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v10

    const-string v11, "source"

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "imageSource":Ljava/lang/String;
    invoke-static {v9, v4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 226
    .local v2, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    .end local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "imageSource":Ljava/lang/String;
    :cond_1
    const-string v10, "tile"

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 229
    .local v7, "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v10, "image"

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v10

    const-string v11, "source"

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .restart local v4    # "imageSource":Ljava/lang/String;
    invoke-static {v9, v4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 231
    .restart local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 235
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "imageSource":Ljava/lang/String;
    .end local v7    # "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v9    # "tsxFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2
    const-string v10, "image"

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 236
    .restart local v3    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v3, :cond_3

    .line 237
    const-string v10, "image"

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v10

    const-string v11, "source"

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .restart local v4    # "imageSource":Ljava/lang/String;
    invoke-static {p2, v4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 239
    .restart local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    .end local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "imageSource":Ljava/lang/String;
    :cond_3
    const-string v10, "tile"

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 242
    .restart local v7    # "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v10, "image"

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v10

    const-string v11, "source"

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .restart local v4    # "imageSource":Ljava/lang/String;
    invoke-static {p2, v4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 244
    .restart local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 249
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "imageSource":Ljava/lang/String;
    .end local v6    # "source":Ljava/lang/String;
    .end local v7    # "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v8    # "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_4
    return-object v5
.end method
