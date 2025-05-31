.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "PolygonRegionLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;",
        "Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultParameters:Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

.field private triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->defaultParameters:Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;

    .line 66
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
    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "params"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->defaultParameters:Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    move-object/from16 p3, v0

    .line 81
    :cond_0
    const/4 v6, 0x0

    .line 83
    .local v6, "image":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p3

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->readerBuffer:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/files/FileHandle;->reader(I)Ljava/io/BufferedReader;

    move-result-object v9

    .line 84
    .local v9, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_1

    .line 85
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->texturePrefix:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 86
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->texturePrefix:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    :cond_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    if-nez v6, :cond_4

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->textureExtensions:[Ljava/lang/String;

    if-eqz v11, :cond_4

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->textureExtensions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v4, v1, v5

    .line 95
    .local v4, "extension":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    .line 96
    .local v10, "sibling":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    .line 94
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "sibling":Lcom/badlogic/gdx/files/FileHandle;
    :cond_3
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_0

    .line 90
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 99
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_4
    if-eqz v6, :cond_5

    .line 100
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const/4 v11, 0x1

    invoke-direct {v2, v11}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 101
    .local v2, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    new-instance v11, Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    const-class v13, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;)V

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 105
    .end local v2    # "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :goto_2
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->getDependencies(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    .line 71
    .local v0, "texture":Lcom/badlogic/gdx/graphics/Texture;
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p0, v1, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->load(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    move-result-object v1

    return-object v1
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .locals 10
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 118
    const/16 v7, 0x100

    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/files/FileHandle;->reader(I)Ljava/io/BufferedReader;

    move-result-object v5

    .line 121
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 122
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 136
    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Polygon shape not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    :cond_1
    :try_start_1
    const-string v7, "s"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "polygonStrings":[Ljava/lang/String;
    array-length v7, v4

    new-array v6, v7, [F

    .line 127
    .local v6, "vertices":[F
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v6

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 128
    aget-object v7, v4, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v8

    invoke-direct {v7, p1, v6, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v7

    .line 133
    .end local v1    # "i":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "n":I
    .end local v4    # "polygonStrings":[Ljava/lang/String;
    .end local v6    # "vertices":[F
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading polygon shape file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 39
    check-cast p4, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    move-result-object v0

    return-object v0
.end method
