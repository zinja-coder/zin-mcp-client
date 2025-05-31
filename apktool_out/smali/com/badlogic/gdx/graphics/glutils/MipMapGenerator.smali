.class public Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;
.super Ljava/lang/Object;
.source "MipMapGenerator.java"


# static fields
.field private static useHWMipMap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "textureWidth"    # I
    .param p3, "textureHeight"    # I

    .prologue
    .line 49
    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_2

    .line 56
    :cond_1
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapGLES20(ILcom/badlogic/gdx/graphics/Pixmap;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapDesktop(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_0
.end method

.method public static generateMipMap(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 1
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I

    .prologue
    .line 43
    const/16 v0, 0xde1

    invoke-static {v0, p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 44
    return-void
.end method

.method private static generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 23
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "textureWidth"    # I
    .param p3, "textureHeight"    # I

    .prologue
    .line 80
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v11

    move/from16 v3, p0

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 82
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v3, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 83
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "texture width and height must be square when using mipmapping."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    .line 85
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    div-int/lit8 v11, v3, 0x2

    .line 86
    .local v11, "height":I
    const/4 v14, 0x1

    .line 87
    .local v14, "level":I
    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v22

    .line 88
    .local v22, "blending":Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 89
    :goto_0
    if-lez v10, :cond_2

    if-lez v11, :cond_2

    .line 90
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v2, v10, v11, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 91
    .local v2, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 92
    const/4 v3, 0x1

    if-le v14, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 93
    :cond_1
    move-object/from16 p1, v2

    .line 95
    sget-object v12, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v21

    move/from16 v13, p0

    invoke-interface/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    div-int/lit8 v11, v3, 0x2

    .line 100
    add-int/lit8 v14, v14, 0x1

    .line 101
    goto :goto_0

    .line 102
    .end local v2    # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_2
    invoke-static/range {v22 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 103
    return-void
.end method

.method private static generateMipMapDesktop(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 10
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "textureWidth"    # I
    .param p3, "textureHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_ARB_framebuffer_object"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_EXT_framebuffer_object"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v1, p0

    move v6, v2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 73
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_0
.end method

.method private static generateMipMapGLES20(ILcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 10
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    const/4 v2, 0x0

    .line 63
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v1, p0

    move v6, v2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 65
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 66
    return-void
.end method

.method public static setUseHardwareMipMap(Z)V
    .locals 0
    .param p0, "useHWMipMap"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    .line 37
    return-void
.end method
