.class public final Lcom/badlogic/gdx/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameBufferPixels(IIIIZ)[B
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "flipY"    # Z

    .prologue
    .line 101
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xd05

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 102
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 103
    .local v7, "pixels":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 104
    mul-int v0, p2, p3

    mul-int/lit8 v10, v0, 0x4

    .line 105
    .local v10, "numBytes":I
    new-array v9, v10, [B

    .line 106
    .local v9, "lines":[B
    if-eqz p4, :cond_0

    .line 107
    mul-int/lit8 v11, p2, 0x4

    .line 108
    .local v11, "numBytesPerLine":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, p3, :cond_1

    .line 109
    sub-int v0, p3, v8

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v11

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    mul-int v0, v8, v11

    invoke-virtual {v7, v9, v0, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 113
    .end local v8    # "i":I
    .end local v11    # "numBytesPerLine":I
    :cond_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 114
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 116
    :cond_1
    return-object v9
.end method

.method public static getFrameBufferPixels(Z)[B
    .locals 4
    .param p0, "flipY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 87
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    .line 88
    .local v1, "w":I
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    .line 89
    .local v0, "h":I
    invoke-static {v3, v3, v1, v0, p0}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixels(IIIIZ)[B

    move-result-object v2

    return-object v2
.end method

.method public static getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 9
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 71
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xd05

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 73
    new-instance v8, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v8, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 74
    .local v8, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 75
    .local v7, "pixels":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 77
    return-object v8
.end method

.method public static getFrameBufferTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    .line 41
    .local v1, "w":I
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    .line 42
    .local v0, "h":I
    invoke-static {v3, v3, v1, v0}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferTexture(IIII)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    return-object v2
.end method

.method public static getFrameBufferTexture(IIII)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v9

    .line 57
    .local v9, "potW":I
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v7

    .line 59
    .local v7, "potH":I
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v6

    .line 60
    .local v6, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v8, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v8, v9, v7, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 61
    .local v8, "potPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v8, v6, v2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 62
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 63
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    neg-int v5, p3

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 64
    .local v0, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 65
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 67
    return-object v0
.end method
