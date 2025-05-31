.class public Lcom/badlogic/gdx/graphics/Texture;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Texture$TextureWrap;,
        Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    }
.end annotation


# static fields
.field private static assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field static final managedTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field data:Lcom/badlogic/gdx/graphics/TextureData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .prologue
    .line 119
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"    # Z

    .prologue
    .line 103
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "useMipMaps"    # Z

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 3
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 2
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"    # Z

    .prologue
    .line 115
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 3
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "useMipMaps"    # Z

    .prologue
    .line 111
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 2
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 123
    const/16 v0, 0xde1

    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 125
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Texture;->addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V

    .line 126
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "internalPath"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 92
    return-void
.end method

.method private static addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 202
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 203
    .local v0, "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    .end local v0    # "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 204
    .restart local v0    # "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 205
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public static clearAllTextures(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 210
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Managed textures/app: { "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 285
    .local v0, "app":Lcom/badlogic/gdx/Application;
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_0
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getNumManagedTextures()I
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllTextures(Lcom/badlogic/gdx/Application;)V
    .locals 11
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    const/4 v10, 0x0

    .line 215
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 216
    .local v3, "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    if-nez v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-nez v8, :cond_2

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v8, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v8, :cond_0

    .line 220
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Texture;

    .line 221
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "i":I
    .end local v6    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_2
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoading()V

    .line 231
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 232
    .local v7, "textures":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Texture;

    .line 233
    .restart local v6    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 235
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    goto :goto_2

    .line 241
    :cond_3
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getReferenceCount(Ljava/lang/String;)I

    move-result v5

    .line 242
    .local v5, "refCount":I
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v0, v10}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    .line 243
    iput v10, v6, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 247
    new-instance v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v4}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 248
    .local v4, "params":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v8

    iput-object v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    .line 249
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v8

    iput-object v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 250
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v8

    iput-object v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 251
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v8

    iput-object v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 252
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v8

    iput-object v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 253
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v8}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result v8

    iput-boolean v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 254
    iput-object v6, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 255
    new-instance v8, Lcom/badlogic/gdx/graphics/Texture$1;

    invoke-direct {v8, v5}, Lcom/badlogic/gdx/graphics/Texture$1;-><init>(I)V

    iput-object v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    .line 263
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 265
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v9, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v8, v0, v9, v4}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    goto :goto_2

    .line 268
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v4    # "params":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    .end local v5    # "refCount":I
    .end local v6    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_4
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 269
    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    goto/16 :goto_0
.end method

.method public static setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0
    .param p0, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;

    .prologue
    .line 278
    sput-object p0, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 279
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->delete()V

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 10
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "can\'t draw to a managed texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 162
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 164
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTextureData()Lcom/badlogic/gdx/graphics/TextureData;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 3
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 130
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "New data must have the same managed status as the old data"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 133
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 136
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Texture;->uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;)V

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 140
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 141
    return-void
.end method

.method protected reload()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->isManaged()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload unmanaged Texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 150
    return-void
.end method
