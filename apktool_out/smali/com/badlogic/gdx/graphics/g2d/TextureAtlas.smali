.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.super Ljava/lang/Object;
.source "TextureAtlas.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
    }
.end annotation


# static fields
.field static final indexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation
.end field

.field static final tuple:[Ljava/lang/String;


# instance fields
.field private final regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final textures:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->indexComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "packFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "packFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "packFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z

    .prologue
    .line 231
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "packFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 223
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V
    .locals 2
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 236
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->load(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    .line 237
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "internalPackFile"    # Ljava/lang/String;

    .prologue
    .line 211
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 212
    return-void
.end method

.method private load(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V
    .locals 13
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    .prologue
    .line 240
    new-instance v9, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v9}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 241
    .local v9, "pageToTexture":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;Lcom/badlogic/gdx/graphics/Texture;>;"
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 242
    .local v8, "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    const/4 v11, 0x0

    .line 243
    .local v11, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v1, :cond_0

    .line 244
    new-instance v11, Lcom/badlogic/gdx/graphics/Texture;

    .end local v11    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-boolean v3, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->useMipMaps:Z

    invoke-direct {v11, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 245
    .restart local v11    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v11, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 246
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v11, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v9, v8, v11}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :cond_0
    iget-object v11, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 249
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v11, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 250
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v11, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    goto :goto_1

    .line 256
    .end local v8    # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v11    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_1
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    .line 257
    .local v10, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    iget v12, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->width:I

    .line 258
    .local v12, "width":I
    iget v6, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->height:I

    .line 259
    .local v6, "height":I
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->left:I

    iget v3, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->top:I

    iget-boolean v4, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    if-eqz v4, :cond_3

    move v4, v6

    :goto_3
    iget-boolean v5, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    if-eqz v5, :cond_4

    move v5, v12

    :goto_4
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 261
    .local v0, "atlasRegion":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 262
    iget-object v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 263
    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetX:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 264
    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetY:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 265
    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 266
    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 267
    iget-boolean v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    .line 268
    iget-object v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->splits:[I

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 269
    iget-object v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->pads:[I

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    .line 270
    iget-boolean v1, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->flip:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    .end local v0    # "atlasRegion":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_3
    move v4, v12

    .line 259
    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_4

    .line 273
    .end local v6    # "height":I
    .end local v10    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    .end local v12    # "width":I
    :cond_5
    return-void
.end method

.method private newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 4
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .prologue
    const/4 v3, 0x0

    .line 379
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-ne v1, v2, :cond_1

    .line 380
    iget-boolean v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v1, :cond_0

    .line 381
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 382
    .local v0, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    .line 388
    .end local v0    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :goto_0
    return-object v0

    .line 386
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_0

    .line 388
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    goto :goto_0
.end method

.method static readTuple(Ljava/io/BufferedReader;)I
    .locals 8
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 441
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "line":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 443
    .local v0, "colon":I
    if-ne v0, v7, :cond_0

    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 444
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    add-int/lit8 v3, v0, 0x1

    .line 445
    .local v3, "lastMatch":I
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 446
    const/16 v5, 0x2c

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 447
    .local v1, "comma":I
    if-ne v1, v7, :cond_2

    .line 451
    .end local v1    # "comma":I
    :cond_1
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 452
    add-int/lit8 v5, v2, 0x1

    return v5

    .line 448
    .restart local v1    # "comma":I
    :cond_2
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 449
    add-int/lit8 v3, v1, 0x1

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static readValue(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "line":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 435
    .local v0, "colon":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;IIII)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 279
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 280
    iput p5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 281
    iput p6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 282
    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 284
    return-object v0
.end method

.method public addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 289
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v4

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;IIII)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    return-object v0
.end method

.method public createPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 396
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v7, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v7, "n":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 397
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 398
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    iget-object v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 400
    .local v8, "splits":[I
    if-nez v8, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Region does not have ninepatch splits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    aget v2, v8, v9

    aget v3, v8, v10

    aget v4, v8, v11

    aget v5, v8, v12

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 402
    .local v0, "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    aget v2, v2, v9

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    aget v3, v3, v10

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    aget v4, v4, v11

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    aget v5, v5, v12

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setPadding(IIII)V

    .line 406
    .end local v0    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v8    # "splits":[I
    :cond_1
    :goto_1
    return-object v0

    .line 396
    .restart local v1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 347
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v2

    .line 348
    :goto_1
    return-object v2

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public createSprite(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 357
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 358
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    if-ne v3, p2, :cond_0

    .line 360
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v3

    .line 362
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public createSprites()Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 336
    .local v2, "sprites":Lcom/badlogic/gdx/utils/Array;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 337
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return-object v2
.end method

.method public createSprites(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 371
    .local v1, "matched":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/Sprite;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 372
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 373
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_1
    return-object v1
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 417
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 418
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    goto :goto_0

    .line 419
    .end local v1    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    .line 420
    return-void
.end method

.method public findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 303
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 304
    :goto_1
    return-object v2

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public findRegion(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 312
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 313
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    if-ne v3, p2, :cond_0

    .line 317
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public findRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 324
    .local v1, "matched":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 325
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 326
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_1
    return-object v1
.end method

.method public getRegions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getTextures()Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Lcom/badlogic/gdx/utils/ObjectSet;

    return-object v0
.end method
