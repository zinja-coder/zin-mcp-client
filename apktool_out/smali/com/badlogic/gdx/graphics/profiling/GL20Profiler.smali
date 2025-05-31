.class public Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;
.super Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.source "GL20Profiler.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# instance fields
.field public gl20:Lcom/badlogic/gdx/graphics/GL20;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/GL20;)V
    .locals 0
    .param p1, "gl20"    # Lcom/badlogic/gdx/graphics/GL20;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 32
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 36
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 38
    return-void
.end method

.method public glAttachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .prologue
    .line 291
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 293
    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 299
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .prologue
    .line 303
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 305
    return-void
.end method

.method public glBindFramebuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    .prologue
    .line 309
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 311
    return-void
.end method

.method public glBindRenderbuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    .prologue
    .line 315
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 317
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .prologue
    .line 42
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->textureBindings:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->textureBindings:I

    .line 43
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 45
    return-void
.end method

.method public glBlendColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 321
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendColor(FFFF)V

    .line 323
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 327
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquation(I)V

    .line 329
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    .prologue
    .line 333
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquationSeparate(II)V

    .line 335
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .prologue
    .line 49
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 51
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    .prologue
    .line 339
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 341
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .prologue
    .line 345
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 347
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 351
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 353
    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 357
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v0

    return v0
.end method

