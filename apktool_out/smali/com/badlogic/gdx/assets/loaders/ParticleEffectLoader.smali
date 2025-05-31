.class public Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "ParticleEffectLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;",
        "Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 30
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "param"    # Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;->atlasFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    .end local v0    # "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 52
    .restart local v0    # "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, p3, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;->atlasFile:Ljava/lang/String;

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    .locals 3
    .param p1, "am"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "param"    # Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;

    .prologue
    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    .line 38
    .local v0, "effect":Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    if-eqz p4, :cond_0

    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;->atlasFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;->atlasFile:Ljava/lang/String;

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;->atlasPrefix:Ljava/lang/String;

    invoke-virtual {v0, p3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    if-eqz p4, :cond_1

    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;->imagesDir:Lcom/badlogic/gdx/files/FileHandle;

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;->imagesDir:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p3}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    goto :goto_0
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 30
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    move-result-object v0

    return-object v0
.end method
