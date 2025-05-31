.class public Lcom/badlogic/gdx/graphics/Cubemap;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "Cubemap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    }
.end annotation


# static fields
.field private static assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field static final managedCubemaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected data:Lcom/badlogic/gdx/graphics/CubemapData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # I
    .param p4, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 114
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v1, v0, v9, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v2, v0, v9, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v3, v0, v9, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v4, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v4, v0, v9, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v5, v0, v9, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v6, v0, v9, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 8
    .param p1, "positiveX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 86
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 7
    .param p1, "positiveX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p7, "useMipMaps"    # Z

    .prologue
    .line 92
    invoke-static {p1, p7}, Lcom/badlogic/gdx/graphics/Cubemap;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-static {p2, p7}, Lcom/badlogic/gdx/graphics/Cubemap;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-static {p3, p7}, Lcom/badlogic/gdx/graphics/Cubemap;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-static {p4, p7}, Lcom/badlogic/gdx/graphics/Cubemap;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    invoke-static {p5, p7}, Lcom/badlogic/gdx/graphics/Cubemap;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v5

    invoke-static {p6, p7}, Lcom/badlogic/gdx/graphics/Cubemap;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/CubemapData;)V
    .locals 1
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/CubemapData;

    .prologue
    .line 78
    const v0, 0x8513

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(I)V

    .line 79
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 80
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 8
    .param p1, "positiveX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 99
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 8
    .param p1, "positiveX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p7, "useMipMaps"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 105
    if-nez p1, :cond_0

    move-object v1, v6

    :goto_0
    if-nez p2, :cond_1

    move-object v2, v6

    :goto_1
    if-nez p3, :cond_2

    move-object v3, v6

    :goto_2
    if-nez p4, :cond_3

    move-object v4, v6

    :goto_3
    if-nez p5, :cond_4

    move-object v5, v6

    :goto_4
    if-nez p6, :cond_5

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 110
    return-void

    .line 105
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v1, p1, v6, p7, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v2, p2, v6, p7, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v3, p3, v6, p7, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v4, p4, v6, p7, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    goto :goto_3

    :cond_4
    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v5, p5, v6, p7, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v0, p6, v6, p7, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v6, v0

    goto :goto_5
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 7
    .param p1, "positiveX"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 123
    const v0, 0x8513

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(I)V

    .line 124
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 125
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 126
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 127
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 128
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .line 130
    return-void
.end method

.method private static addManagedCubemap(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Cubemap;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "cubemap"    # Lcom/badlogic/gdx/graphics/Cubemap;

    .prologue
    .line 185
    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 186
    .local v0, "managedCubemapArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    .end local v0    # "managedCubemapArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 187
    .restart local v0    # "managedCubemapArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 188
    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public static clearAllCubemaps(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 193
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Managed cubemap/app: { "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    sget-object v3, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

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

    .line 267
    .local v0, "app":Lcom/badlogic/gdx/Application;
    sget-object v3, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_0
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getNumManagedCubemaps()I
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllCubemaps(Lcom/badlogic/gdx/Application;)V
    .locals 11
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    const/4 v10, 0x0

    .line 198
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    .line 199
    .local v5, "managedCubemapArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    if-nez v5, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-nez v8, :cond_2

    .line 202
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v8, :cond_0

    .line 203
    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Cubemap;

    .line 204
    .local v0, "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->reload()V

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    .end local v3    # "i":I
    :cond_2
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoading()V

    .line 214
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 215
    .local v1, "cubemaps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Cubemap;

    .line 216
    .restart local v0    # "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "fileName":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 218
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->reload()V

    goto :goto_2

    .line 224
    :cond_3
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/assets/AssetManager;->getReferenceCount(Ljava/lang/String;)I

    move-result v7

    .line 225
    .local v7, "refCount":I
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v2, v10}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    .line 226
    iput v10, v0, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    .line 230
    new-instance v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    invoke-direct {v6}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;-><init>()V

    .line 231
    .local v6, "params":Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->getCubemapData()Lcom/badlogic/gdx/graphics/CubemapData;

    move-result-object v8

    iput-object v8, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemapData:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 232
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v8

    iput-object v8, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 233
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v8

    iput-object v8, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 234
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v8

    iput-object v8, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 235
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v8

    iput-object v8, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 236
    iput-object v0, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    .line 237
    new-instance v8, Lcom/badlogic/gdx/graphics/Cubemap$1;

    invoke-direct {v8, v7}, Lcom/badlogic/gdx/graphics/Cubemap$1;-><init>(I)V

    iput-object v8, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    .line 245
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/badlogic/gdx/graphics/GLTexture;->createGLHandle()I

    move-result v8

    iput v8, v0, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    .line 247
    sget-object v8, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v9, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {v8, v2, v9, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    goto :goto_2

    .line 250
    .end local v0    # "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "params":Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;
    .end local v7    # "refCount":I
    :cond_4
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 251
    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    goto/16 :goto_0
.end method

.method public static setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0
    .param p0, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;

    .prologue
    .line 260
    sput-object p0, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 261
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Cubemap;->delete()V

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    goto :goto_0
.end method

.method public getCubemapData()Lcom/badlogic/gdx/graphics/CubemapData;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result v0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/CubemapData;)V
    .locals 3
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/CubemapData;

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->prepare()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Cubemap;->bind()V

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cubemap;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cubemap;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    .line 138
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->consumeCubemapData()V

    .line 139
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->glTarget:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 140
    return-void
.end method

.method protected reload()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Cubemap;->isManaged()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload an unmanaged Cubemap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap;->createGLHandle()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .line 156
    return-void
.end method
