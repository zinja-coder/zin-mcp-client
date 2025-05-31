.class public abstract Lcom/badlogic/gdx/graphics/GLTexture;
.super Ljava/lang/Object;
.source "GLTexture.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field protected glHandle:I

.field public final glTarget:I

.field protected magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field protected minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field protected uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field protected vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "glTarget"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "glTarget"    # I
    .param p2, "glHandle"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 37
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 38
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 39
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 56
    iput p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    .line 57
    iput p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    .line 58
    return-void
.end method

.method protected static createGLHandle()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    return v0
.end method

.method protected static createTextureData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 1
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "useMipMaps"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    return-object v0
.end method

.method protected static createTextureData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 1
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "useMipMaps"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/graphics/GLTexture;->createTextureData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    return-object v0
.end method

.method protected static uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;)V
    .locals 1
    .param p0, "target"    # I
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;I)V

    .line 202
    return-void
.end method

.method public static uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;I)V
    .locals 17
    .param p0, "target"    # I
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p2, "miplevel"    # I

    .prologue
    .line 205
    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 212
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v16

    .line 213
    .local v16, "type":Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    sget-object v4, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_3

    .line 214
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    .line 219
    .local v3, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v15

    .line 220
    .local v15, "disposePixmap":Z
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 221
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 222
    .local v2, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v14

    .line 223
    .local v14, "blend":Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 224
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 225
    invoke-static {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 226
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 227
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 229
    :cond_4
    move-object v3, v2

    .line 230
    const/4 v15, 0x1

    .line 233
    .end local v2    # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v14    # "blend":Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    :cond_5
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0xcf5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 234
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 235
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    move/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 240
    :goto_1
    if-eqz v15, :cond_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto/16 :goto_0

    .line 237
    :cond_6
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v7

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v11

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v12

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v13

    move/from16 v5, p0

    move/from16 v6, p2

    invoke-interface/range {v4 .. v13}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 69
    return-void
.end method

.method public bind(I)V
    .locals 3
    .param p1, "unit"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 75
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 76
    return-void
.end method

.method protected delete()V
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    .line 175
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->delete()V

    .line 180
    return-void
.end method

.method public abstract getDepth()I
.end method

.method public abstract getHeight()I
.end method

.method public getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getTextureObjectHandle()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    return v0
.end method

.method public getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract isManaged()Z
.end method

.method protected abstract reload()V
.end method

.method public setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 4
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 163
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 164
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    .line 165
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2801

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 166
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2800

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 167
    return-void
.end method

.method public setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 4
    .param p1, "u"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p2, "v"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 130
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 131
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    .line 132
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2802

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 133
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2803

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 134
    return-void
.end method

.method public unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 1
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 141
    return-void
.end method

.method public unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 4
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "force"    # Z

    .prologue
    .line 148
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v0, p1, :cond_1

    .line 149
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2801

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 150
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 152
    :cond_1
    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v0, p2, :cond_3

    .line 153
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2800

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 154
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 156
    :cond_3
    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1
    .param p1, "u"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p2, "v"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    .line 108
    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V
    .locals 4
    .param p1, "u"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p2, "v"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p3, "force"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq v0, p1, :cond_1

    .line 116
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2802

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 117
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 119
    :cond_1
    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq v0, p2, :cond_3

    .line 120
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2803

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 121
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 123
    :cond_3
    return-void
.end method
