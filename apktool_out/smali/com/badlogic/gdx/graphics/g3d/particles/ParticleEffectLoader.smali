.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "ParticleEffectLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;",
        ">;"
    }
.end annotation


# instance fields
.field protected items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    .line 34
    return-void
.end method

.method private find(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 29
    check-cast p3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v6, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 42
    .local v6, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v7, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    invoke-virtual {v6, v7, p2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 43
    .local v2, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;>;"
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v8

    .line 45
    :try_start_0
    new-instance v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Entry;-><init>()V

    .line 46
    .local v4, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    iput-object p1, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    .line 47
    iput-object v2, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    .line 48
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getAssets()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 50
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 53
    .local v3, "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    .line 56
    .local v0, "assetData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<*>;"
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    const-class v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    if-ne v7, v8, :cond_1

    .line 61
    new-instance v7, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-direct {v7, v8, v9, p3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v0    # "assetData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<*>;"
    .end local v3    # "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    .end local v4    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 64
    .restart local v0    # "assetData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<*>;"
    .restart local v3    # "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    .restart local v4    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v7, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v0    # "assetData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<*>;"
    :cond_2
    return-object v3
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 29
    check-cast p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    .prologue
    .line 37
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .locals 8
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "effectData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v7

    .line 103
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 105
    .local v3, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    iget-object v6, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    iget-object v6, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    move-object v2, v0

    .line 107
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 111
    .end local v3    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    invoke-virtual {v6, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 114
    if-eqz p4, :cond_3

    .line 115
    iget-object v6, p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    if-eqz v6, :cond_2

    .line 116
    iget-object v6, p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 117
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v1, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_1

    .line 103
    .end local v1    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .restart local v3    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 120
    :cond_2
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    iget-object v7, p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->setBatch(Lcom/badlogic/gdx/utils/Array;)V

    .line 122
    :cond_3
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    return-object v6
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 29
    check-cast p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;)V
    .locals 8
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .param p2, "parameter"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;-><init>(Ljava/lang/Object;)V

    .line 76
    .local v2, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    iget-object v7, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {p1, v7, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 79
    iget-object v7, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_3

    .line 80
    iget-object v7, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 81
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    const/4 v6, 0x0

    .line 82
    .local v6, "save":Z
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->getControllers()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 83
    .local v1, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->isCompatible(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    const/4 v6, 0x1

    .line 89
    .end local v1    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_2
    if-eqz v6, :cond_0

    .line 90
    iget-object v7, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-interface {v0, v7, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_0

    .line 95
    .end local v0    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "save":Z
    :cond_3
    new-instance v5, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 96
    .local v5, "json":Lcom/badlogic/gdx/utils/Json;
    iget-object v7, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v5, v2, v7}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 97
    return-void
.end method
