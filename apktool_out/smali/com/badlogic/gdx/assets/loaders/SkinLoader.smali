.class public Lcom/badlogic/gdx/assets/loaders/SkinLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "SkinLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        "Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 38
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 46
    .local v0, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    if-nez p3, :cond_1

    .line 47
    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->pathWithoutExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".atlas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 38
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    .prologue
    .line 54
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 8
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    .prologue
    .line 60
    if-nez p4, :cond_0

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/badlogic/gdx/files/FileHandle;->pathWithoutExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".atlas"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "textureAtlasPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 67
    .local v3, "resources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    const-class v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p1, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 68
    .local v0, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 69
    .local v4, "skin":Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 71
    .local v1, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    .end local v0    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local v1    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "resources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "skin":Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .end local v5    # "textureAtlasPath":Ljava/lang/String;
    :cond_0
    iget-object v5, p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    .line 65
    .restart local v5    # "textureAtlasPath":Ljava/lang/String;
    iget-object v3, p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .restart local v3    # "resources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 74
    .restart local v0    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .restart local v4    # "skin":Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    :cond_1
    invoke-virtual {v4, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 75
    return-object v4
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 38
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    return-object v0
.end method
