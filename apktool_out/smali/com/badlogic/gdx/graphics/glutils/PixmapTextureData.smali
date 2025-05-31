.class public Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;
.super Ljava/lang/Object;
.source "PixmapTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field final disposePixmap:Z

.field final format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field final managed:Z

.field final pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field final useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V
    .locals 6
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"    # Z
    .param p4, "disposePixmap"    # Z

    .prologue
    .line 32
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZZ)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZZ)V
    .locals 0
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"    # Z
    .param p4, "disposePixmap"    # Z
    .param p5, "managed"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 37
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object p2

    .end local p2    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 38
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->useMipMaps:Z

    .line 39
    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->disposePixmap:Z

    .line 40
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->managed:Z

    .line 41
    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not upload data itself"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public disposePixmap()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->disposePixmap:Z

    return v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->managed:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "prepare() must not be called on a PixmapTextureData instance as it is already prepared."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->useMipMaps:Z

    return v0
.end method
