.class public Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.source "AtlasTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;,
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;",
        ">;"
    }
.end annotation


# instance fields
.field protected trackedTextures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    .line 109
    return-void
.end method

.method private setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 3
    .param p1, "min"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "mag"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .prologue
    .line 194
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 195
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    goto :goto_0

    .line 197
    .end local v1    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 198
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 61
    check-cast p3, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 119
    .local v1, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :try_start_0
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v8, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    iput-object v8, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 121
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v9, "properties"

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    .line 122
    .local v5, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v5, :cond_1

    .line 123
    const-string v8, "property"

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 124
    .local v6, "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v8, "name"

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "name":Ljava/lang/String;
    const-string v8, "value"

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "value":Ljava/lang/String;
    const-string v8, "atlas"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 127
    invoke-static {p2, v7}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 128
    .local v0, "atlasHandle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v8, v0, v9}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v0    # "atlasHandle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v6    # "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v9, "Unable to parse .tmx file."

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_1
    return-object v1
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "parameter"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .prologue
    .line 140
    if-eqz p2, :cond_0

    .line 141
    :try_start_0
    iget-boolean v7, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->convertObjectToTileSpace:Z

    iput-boolean v7, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    .line 146
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 147
    .local v6, "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v7

    iput-object v7, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 148
    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 149
    .local v3, "atlases":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;>;"
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v7, v6}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadAtlas(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 150
    .local v1, "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    if-nez v1, :cond_1

    .line 151
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v8, "Couldn\'t load atlas"

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "atlases":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;>;"
    .end local v6    # "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v4

    .line 163
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t load tilemap \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 143
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    iput-boolean v7, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    goto :goto_0

    .line 154
    .restart local v1    # "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3    # "atlases":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;>;"
    .restart local v6    # "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 155
    .local v0, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 158
    .local v2, "atlasResolver":Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v7, v6, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v5

    .line 159
    .local v5, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V

    .line 160
    iget-object v7, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v8, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p0, v7, v8}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    return-object v5
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 61
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V
    .locals 4
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .prologue
    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 204
    if-eqz p4, :cond_0

    .line 205
    iget-boolean v1, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->convertObjectToTileSpace:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    .line 211
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-virtual {p0, v1, p3, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 207
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
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

.method protected loadAtlas(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 9
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 169
    const-string v7, "properties"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    .line 171
    .local v1, "e":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v1, :cond_3

    .line 172
    const-string v7, "property"

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 173
    .local v4, "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v7, "name"

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "name":Ljava/lang/String;
    const-string v7, "value"

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "value":Ljava/lang/String;
    const-string v7, "atlas"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 176
    if-nez v5, :cond_1

    .line 177
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_1
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 185
    invoke-static {p2, v5}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 190
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 189
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".atlas"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 190
    .local v0, "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v0, v6

    goto :goto_0
.end method

.method protected loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 17
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "resolver"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    .prologue
    .line 227
    new-instance v7, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    .line 229
    .local v7, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    const-string v15, "orientation"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, "mapOrientation":Ljava/lang/String;
    const-string v15, "width"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v12

    .line 231
    .local v12, "mapWidth":I
    const-string v15, "height"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    .line 232
    .local v9, "mapHeight":I
    const-string v15, "tilewidth"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v14

    .line 233
    .local v14, "tileWidth":I
    const-string v15, "tileheight"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v13

    .line 234
    .local v13, "tileHeight":I
    const-string v15, "backgroundcolor"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "mapBackgroundColor":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v11

    .line 237
    .local v11, "mapProperties":Lcom/badlogic/gdx/maps/MapProperties;
    if-eqz v10, :cond_0

    .line 238
    const-string v15, "orientation"

    invoke-virtual {v11, v15, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    :cond_0
    const-string v15, "width"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    const-string v15, "height"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const-string v15, "tilewidth"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v15, "tileheight"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    if-eqz v8, :cond_1

    .line 245
    const-string v15, "backgroundcolor"

    invoke-virtual {v11, v15, v8}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapTileWidth:I

    .line 249
    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapTileHeight:I

    .line 250
    mul-int v15, v12, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapWidthInPixels:I

    .line 251
    mul-int v15, v9, v13

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapHeightInPixels:I

    .line 253
    if-eqz v10, :cond_2

    .line 254
    const-string v15, "staggered"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 255
    const/4 v15, 0x1

    if-le v9, v15, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapWidthInPixels:I

    div-int/lit8 v16, v14, 0x2

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapWidthInPixels:I

    .line 257
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapHeightInPixels:I

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v13, 0x2

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapHeightInPixels:I

    .line 262
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v6

    .local v6, "j":I
    :goto_0
    if-ge v5, v6, :cond_7

    .line 263
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 264
    .local v3, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "elementName":Ljava/lang/String;
    const-string v15, "properties"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 266
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 262
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 267
    :cond_4
    const-string v15, "tileset"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v7, v3, v1, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadTileset(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)V

    goto :goto_1

    .line 269
    :cond_5
    const-string v15, "layer"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_1

    .line 271
    :cond_6
    const-string v15, "objectgroup"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_1

    .line 275
    .end local v3    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "elementName":Ljava/lang/String;
    :cond_7
    return-object v7
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .prologue
    .line 219
    if-eqz p4, :cond_0

    .line 220
    iget-object v0, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 61
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method protected loadTileset(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)V
    .locals 49
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p3, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "resolver"    # Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    .prologue
    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v46

    const-string v47, "tileset"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_17

    .line 280
    const-string v46, "name"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 281
    .local v23, "name":Ljava/lang/String;
    const-string v46, "firstgid"

    const/16 v47, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    .line 282
    .local v11, "firstgid":I
    const-string v46, "tilewidth"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v44

    .line 283
    .local v44, "tilewidth":I
    const-string v46, "tileheight"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v41

    .line 284
    .local v41, "tileheight":I
    const-string v46, "spacing"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v34

    .line 285
    .local v34, "spacing":I
    const-string v46, "margin"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v22

    .line 286
    .local v22, "margin":I
    const-string v46, "source"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 288
    .local v33, "source":Ljava/lang/String;
    const/16 v25, 0x0

    .line 289
    .local v25, "offsetX":I
    const/16 v26, 0x0

    .line 291
    .local v26, "offsetY":I
    const-string v18, ""

    .line 292
    .local v18, "imageSource":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "imageWidth":I
    const/16 v17, 0x0

    .line 294
    .local v17, "imageHeight":I
    const/4 v15, 0x0

    .line 295
    .local v15, "image":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz v33, :cond_3

    .line 296
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v45

    .line 298
    .local v45, "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p2

    .line 299
    const-string v46, "name"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 300
    const-string v46, "tilewidth"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v44

    .line 301
    const-string v46, "tileheight"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v41

    .line 302
    const-string v46, "spacing"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v34

    .line 303
    const-string v46, "margin"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v22

    .line 304
    const-string v46, "tileoffset"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v24

    .line 305
    .local v24, "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v24, :cond_0

    .line 306
    const-string v46, "x"

    const/16 v47, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v25

    .line 307
    const-string v46, "y"

    const/16 v47, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v26

    .line 309
    :cond_0
    const-string v46, "image"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v16

    .line 310
    .local v16, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v16, :cond_1

    .line 311
    const-string v46, "source"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 312
    const-string v46, "width"

    const/16 v47, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v19

    .line 313
    const-string v46, "height"

    const/16 v47, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v17

    .line 314
    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 334
    .end local v45    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    const-string v47, "atlas"

    const-class v48, Ljava/lang/String;

    invoke-virtual/range {v46 .. v48}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 335
    .local v8, "atlasFilePath":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 336
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ".atlas"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 337
    .local v7, "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v46

    if-eqz v46, :cond_2

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v8

    .line 339
    .end local v7    # "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2
    if-nez v8, :cond_5

    .line 340
    new-instance v46, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v47, "The map is missing the \'atlas\' property"

    invoke-direct/range {v46 .. v47}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 316
    .end local v8    # "atlasFilePath":Ljava/lang/String;
    .end local v16    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v24    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v45    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v10

    .line 317
    .local v10, "e":Ljava/io/IOException;
    new-instance v46, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v47, "Error parsing external tileset."

    invoke-direct/range {v46 .. v47}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 320
    .end local v10    # "e":Ljava/io/IOException;
    .end local v45    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :cond_3
    const-string v46, "tileoffset"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v24

    .line 321
    .restart local v24    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v24, :cond_4

    .line 322
    const-string v46, "x"

    const/16 v47, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v25

    .line 323
    const-string v46, "y"

    const/16 v47, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v26

    .line 325
    :cond_4
    const-string v46, "image"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v16

    .line 326
    .restart local v16    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v16, :cond_1

    .line 327
    const-string v46, "source"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 328
    const-string v46, "width"

    const/16 v47, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v19

    .line 329
    const-string v46, "height"

    const/16 v47, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v17

    .line 330
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v15

    goto/16 :goto_0

    .line 344
    .restart local v8    # "atlasFilePath":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 345
    .local v9, "atlasHandle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 346
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p4

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;->getAtlas(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v6

    .line 347
    .local v6, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v32

    .line 349
    .local v32, "regionsName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/badlogic/gdx/graphics/Texture;

    .line 350
    .local v37, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 353
    .end local v37    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_6
    new-instance v43, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct/range {v43 .. v43}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    .line 354
    .local v43, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v29

    .line 355
    .local v29, "props":Lcom/badlogic/gdx/maps/MapProperties;
    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    .line 356
    const-string v46, "firstgid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    const-string v46, "imagesource"

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string v46, "imagewidth"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v46, "imageheight"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    const-string v46, "tilewidth"

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string v46, "tileheight"

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string v46, "margin"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    const-string v46, "spacing"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 367
    .local v30, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    if-eqz v30, :cond_7

    .line 368
    new-instance v38, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 369
    .local v38, "tile":Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    move/from16 v46, v0

    add-int v42, v11, v46

    .line 370
    .local v42, "tileid":I
    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->setId(I)V

    .line 371
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->setOffsetX(F)V

    .line 372
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->setOffsetY(F)V

    .line 373
    move-object/from16 v0, v43

    move/from16 v1, v42

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_2

    .line 377
    .end local v30    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v38    # "tile":Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;
    .end local v42    # "tileid":I
    :cond_8
    const-string v46, "tile"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 378
    .local v39, "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v46, "id"

    const/16 v47, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v46

    add-int v42, v11, v46

    .line 379
    .restart local v42    # "tileid":I
    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v38

    .line 380
    .local v38, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-nez v38, :cond_b

    .line 381
    const-string v46, "image"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v16

    .line 382
    if-eqz v16, :cond_b

    .line 384
    const-string v46, "source"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 385
    .local v31, "regionName":Ljava/lang/String;
    const/16 v46, 0x0

    const/16 v47, 0x2e

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v47

    move-object/from16 v0, v31

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 386
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v30

    .line 387
    .restart local v30    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    if-nez v30, :cond_a

    new-instance v46, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Tileset region not found: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 388
    :cond_a
    new-instance v38, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    .end local v38    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 389
    .restart local v38    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    .line 390
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    .line 391
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    .line 392
    move-object/from16 v0, v43

    move/from16 v1, v42

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 395
    .end local v30    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v31    # "regionName":Ljava/lang/String;
    :cond_b
    if-eqz v38, :cond_9

    .line 396
    const-string v46, "terrain"

    const/16 v47, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 397
    .local v36, "terrain":Ljava/lang/String;
    if-eqz v36, :cond_c

    .line 398
    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    const-string v47, "terrain"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    :cond_c
    const-string v46, "probability"

    const/16 v47, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 401
    .local v27, "probability":Ljava/lang/String;
    if-eqz v27, :cond_d

    .line 402
    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    const-string v47, "probability"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :cond_d
    const-string v46, "properties"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v28

    .line 405
    .local v28, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v28, :cond_9

    .line 406
    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto/16 :goto_3

    .line 411
    .end local v27    # "probability":Ljava/lang/String;
    .end local v28    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v36    # "terrain":Ljava/lang/String;
    .end local v38    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v39    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v42    # "tileid":I
    :cond_e
    const-string v46, "tile"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v40

    .line 413
    .local v40, "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 415
    .local v4, "animatedTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;>;"
    invoke-virtual/range {v40 .. v40}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 416
    .restart local v39    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v46, "id"

    const/16 v47, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v21

    .line 417
    .local v21, "localtid":I
    add-int v46, v11, v21

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v38

    .line 418
    .restart local v38    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v38, :cond_f

    .line 419
    const-string v46, "animation"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    .line 420
    .local v5, "animationElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v5, :cond_11

    .line 422
    new-instance v35, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v35 .. v35}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 423
    .local v35, "staticTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    new-instance v20, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct/range {v20 .. v20}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    .line 424
    .local v20, "intervals":Lcom/badlogic/gdx/utils/IntArray;
    const-string v46, "frame"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 425
    .local v12, "frameElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v46, "tileid"

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v46

    add-int v46, v46, v11

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v46

    check-cast v46, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 426
    const-string v46, "duration"

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_5

    .line 429
    .end local v12    # "frameElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_10
    new-instance v3, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V

    .line 430
    .local v3, "animatedTile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v46

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->setId(I)V

    .line 431
    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 432
    move-object/from16 v38, v3

    .line 435
    .end local v3    # "animatedTile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "intervals":Lcom/badlogic/gdx/utils/IntArray;
    .end local v35    # "staticTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    :cond_11
    const-string v46, "terrain"

    const/16 v47, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 436
    .restart local v36    # "terrain":Ljava/lang/String;
    if-eqz v36, :cond_12

    .line 437
    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    const-string v47, "terrain"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    :cond_12
    const-string v46, "probability"

    const/16 v47, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 440
    .restart local v27    # "probability":Ljava/lang/String;
    if-eqz v27, :cond_13

    .line 441
    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    const-string v47, "probability"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    :cond_13
    const-string v46, "properties"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v28

    .line 444
    .restart local v28    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v28, :cond_f

    .line 445
    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto/16 :goto_4

    .line 450
    .end local v5    # "animationElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v21    # "localtid":I
    .end local v27    # "probability":Ljava/lang/String;
    .end local v28    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v36    # "terrain":Ljava/lang/String;
    .end local v38    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v39    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_14
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    .line 451
    .local v38, "tile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    invoke-virtual/range {v38 .. v38}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getId()I

    move-result v46

    move-object/from16 v0, v43

    move/from16 v1, v46

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_6

    .line 454
    .end local v38    # "tile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    :cond_15
    const-string v46, "properties"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v28

    .line 455
    .restart local v28    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v28, :cond_16

    .line 456
    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 458
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    .line 460
    .end local v4    # "animatedTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;>;"
    .end local v6    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local v8    # "atlasFilePath":Ljava/lang/String;
    .end local v9    # "atlasHandle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v11    # "firstgid":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v16    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v17    # "imageHeight":I
    .end local v18    # "imageSource":Ljava/lang/String;
    .end local v19    # "imageWidth":I
    .end local v22    # "margin":I
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v25    # "offsetX":I
    .end local v26    # "offsetY":I
    .end local v28    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v29    # "props":Lcom/badlogic/gdx/maps/MapProperties;
    .end local v32    # "regionsName":Ljava/lang/String;
    .end local v33    # "source":Ljava/lang/String;
    .end local v34    # "spacing":I
    .end local v40    # "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .end local v41    # "tileheight":I
    .end local v43    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v44    # "tilewidth":I
    :cond_17
    return-void
.end method