.method public glClear(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 55
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 57
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 61
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 63
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    .prologue
    .line 67
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearDepthf(F)V

    .line 69
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 73
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearStencil(I)V

    .line 75
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .prologue
    .line 79
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glColorMask(ZZZZ)V

    .line 81
    return-void
.end method

.method public glCompileShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 363
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    .line 365
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 86
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 88
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 93
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 95
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .prologue
    .line 99
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexImage2D(IIIIIIII)V

    .line 101
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 105
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 107
    return-void
.end method

.method public glCreateProgram()I
    .locals 1

    .prologue
    .line 369
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v0

    return v0
.end method

.method public glCreateShader(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 375
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v0

    return v0
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 111
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCullFace(I)V

    .line 113
    return-void
.end method

.method public glDeleteBuffer(I)V
    .locals 1
    .param p1, "buffer"    # I

    .prologue
    .line 918
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 919
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 920
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 381
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 383
    return-void
.end method

.method public glDeleteFramebuffer(I)V
    .locals 1
    .param p1, "framebuffer"    # I

    .prologue
    .line 924
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 925
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 926
    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 387
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 389
    return-void
.end method

.method public glDeleteProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 393
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 394
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    .line 395
    return-void
.end method

.method public glDeleteRenderbuffer(I)V
    .locals 1
    .param p1, "renderbuffer"    # I

    .prologue
    .line 930
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 931
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 932
    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 399
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 401
    return-void
.end method

.method public glDeleteShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 405
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 406
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 407
    return-void
.end method

.method public glDeleteTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 906
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 907
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    .line 908
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 117
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 119
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    .prologue
    .line 123
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    .line 125
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 129
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 131
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "zNear"    # F
    .param p2, "zFar"    # F

    .prologue
    .line 135
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    .line 137
    return-void
.end method

.method public glDetachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .prologue
    .line 411
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 412
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDetachShader(II)V

    .line 413
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 141
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 143
    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 417
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 419
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 147
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 148
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->drawCalls:I

    .line 149
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    .line 151
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # I

    .prologue
    .line 423
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 424
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->drawCalls:I

    .line 425
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 426
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 427
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 155
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 156
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->drawCalls:I

    .line 157
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 159
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 163
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 165
    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 431
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 433
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 169
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFinish()V

    .line 171
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 175
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFlush()V

    .line 177
    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    .prologue
    .line 437
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 439
    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "textarget"    # I
    .param p4, "texture"    # I
    .param p5, "level"    # I

    .prologue
    .line 443
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 445
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 181
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glFrontFace(I)V

    .line 183
    return-void
.end method

.method public glGenBuffer()I
    .locals 1

    .prologue
    .line 936
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 937
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    return v0
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 449
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 451
    return-void
.end method

.method public glGenFramebuffer()I
    .locals 1

    .prologue
    .line 942
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 943
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v0

    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 461
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 463
    return-void
.end method

.method public glGenRenderbuffer()I
    .locals 1

    .prologue
    .line 948
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 949
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v0

    return v0
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 467
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 469
    return-void
.end method

.method public glGenTexture()I
    .locals 1

    .prologue
    .line 912
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 913
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 187
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 189
    return-void
.end method

.method public glGenerateMipmap(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 455
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 456
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 457
    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .prologue
    .line 473
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .prologue
    .line 479
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "maxcount"    # I
    .param p3, "count"    # Ljava/nio/Buffer;
    .param p4, "shaders"    # Ljava/nio/IntBuffer;

    .prologue
    .line 485
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V

    .line 487
    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 491
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/Buffer;

    .prologue
    .line 497
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetBooleanv(ILjava/nio/Buffer;)V

    .line 499
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 503
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 505
    return-void
.end method

.method public glGetError()I
    .locals 1

    .prologue
    .line 193
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 509
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 511
    return-void
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 515
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 516
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    .line 517
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 199
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 201
    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 527
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 528
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 521
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 522
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 523
    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 533
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 534
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 535
    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 545
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "shadertype"    # I
    .param p2, "precisiontype"    # I
    .param p3, "range"    # Ljava/nio/IntBuffer;
    .param p4, "precision"    # Ljava/nio/IntBuffer;

    .prologue
    .line 551
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 553
    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 539
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 541
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I

    .prologue
    .line 205
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 557
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 559
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 563
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 565
    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 581
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 569
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    .line 571
    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 575
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    .line 577
    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 599
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribPointerv(IILjava/nio/Buffer;)V

    .line 601
    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 587
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    .line 589
    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 593
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    .line 595
    return-void
.end method

.method public glHint(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 211
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glHint(II)V

    .line 213
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .param p1, "buffer"    # I

    .prologue
    .line 605
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsBuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 611
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public glIsFramebuffer(I)Z
    .locals 1
    .param p1, "framebuffer"    # I

    .prologue
    .line 617
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsFramebuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsProgram(I)Z
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 623
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsProgram(I)Z

    move-result v0

    return v0
.end method

.method public glIsRenderbuffer(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    .prologue
    .line 629
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsRenderbuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsShader(I)Z
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 635
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 636
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsShader(I)Z

    move-result v0

    return v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 641
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsTexture(I)Z

    move-result v0

    return v0
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 217
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLineWidth(F)V

    .line 219
    return-void
.end method

.method public glLinkProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 647
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 648
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    .line 649
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 223
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 225
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 229
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPolygonOffset(FF)V

    .line 231
    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 235
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 237
    return-void
.end method

.method public glReleaseShaderCompiler()V
    .locals 1

    .prologue
    .line 653
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glReleaseShaderCompiler()V

    .line 655
    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 659
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 660
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 661
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .prologue
    .line 665
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glSampleCoverage(FZ)V

    .line 667
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 241
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    .line 243
    return-void
.end method

.method public glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
    .locals 6
    .param p1, "n"    # I
    .param p2, "shaders"    # Ljava/nio/IntBuffer;
    .param p3, "binaryformat"    # I
    .param p4, "binary"    # Ljava/nio/Buffer;
    .param p5, "length"    # I

    .prologue
    .line 671
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    .line 673
    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 677
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 679
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 247
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFunc(III)V

    .line 249
    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "func"    # I
    .param p3, "ref"    # I
    .param p4, "mask"    # I

    .prologue
    .line 683
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 684
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFuncSeparate(IIII)V

    .line 685
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 253
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMask(I)V

    .line 255
    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "mask"    # I

    .prologue
    .line 689
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMaskSeparate(II)V

    .line 691
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .prologue
    .line 259
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOp(III)V

    .line 261
    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "fail"    # I
    .param p3, "zfail"    # I
    .param p4, "zpass"    # I

    .prologue
    .line 695
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOpSeparate(IIII)V

    .line 697
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 266
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 268
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 272
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 274
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 701
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 702
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 703
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 707
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 708
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 709
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 713
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 714
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 715
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 279
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 281
    return-void
.end method

.method public glUniform1f(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F

    .prologue
    .line 719
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 720
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 721
    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 725
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 726
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 727
    return-void
.end method

.method public glUniform1fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 954
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 955
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    .line 956
    return-void
.end method

.method public glUniform1i(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I

    .prologue
    .line 731
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 732
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 733
    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 737
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 738
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    .line 739
    return-void
.end method

.method public glUniform1iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 960
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 961
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(II[II)V

    .line 962
    return-void
.end method

.method public glUniform2f(IFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 743
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 744
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 745
    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 749
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 750
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 751
    return-void
.end method

.method public glUniform2fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 966
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 967
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    .line 968
    return-void
.end method

.method public glUniform2i(III)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 755
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 756
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 757
    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 761
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 762
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    .line 763
    return-void
.end method

.method public glUniform2iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 972
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 973
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2iv(II[II)V

    .line 974
    return-void
.end method

.method public glUniform3f(IFFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 767
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 768
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 769
    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 773
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 774
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 775
    return-void
.end method

.method public glUniform3fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 978
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 979
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    .line 980
    return-void
.end method

.method public glUniform3i(IIII)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 779
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 780
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 781
    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 785
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 786
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    .line 787
    return-void
.end method

.method public glUniform3iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 984
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 985
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3iv(II[II)V

    .line 986
    return-void
.end method

.method public glUniform4f(IFFFF)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .prologue
    .line 791
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 792
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 793
    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 797
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 798
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 799
    return-void
.end method

.method public glUniform4fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 990
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 991
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    .line 992
    return-void
.end method

.method public glUniform4i(IIIII)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .prologue
    .line 803
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 804
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 805
    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 809
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 810
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    .line 811
    return-void
.end method

.method public glUniform4iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 996
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 997
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4iv(II[II)V

    .line 998
    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 815
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 816
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    .line 817
    return-void
.end method

.method public glUniformMatrix2fv(IIZ[FI)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .prologue
    .line 1002
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 1003
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix2fv(IIZ[FI)V

    .line 1004
    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 821
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 822
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 823
    return-void
.end method

.method public glUniformMatrix3fv(IIZ[FI)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .prologue
    .line 1008
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 1009
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZ[FI)V

    .line 1010
    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 827
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 828
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 829
    return-void
.end method

.method public glUniformMatrix4fv(IIZ[FI)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .prologue
    .line 1014
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 1015
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1016
    return-void
.end method

.method public glUseProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 833
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->shaderSwitches:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->shaderSwitches:I

    .line 834
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 835
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 836
    return-void
.end method

.method public glValidateProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 840
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 841
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glValidateProgram(I)V

    .line 842
    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F

    .prologue
    .line 846
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 847
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1f(IF)V

    .line 848
    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 852
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 853
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    .line 854
    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 858
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2f(IFF)V

    .line 860
    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 864
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 865
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    .line 866
    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 870
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 871
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3f(IFFF)V

    .line 872
    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 876
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 877
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    .line 878
    return-void
.end method

.method public glVertexAttrib4f(IFFFF)V
    .locals 6
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .prologue
    .line 882
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 883
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    .line 884
    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 888
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 889
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    .line 890
    return-void
.end method

.method public glVertexAttribPointer(IIIZII)V
    .locals 7
    .param p1, "indx"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "stride"    # I
    .param p6, "ptr"    # I

    .prologue
    .line 900
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 901
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    .line 902
    return-void
.end method

.method public glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .locals 7
    .param p1, "indx"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "stride"    # I
    .param p6, "ptr"    # Ljava/nio/Buffer;

    .prologue
    .line 894
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 895
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 896
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 285
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->calls:I

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 287
    return-void
.end method
