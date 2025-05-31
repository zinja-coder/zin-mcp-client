.class public Lcom/badlogic/gdx/assets/loaders/PixmapLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "PixmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/Pixmap;",
        "Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;",
        ">;"
    }
.end annotation


# instance fields
.field pixmap:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 28
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
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
    .line 28
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;)V
    .locals 1
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 39
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 44
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 45
    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 28
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/PixmapLoader$PixmapParameter;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0
.end method
