.class public Lcom/badlogic/gdx/assets/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field final assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final assets:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/RefCountedContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field final executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

.field final injected:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

.field final loadQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field loaded:I

.field final loaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field log:Lcom/badlogic/gdx/utils/Logger;

.field final tasks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/badlogic/gdx/assets/AssetLoadingTask;",
            ">;"
        }
    .end annotation
.end field

.field toLoad:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 4
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->injected:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 71
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    .line 74
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    .line 76
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 77
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "AssetManager"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    .line 88
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 89
    const-class v0, Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/MusicLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 90
    const-class v0, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 91
    const-class v0, Lcom/badlogic/gdx/audio/Sound;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/SoundLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/SoundLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 92
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 93
    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 94
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/SkinLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 95
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 96
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 98
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 99
    const-class v0, Lcom/badlogic/gdx/utils/I18NBundle;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 100
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    const-string v1, ".g3dj"

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-direct {v2, v3, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 101
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    const-string v1, ".g3db"

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v3, Lcom/badlogic/gdx/utils/UBJsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/UBJsonReader;-><init>()V

    invoke-direct {v2, v3, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 102
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    const-string v1, ".obj"

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 103
    new-instance v0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    .line 104
    return-void
.end method

.method private addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 4
    .param p1, "assetDesc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;

    .prologue
    .line 453
    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v2, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    .line 454
    .local v0, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    if-nez v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No loader for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    new-instance v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/badlogic/gdx/assets/AssetLoadingTask;-><init>(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/assets/AssetDescriptor;Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/utils/async/AsyncExecutor;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method private handleTaskError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 518
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v5, "Error loading asset."

    invoke-virtual {v4, v5, p1}, Lcom/badlogic/gdx/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v4, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 523
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 524
    .local v3, "task":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    iget-object v0, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 527
    .local v0, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-boolean v4, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-eqz v4, :cond_1

    .line 528
    iget-object v4, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 529
    .local v1, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v4, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    .end local v1    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 537
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    if-eqz v4, :cond_2

    .line 538
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    invoke-interface {v4, v0, p1}, Lcom/badlogic/gdx/assets/AssetErrorListener;->error(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/Throwable;)V

    .line 542
    return-void

    .line 540
    :cond_2
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v4, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private incrementRefCountedDependencies(Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 505
    .local v1, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 513
    :cond_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 508
    .local v2, "dependency":Ljava/lang/String;
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 509
    .local v4, "type":Ljava/lang/Class;
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 510
    .local v0, "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->incRefCount()V

    .line 511
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 6
    .param p1, "parentAssetFilename"    # Ljava/lang/String;
    .param p2, "dependendAssetDesc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 406
    .local v1, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 407
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    .end local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 408
    .restart local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_0
    iget-object v3, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 413
    iget-object v3, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dependency already loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 416
    .local v2, "type":Ljava/lang/Class;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 417
    .local v0, "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->incRefCount()V

    .line 418
    iget-object v3, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .end local v0    # "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    .end local v2    # "type":Ljava/lang/Class;
    :goto_0
    monitor-exit p0

    return-void

    .line 422
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading dependency: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    .end local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private nextTask()V
    .locals 6

    .prologue
    .line 430
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 433
    .local v0, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 435
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 436
    .local v2, "type":Ljava/lang/Class;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 437
    .local v1, "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->incRefCount()V

    .line 438
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    .line 439
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v3, :cond_0

    .line 440
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v3, p0, v4, v5}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    .line 442
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 448
    .end local v1    # "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    .end local v2    # "type":Ljava/lang/Class;
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    goto :goto_0
.end method

.method private updateTask()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 475
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 477
    .local v2, "task":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    invoke-virtual {v2}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->update()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 478
    iget-object v4, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->getAsset()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->addAsset(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 481
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 482
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 485
    iget-boolean v4, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    if-eqz v4, :cond_1

    .line 486
    iget-object v4, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    .line 499
    :goto_0
    return v3

    .line 489
    :cond_1
    iget-object v4, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v4, :cond_2

    .line 490
    iget-object v4, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v5, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v6, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v6, v6, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v4, p0, v5, v6}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    .line 493
    :cond_2
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 494
    .local v0, "endTime":J
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->startTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v0    # "endTime":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addAsset(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "asset":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 465
    .local v0, "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .end local v0    # "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 467
    .restart local v0    # "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-direct {v1, p3}, Lcom/badlogic/gdx/assets/RefCountedContainer;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 9

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 601
    new-instance v5, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    .line 602
    .local v5, "dependencyCount":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<Ljava/lang/String;>;"
    :cond_1
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v8, v8, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-lez v8, :cond_6

    .line 604
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    .line 605
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 606
    .local v1, "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    .local v0, "asset":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 597
    .end local v0    # "asset":Ljava/lang/String;
    .end local v1    # "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v5    # "dependencyCount":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 610
    .restart local v1    # "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v5    # "dependencyCount":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 611
    .restart local v0    # "asset":Ljava/lang/String;
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 612
    .local v3, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 613
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 614
    .local v4, "dependency":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v2

    .line 615
    .local v2, "count":I
    add-int/lit8 v2, v2, 0x1

    .line 616
    invoke-virtual {v5, v4, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_1

    .line 621
    .end local v0    # "asset":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v4    # "dependency":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    .restart local v0    # "asset":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v8

    if-nez v8, :cond_5

    .line 623
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_2

    .line 628
    .end local v0    # "asset":Ljava/lang/String;
    .end local v1    # "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 629
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 630
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 631
    const/4 v8, 0x0

    iput v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 632
    const/4 v8, 0x0

    iput v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 633
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 634
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized containsAsset(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "asset":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .local v3, "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    if-nez v3, :cond_0

    move v4, v5

    .line 223
    :goto_0
    monitor-exit p0

    return v4

    .line 219
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/assets/RefCountedContainer;

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 221
    .local v2, "otherAsset":Ljava/lang/Object;, "TT;"
    if-eq v2, p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "otherAsset":Ljava/lang/Object;, "TT;"
    :cond_3
    move v4, v5

    .line 223
    goto :goto_0

    .line 217
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Disposing."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->clear()V

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finishLoading()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Waiting for loading to complete..."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 377
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Loading complete."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public finishLoadingAsset(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for asset to be loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 386
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    .line 388
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public declared-synchronized get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/assets/AssetDescriptor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "assetDescriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 110
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez v3, :cond_0

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset not loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 111
    .restart local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 112
    .local v2, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    if-nez v2, :cond_1

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset not loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_1
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 114
    .local v1, "assetContainer":Lcom/badlogic/gdx/assets/RefCountedContainer;
    if-nez v1, :cond_2

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset not loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_2
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "asset":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_3

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset not loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_3
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 125
    .local v2, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    if-nez v2, :cond_0

    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset not loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v2    # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 126
    .restart local v2    # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 127
    .local v1, "assetContainer":Lcom/badlogic/gdx/assets/RefCountedContainer;
    if-nez v1, :cond_1

    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset not loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_1
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "asset":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset not loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getAll(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "out":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 137
    .local v1, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 139
    .local v0, "asset":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    iget-object v3, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "asset":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    .end local v1    # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 142
    .restart local v1    # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    :cond_0
    monitor-exit p0

    return-object p2
.end method

.method public declared-synchronized getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "asset":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 230
    .local v0, "assetType":Ljava/lang/Class;
    iget-object v6, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 231
    .local v5, "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/assets/RefCountedContainer;

    const-class v7, Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, "otherAsset":Ljava/lang/Object;, "TT;"
    if-eq v4, p1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    .end local v0    # "assetType":Ljava/lang/Class;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "otherAsset":Ljava/lang/Object;, "TT;"
    .end local v5    # "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getAssetNames()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAssetType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDependencies(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDiagnostics()Ljava/lang/String;
    .locals 9

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 665
    .local v1, "buffer":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 666
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 670
    .local v7, "type":Ljava/lang/Class;
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 671
    .local v0, "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 673
    .local v3, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    const-string v8, ", refs: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 678
    if-eqz v3, :cond_1

    .line 679
    const-string v8, ", deps: ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 681
    .local v2, "dep":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 664
    .end local v0    # "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "dep":Ljava/lang/String;
    .end local v3    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "type":Ljava/lang/Class;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 684
    .restart local v0    # "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "type":Ljava/lang/Class;
    :cond_0
    :try_start_1
    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 688
    .end local v0    # "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    .end local v3    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Class;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    monitor-exit p0

    return-object v8
.end method

.method public declared-synchronized getLoadedAssets()I
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoader(Ljava/lang/Class;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .locals 7
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 270
    .local v3, "loaders":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 280
    :goto_0
    return-object v5

    .line 271
    :cond_1
    if-nez p2, :cond_2

    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    goto :goto_0

    .line 272
    :cond_2
    const/4 v4, 0x0

    .line 273
    .local v4, "result":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    const/4 v2, -0x1

    .line 274
    .local v2, "l":I
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 275
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_3

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 276
    iget-object v4, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    .end local v4    # "result":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    check-cast v4, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    .line 277
    .restart local v4    # "result":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    :cond_4
    move-object v5, v4

    .line 280
    goto :goto_0
.end method

.method public getLogger()Lcom/badlogic/gdx/utils/Logger;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    return-object v0
.end method

.method public declared-synchronized getProgress()F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 577
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 578
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_1
    iget v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueuedAssets()I
    .locals 2

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReferenceCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 650
    .local v0, "type":Ljava/lang/Class;
    if-nez v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    .end local v0    # "type":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 651
    .restart local v0    # "type":Ljava/lang/Class;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1
.end method

.method declared-synchronized injectDependencies(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .param p1, "parentAssetFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p2, "dependendAssetDescs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->injected:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 395
    .local v2, "injected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 396
    .local v0, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 394
    .end local v0    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "injected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 400
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "injected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 242
    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .local v1, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 251
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 252
    .local v0, "assetContainer":Lcom/badlogic/gdx/assets/RefCountedContainer;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "assetContainer":Lcom/badlogic/gdx/assets/RefCountedContainer;
    .end local v1    # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/RefCountedContainer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized load(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 3
    .param p1, "desc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v2, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameter":Lcom/badlogic/gdx/assets/AssetLoaderParameters;, "Lcom/badlogic/gdx/assets/AssetLoaderParameters<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v3

    .line 296
    .local v3, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    if-nez v3, :cond_0

    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No loader for type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v3    # "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 299
    .restart local v3    # "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v5, :cond_1

    .line 300
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 301
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 307
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_3

    .line 308
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 309
    .local v1, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v5, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asset with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' already in preload queue, but has different type (expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {v7}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 317
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v1, v5, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 318
    .restart local v1    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v5, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 319
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asset with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' already in task list, but has different type (expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {v7}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    .end local v1    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_5
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 326
    .local v4, "otherType":Ljava/lang/Class;
    if-eqz v4, :cond_6

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 327
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asset with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' already loaded, but has different type (expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 330
    :cond_6
    iget v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 331
    new-instance v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 332
    .local v0, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 333
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queued: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setErrorListener(Lcom/badlogic/gdx/assets/AssetErrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/assets/AssetErrorListener;

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader",
            "<TT;TP;>;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .locals 4
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader",
            "<TT;TP;>;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p2    # "suffix":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 558
    .restart local p2    # "suffix":Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "loader cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loader set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 561
    .local v0, "loaders":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .end local v0    # "loaders":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .restart local v0    # "loaders":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_2
    if-nez p2, :cond_3

    const-string p2, ""

    .end local p2    # "suffix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    monitor-exit p0

    return-void
.end method

.method public setLogger(Lcom/badlogic/gdx/utils/Logger;)V
    .locals 0
    .param p1, "logger"    # Lcom/badlogic/gdx/utils/Logger;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    .line 644
    return-void
.end method

.method public declared-synchronized setReferenceCount(Ljava/lang/String;I)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "refCount"    # I

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 658
    .local v0, "type":Ljava/lang/Class;
    if-nez v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .end local v0    # "type":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 659
    .restart local v0    # "type":Ljava/lang/Class;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->setRefCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unload(Ljava/lang/String;)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 155
    monitor-enter p0

    const/4 v4, -0x1

    .line 156
    .local v4, "foundIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_0

    .line 157
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v8, v8, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    move v4, v5

    .line 162
    :cond_0
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 163
    iget v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 164
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 165
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unload (from queue): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 156
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 172
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 173
    .local v1, "currAsset":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    iget-object v8, v1, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v8, v8, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    .line 175
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unload (from tasks): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    .end local v1    # "currAsset":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 181
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 182
    .local v7, "type":Ljava/lang/Class;
    if-nez v7, :cond_5

    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Asset not loaded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 184
    :cond_5
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 187
    .local v0, "assetRef":Lcom/badlogic/gdx/assets/RefCountedContainer;
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->decRefCount()V

    .line 188
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I

    move-result v8

    if-gtz v8, :cond_8

    .line 189
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unload (dispose): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 192
    const-class v8, Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v8, :cond_6

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v8}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 195
    :cond_6
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_2
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    .line 203
    .local v2, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-eqz v2, :cond_9

    .line 204
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    .local v3, "dependency":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_3

    .line 198
    .end local v2    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v3    # "dependency":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unload (decrement): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    .restart local v2    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 210
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized update()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 348
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->nextTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->handleTaskError(Ljava/lang/Throwable;)V

    .line 357
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    monitor-exit p0

    return v1

    .line 352
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->updateTask()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1

    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    move v1, v2

    .line 357
    goto :goto_1

    .line 346
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public update(I)Z
    .locals 8
    .param p1, "millis"    # I

    .prologue
    .line 366
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 368
    .local v2, "endTime":J
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v0

    .line 369
    .local v0, "done":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    :cond_0
    return v0

    .line 370
    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0
.end method
