.class public Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;
.super Ljava/lang/Object;
.source "FloatTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field buffer:Ljava/nio/FloatBuffer;

.field height:I

.field isPrepared:Z

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    .line 34
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    .line 35
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    .line 39
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    .line 40
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    .line 41
    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 11
    .param p1, "target"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "texture_float"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Extension OES_TEXTURE_FLOAT not supported!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const v10, 0x8814

    .line 70
    .local v10, "GL_RGBA32F":I
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_2

    .line 72
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x0

    const/16 v3, 0x1908

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1406

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x0

    const v3, 0x8814

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1406

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    return v0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    .line 58
    return-void
.end method

.method public useMipMaps()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
