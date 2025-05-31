.class public Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;
.super Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.source "GL30Profiler.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL30;


# instance fields
.field public gl30:Lcom/badlogic/gdx/graphics/GL30;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/GL30;)V
    .locals 0
    .param p1, "gl30"    # Lcom/badlogic/gdx/graphics/GL30;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 33
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 37
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glActiveTexture(I)V

    .line 39
    return-void
.end method

.method public glAttachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .prologue
    .line 292
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glAttachShader(II)V

    .line 294
    return-void
.end method

.method public glBeginQuery(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "id"    # I

    .prologue
    .line 994
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 995
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBeginQuery(II)V

    .line 996
    return-void
.end method

.method public glBeginTransformFeedback(I)V
    .locals 1
    .param p1, "primitiveMode"    # I

    .prologue
    .line 1134
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glBeginTransformFeedback(I)V

    .line 1136
    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 298
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glBindAttribLocation(IILjava/lang/String;)V

    .line 300
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .prologue
    .line 304
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 305
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindBuffer(II)V

    .line 306
    return-void
.end method

.method public glBindBufferBase(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I

    .prologue
    .line 1152
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1153
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glBindBufferBase(III)V

    .line 1154
    return-void
.end method

.method public glBindBufferRange(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I
    .param p4, "offset"    # I
    .param p5, "size"    # I

    .prologue
    .line 1146
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1147
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glBindBufferRange(IIIII)V

    .line 1148
    return-void
.end method

.method public glBindFramebuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    .prologue
    .line 310
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindFramebuffer(II)V

    .line 312
    return-void
.end method

.method public glBindRenderbuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    .prologue
    .line 316
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindRenderbuffer(II)V

    .line 318
    return-void
.end method

.method public glBindSampler(II)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "sampler"    # I

    .prologue
    .line 1360
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1361
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindSampler(II)V

    .line 1362
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .prologue
    .line 43
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->textureBindings:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->textureBindings:I

    .line 44
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindTexture(II)V

    .line 46
    return-void
.end method

.method public glBindTransformFeedback(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "id"    # I

    .prologue
    .line 1408
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1409
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindTransformFeedback(II)V

    .line 1410
    return-void
.end method

.method public glBindVertexArray(I)V
    .locals 1
    .param p1, "array"    # I

    .prologue
    .line 1098
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1099
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    .line 1100
    return-void
.end method

.method public glBlendColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 322
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBlendColor(FFFF)V

    .line 324
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 328
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glBlendEquation(I)V

    .line 330
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    .prologue
    .line 334
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBlendEquationSeparate(II)V

    .line 336
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .prologue
    .line 50
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBlendFunc(II)V

    .line 52
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    .prologue
    .line 340
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBlendFuncSeparate(IIII)V

    .line 342
    return-void
.end method

.method public glBlitFramebuffer(IIIIIIIIII)V
    .locals 11
    .param p1, "srcX0"    # I
    .param p2, "srcY0"    # I
    .param p3, "srcX1"    # I
    .param p4, "srcY1"    # I
    .param p5, "dstX0"    # I
    .param p6, "dstY0"    # I
    .param p7, "dstX1"    # I
    .param p8, "dstY1"    # I
    .param p9, "mask"    # I
    .param p10, "filter"    # I

    .prologue
    .line 1074
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1075
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/GL30;->glBlitFramebuffer(IIIIIIIIII)V

    .line 1076
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .prologue
    .line 346
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 348
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 352
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 354
    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 358
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCheckFramebufferStatus(I)I

    move-result v0

    return v0
.end method

.method public glClear(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 56
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glClear(I)V

    .line 58
    return-void
.end method

.method public glClearBufferfi(IIFI)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "depth"    # F
    .param p4, "stencil"    # I

    .prologue
    .line 1242
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferfi(IIFI)V

    .line 1244
    return-void
.end method

.method public glClearBufferfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1236
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferfv(IILjava/nio/FloatBuffer;)V

    .line 1238
    return-void
.end method

.method public glClearBufferiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1224
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferiv(IILjava/nio/IntBuffer;)V

    .line 1226
    return-void
.end method

.method public glClearBufferuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1230
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferuiv(IILjava/nio/IntBuffer;)V

    .line 1232
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 62
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glClearColor(FFFF)V

    .line 64
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    .prologue
    .line 68
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glClearDepthf(F)V

    .line 70
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 74
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glClearStencil(I)V

    .line 76
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .prologue
    .line 80
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glColorMask(ZZZZ)V

    .line 82
    return-void
.end method

.method public glCompileShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 364
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCompileShader(I)V

    .line 366
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
    .line 87
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL30;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 89
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
    .line 94
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL30;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 96
    return-void
.end method

.method public glCopyBufferSubData(IIIII)V
    .locals 6
    .param p1, "readTarget"    # I
    .param p2, "writeTarget"    # I
    .param p3, "readOffset"    # I
    .param p4, "writeOffset"    # I
    .param p5, "size"    # I

    .prologue
    .line 1254
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1255
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glCopyBufferSubData(IIIII)V

    .line 1256
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
    .line 100
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL30;->glCopyTexImage2D(IIIIIIII)V

    .line 102
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
    .line 106
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL30;->glCopyTexSubImage2D(IIIIIIII)V

    .line 108
    return-void
.end method

.method public glCopyTexSubImage3D(IIIIIIIII)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "zoffset"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 958
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 959
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL30;->glCopyTexSubImage3D(IIIIIIIII)V

    .line 960
    return-void
.end method

.method public glCreateProgram()I
    .locals 1

    .prologue
    .line 370
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glCreateProgram()I

    move-result v0

    return v0
.end method

.method public glCreateShader(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 376
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCreateShader(I)I

    move-result v0

    return v0
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 112
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCullFace(I)V

    .line 114
    return-void
.end method

.method public glDeleteBuffer(I)V
    .locals 1
    .param p1, "buffer"    # I

    .prologue
    .line 1487
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1488
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteBuffer(I)V

    .line 1489
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 382
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 384
    return-void
.end method

.method public glDeleteFramebuffer(I)V
    .locals 1
    .param p1, "framebuffer"    # I

    .prologue
    .line 1493
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1494
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteFramebuffer(I)V

    .line 1495
    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 388
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 390
    return-void
.end method

.method public glDeleteProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 394
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteProgram(I)V

    .line 396
    return-void
.end method

.method public glDeleteQueries(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 982
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 983
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteQueries(ILjava/nio/IntBuffer;)V

    .line 984
    return-void
.end method

.method public glDeleteQueries(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 976
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 977
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteQueries(I[II)V

    .line 978
    return-void
.end method

.method public glDeleteRenderbuffer(I)V
    .locals 1
    .param p1, "renderbuffer"    # I

    .prologue
    .line 1499
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1500
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteRenderbuffer(I)V

    .line 1501
    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 400
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 402
    return-void
.end method

.method public glDeleteSamplers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1348
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1349
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteSamplers(ILjava/nio/IntBuffer;)V

    .line 1350
    return-void
.end method

.method public glDeleteSamplers(I[II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1342
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1343
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteSamplers(I[II)V

    .line 1344
    return-void
.end method

.method public glDeleteShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 406
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteShader(I)V

    .line 408
    return-void
.end method

.method public glDeleteTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 1475
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1476
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTexture(I)V

    .line 1477
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 118
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 120
    return-void
.end method

.method public glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1420
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1421
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 1422
    return-void
.end method

.method public glDeleteTransformFeedbacks(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1414
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1415
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTransformFeedbacks(I[II)V

    .line 1416
    return-void
.end method

.method public glDeleteVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1110
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    .line 1112
    return-void
.end method

.method public glDeleteVertexArrays(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1104
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteVertexArrays(I[II)V

    .line 1106
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    .prologue
    .line 124
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDepthFunc(I)V

    .line 126
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 130
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDepthMask(Z)V

    .line 132
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "zNear"    # F
    .param p2, "zFar"    # F

    .prologue
    .line 136
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDepthRangef(FF)V

    .line 138
    return-void
.end method

.method public glDetachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .prologue
    .line 412
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDetachShader(II)V

    .line 414
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 142
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDisable(I)V

    .line 144
    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 418
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDisableVertexAttribArray(I)V

    .line 420
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 148
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 149
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 150
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDrawArrays(III)V

    .line 152
    return-void
.end method

.method public glDrawArraysInstanced(IIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I
    .param p4, "instanceCount"    # I

    .prologue
    .line 1302
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 1303
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 1304
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1305
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glDrawArraysInstanced(IIII)V

    .line 1306
    return-void
.end method

.method public glDrawBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "bufs"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1030
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 1031
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1032
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    .line 1033
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # I

    .prologue
    .line 424
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 425
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 426
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElements(IIII)V

    .line 428
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 156
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 157
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 158
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 160
    return-void
.end method

.method public glDrawElementsInstanced(IIIII)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indicesOffset"    # I
    .param p5, "instanceCount"    # I

    .prologue
    .line 1310
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 1311
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 1312
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1313
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElementsInstanced(IIIII)V

    .line 1314
    return-void
.end method

.method public glDrawRangeElements(IIIIII)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "offset"    # I

    .prologue
    .line 921
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 922
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 923
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 924
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glDrawRangeElements(IIIIII)V

    .line 925
    return-void
.end method

.method public glDrawRangeElements(IIIIILjava/nio/Buffer;)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 913
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 914
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->drawCalls:I

    .line 915
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 916
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glDrawRangeElements(IIIIILjava/nio/Buffer;)V

    .line 917
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 164
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glEnable(I)V

    .line 166
    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 432
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 433
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glEnableVertexAttribArray(I)V

    .line 434
    return-void
.end method

.method public glEndQuery(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 1000
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1001
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glEndQuery(I)V

    .line 1002
    return-void
.end method

.method public glEndTransformFeedback()V
    .locals 1

    .prologue
    .line 1140
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glEndTransformFeedback()V

    .line 1142
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glFinish()V

    .line 172
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glFlush()V

    .line 178
    return-void
.end method

.method public glFlushMappedBufferRange(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1092
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1093
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glFlushMappedBufferRange(III)V

    .line 1094
    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    .prologue
    .line 438
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glFramebufferRenderbuffer(IIII)V

    .line 440
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
    .line 444
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glFramebufferTexture2D(IIIII)V

    .line 446
    return-void
.end method

.method public glFramebufferTextureLayer(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "texture"    # I
    .param p4, "level"    # I
    .param p5, "layer"    # I

    .prologue
    .line 1086
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1087
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glFramebufferTextureLayer(IIIII)V

    .line 1088
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 182
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glFrontFace(I)V

    .line 184
    return-void
.end method

.method public glGenBuffer()I
    .locals 1

    .prologue
    .line 1505
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1506
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenBuffer()I

    move-result v0

    return v0
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 450
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 452
    return-void
.end method

.method public glGenFramebuffer()I
    .locals 1

    .prologue
    .line 1511
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1512
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenFramebuffer()I

    move-result v0

    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 462
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 464
    return-void
.end method

.method public glGenQueries(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 970
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 971
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenQueries(ILjava/nio/IntBuffer;)V

    .line 972
    return-void
.end method

.method public glGenQueries(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 964
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 965
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenQueries(I[II)V

    .line 966
    return-void
.end method

.method public glGenRenderbuffer()I
    .locals 1

    .prologue
    .line 1517
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1518
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenRenderbuffer()I

    move-result v0

    return v0
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 468
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 470
    return-void
.end method

.method public glGenSamplers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1336
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1337
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenSamplers(ILjava/nio/IntBuffer;)V

    .line 1338
    return-void
.end method

.method public glGenSamplers(I[II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1330
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1331
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenSamplers(I[II)V

    .line 1332
    return-void
.end method

.method public glGenTexture()I
    .locals 1

    .prologue
    .line 1481
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1482
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenTexture()I

    move-result v0

    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 188
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 190
    return-void
.end method

.method public glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1432
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1433
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 1434
    return-void
.end method

.method public glGenTransformFeedbacks(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1426
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1427
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenTransformFeedbacks(I[II)V

    .line 1428
    return-void
.end method

.method public glGenVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1122
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    .line 1124
    return-void
.end method

.method public glGenVertexArrays(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1116
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenVertexArrays(I[II)V

    .line 1118
    return-void
.end method

.method public glGenerateMipmap(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 456
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGenerateMipmap(I)V

    .line 458
    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .prologue
    .line 474
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

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
    .line 480
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetActiveUniformBlockName(II)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I

    .prologue
    .line 1290
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1291
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformBlockName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "length"    # Ljava/nio/Buffer;
    .param p4, "uniformBlockName"    # Ljava/nio/Buffer;

    .prologue
    .line 1284
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V

    .line 1286
    return-void
.end method

.method public glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1278
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V

    .line 1280
    return-void
.end method

.method public glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V
    .locals 6
    .param p1, "program"    # I
    .param p2, "uniformCount"    # I
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;
    .param p4, "pname"    # I
    .param p5, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1266
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1267
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V

    .line 1268
    return-void
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "maxcount"    # I
    .param p3, "count"    # Ljava/nio/Buffer;
    .param p4, "shaders"    # Ljava/nio/IntBuffer;

    .prologue
    .line 486
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V

    .line 488
    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 492
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/Buffer;

    .prologue
    .line 498
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetBooleanv(ILjava/nio/Buffer;)V

    .line 500
    return-void
.end method

.method public glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/LongBuffer;

    .prologue
    .line 1324
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1325
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V

    .line 1326
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 504
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 506
    return-void
.end method

.method public glGetBufferPointerv(II)Ljava/nio/Buffer;
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I

    .prologue
    .line 1024
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1025
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetBufferPointerv(II)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public glGetError()I
    .locals 1

    .prologue
    .line 194
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 510
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 512
    return-void
.end method

.method public glGetFragDataLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1200
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetFragDataLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 516
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 517
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    .line 518
    return-void
.end method

.method public glGetInteger64v(ILjava/nio/LongBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/LongBuffer;

    .prologue
    .line 1318
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetInteger64v(ILjava/nio/LongBuffer;)V

    .line 1320
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 200
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 202
    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 528
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 522
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 524
    return-void
.end method

.method public glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1012
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1013
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V

    .line 1014
    return-void
.end method

.method public glGetQueryiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1006
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1007
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetQueryiv(IILjava/nio/IntBuffer;)V

    .line 1008
    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 534
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 536
    return-void
.end method

.method public glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1396
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1397
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 1398
    return-void
.end method

.method public glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1390
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1391
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 1392
    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 546
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGetShaderInfoLog(I)Ljava/lang/String;

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
    .line 552
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 554
    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 540
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 542
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I

    .prologue
    .line 206
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetStringi(II)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I
    .param p2, "index"    # I

    .prologue
    .line 1248
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1249
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetStringi(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 558
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 559
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 560
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 564
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 566
    return-void
.end method

.method public glGetUniformBlockIndex(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockName"    # Ljava/lang/String;

    .prologue
    .line 1272
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformBlockIndex(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformNames"    # [Ljava/lang/String;
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1260
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1261
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 1262
    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 582
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 570
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    .line 572
    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 576
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    .line 578
    return-void
.end method

.method public glGetUniformuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1194
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformuiv(IILjava/nio/IntBuffer;)V

    .line 1196
    return-void
.end method

.method public glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1170
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V

    .line 1172
    return-void
.end method

.method public glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1176
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1177
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V

    .line 1178
    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 600
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribPointerv(IILjava/nio/Buffer;)V

    .line 602
    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 588
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    .line 590
    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 594
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    .line 596
    return-void
.end method

.method public glHint(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 212
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glHint(II)V

    .line 214
    return-void
.end method

.method public glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1462
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V

    .line 1464
    return-void
.end method

.method public glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V
    .locals 8
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1469
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1470
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V

    .line 1471
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .param p1, "buffer"    # I

    .prologue
    .line 606
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsBuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 612
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public glIsFramebuffer(I)Z
    .locals 1
    .param p1, "framebuffer"    # I

    .prologue
    .line 618
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsFramebuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsProgram(I)Z
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 624
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 625
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsProgram(I)Z

    move-result v0

    return v0
.end method

.method public glIsQuery(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 988
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 989
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsQuery(I)Z

    move-result v0

    return v0
.end method

.method public glIsRenderbuffer(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    .prologue
    .line 630
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsRenderbuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsSampler(I)Z
    .locals 1
    .param p1, "sampler"    # I

    .prologue
    .line 1354
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1355
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsSampler(I)Z

    move-result v0

    return v0
.end method

.method public glIsShader(I)Z
    .locals 1
    .param p1, "shader"    # I

    .prologue
    .line 636
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsShader(I)Z

    move-result v0

    return v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 642
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsTexture(I)Z

    move-result v0

    return v0
.end method

.method public glIsTransformFeedback(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1438
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1439
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsTransformFeedback(I)Z

    move-result v0

    return v0
.end method

.method public glIsVertexArray(I)Z
    .locals 1
    .param p1, "array"    # I

    .prologue
    .line 1128
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsVertexArray(I)Z

    move-result v0

    return v0
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 218
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glLineWidth(F)V

    .line 220
    return-void
.end method

.method public glLinkProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 648
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glLinkProgram(I)V

    .line 650
    return-void
.end method

.method public glPauseTransformFeedback()V
    .locals 1

    .prologue
    .line 1444
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1445
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glPauseTransformFeedback()V

    .line 1446
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 224
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glPixelStorei(II)V

    .line 226
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 230
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glPolygonOffset(FF)V

    .line 232
    return-void
.end method

.method public glProgramParameteri(III)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "value"    # I

    .prologue
    .line 1456
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1457
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glProgramParameteri(III)V

    .line 1458
    return-void
.end method

.method public glReadBuffer(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 907
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 908
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glReadBuffer(I)V

    .line 909
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
    .line 236
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 238
    return-void
.end method

.method public glReleaseShaderCompiler()V
    .locals 1

    .prologue
    .line 654
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glReleaseShaderCompiler()V

    .line 656
    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 660
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glRenderbufferStorage(IIII)V

    .line 662
    return-void
.end method

.method public glRenderbufferStorageMultisample(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "samples"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1080
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1081
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glRenderbufferStorageMultisample(IIIII)V

    .line 1082
    return-void
.end method

.method public glResumeTransformFeedback()V
    .locals 1

    .prologue
    .line 1450
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1451
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glResumeTransformFeedback()V

    .line 1452
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .prologue
    .line 666
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glSampleCoverage(FZ)V

    .line 668
    return-void
.end method

.method public glSamplerParameterf(IIF)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 1378
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1379
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameterf(IIF)V

    .line 1380
    return-void
.end method

.method public glSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1384
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1385
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 1386
    return-void
.end method

.method public glSamplerParameteri(III)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1366
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1367
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameteri(III)V

    .line 1368
    return-void
.end method

.method public glSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1372
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1373
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 1374
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 242
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glScissor(IIII)V

    .line 244
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
    .line 672
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    .line 674
    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 678
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 679
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glShaderSource(ILjava/lang/String;)V

    .line 680
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 248
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glStencilFunc(III)V

    .line 250
    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "func"    # I
    .param p3, "ref"    # I
    .param p4, "mask"    # I

    .prologue
    .line 684
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 685
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glStencilFuncSeparate(IIII)V

    .line 686
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 254
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glStencilMask(I)V

    .line 256
    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "mask"    # I

    .prologue
    .line 690
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glStencilMaskSeparate(II)V

    .line 692
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .prologue
    .line 260
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glStencilOp(III)V

    .line 262
    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "fail"    # I
    .param p3, "zfail"    # I
    .param p4, "zpass"    # I

    .prologue
    .line 696
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glStencilOpSeparate(IIII)V

    .line 698
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
    .line 267
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 269
    return-void
.end method

.method public glTexImage3D(IIIIIIIIII)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I
    .param p7, "border"    # I
    .param p8, "format"    # I
    .param p9, "type"    # I
    .param p10, "offset"    # I

    .prologue
    .line 937
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 938
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage3D(IIIIIIIIII)V

    .line 939
    return-void
.end method

.method public glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I
    .param p7, "border"    # I
    .param p8, "format"    # I
    .param p9, "type"    # I
    .param p10, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 930
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 931
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    .line 932
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 273
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameterf(IIF)V

    .line 275
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 702
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 704
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 708
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 709
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameteri(III)V

    .line 710
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 714
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 715
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 716
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
    .line 280
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 282
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIII)V
    .locals 12
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "zoffset"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "depth"    # I
    .param p9, "format"    # I
    .param p10, "type"    # I
    .param p11, "offset"    # I

    .prologue
    .line 951
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 952
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIII)V

    .line 953
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V
    .locals 12
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "zoffset"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "depth"    # I
    .param p9, "format"    # I
    .param p10, "type"    # I
    .param p11, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 944
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 945
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    .line 946
    return-void
.end method

.method public glTransformFeedbackVaryings(I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "varyings"    # [Ljava/lang/String;
    .param p3, "bufferMode"    # I

    .prologue
    .line 1158
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTransformFeedbackVaryings(I[Ljava/lang/String;I)V

    .line 1160
    return-void
.end method

.method public glUniform1f(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F

    .prologue
    .line 720
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 721
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1f(IF)V

    .line 722
    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 726
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 727
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 728
    return-void
.end method

.method public glUniform1fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1523
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1524
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1fv(II[FI)V

    .line 1525
    return-void
.end method

.method public glUniform1i(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I

    .prologue
    .line 732
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 733
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1i(II)V

    .line 734
    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 738
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 739
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1iv(IILjava/nio/IntBuffer;)V

    .line 740
    return-void
.end method

.method public glUniform1iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1529
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1530
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1iv(II[II)V

    .line 1531
    return-void
.end method

.method public glUniform1uiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1206
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1207
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1uiv(IILjava/nio/IntBuffer;)V

    .line 1208
    return-void
.end method

.method public glUniform2f(IFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 744
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 745
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2f(IFF)V

    .line 746
    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 750
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 751
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 752
    return-void
.end method

.method public glUniform2fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1535
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1536
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2fv(II[FI)V

    .line 1537
    return-void
.end method

.method public glUniform2i(III)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 756
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 757
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2i(III)V

    .line 758
    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 762
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 763
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2iv(IILjava/nio/IntBuffer;)V

    .line 764
    return-void
.end method

.method public glUniform2iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1541
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1542
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2iv(II[II)V

    .line 1543
    return-void
.end method

.method public glUniform3f(IFFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 768
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 769
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3f(IFFF)V

    .line 770
    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 774
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 775
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 776
    return-void
.end method

.method public glUniform3fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1547
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1548
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3fv(II[FI)V

    .line 1549
    return-void
.end method

.method public glUniform3i(IIII)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 780
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 781
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3i(IIII)V

    .line 782
    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 786
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 787
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3iv(IILjava/nio/IntBuffer;)V

    .line 788
    return-void
.end method

.method public glUniform3iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1553
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1554
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3iv(II[II)V

    .line 1555
    return-void
.end method

.method public glUniform3uiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1212
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1213
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3uiv(IILjava/nio/IntBuffer;)V

    .line 1214
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
    .line 792
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 793
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4f(IFFFF)V

    .line 794
    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 798
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 799
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 800
    return-void
.end method

.method public glUniform4fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1559
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1560
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4fv(II[FI)V

    .line 1561
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
    .line 804
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 805
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4i(IIIII)V

    .line 806
    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .prologue
    .line 810
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4iv(IILjava/nio/IntBuffer;)V

    .line 812
    return-void
.end method

.method public glUniform4iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1565
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1566
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4iv(II[II)V

    .line 1567
    return-void
.end method

.method public glUniform4uiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1218
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1219
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4uiv(IILjava/nio/IntBuffer;)V

    .line 1220
    return-void
.end method

.method public glUniformBlockBinding(III)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "uniformBlockBinding"    # I

    .prologue
    .line 1296
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1297
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniformBlockBinding(III)V

    .line 1298
    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 816
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 817
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    .line 818
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
    .line 1571
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1572
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2fv(IIZ[FI)V

    .line 1573
    return-void
.end method

.method public glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1037
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1038
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 1039
    return-void
.end method

.method public glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1049
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1050
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 1051
    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 822
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 823
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 824
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
    .line 1577
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1578
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3fv(IIZ[FI)V

    .line 1579
    return-void
.end method

.method public glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1043
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1044
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 1045
    return-void
.end method

.method public glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1061
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1062
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 1063
    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 828
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 829
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 830
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
    .line 1583
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1584
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4fv(IIZ[FI)V

    .line 1585
    return-void
.end method

.method public glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1055
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1056
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 1057
    return-void
.end method

.method public glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1067
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1068
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 1069
    return-void
.end method

.method public glUnmapBuffer(I)Z
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 1018
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1019
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glUnmapBuffer(I)Z

    move-result v0

    return v0
.end method

.method public glUseProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 834
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->shaderSwitches:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->shaderSwitches:I

    .line 835
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 836
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glUseProgram(I)V

    .line 837
    return-void
.end method

.method public glValidateProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 841
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 842
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glValidateProgram(I)V

    .line 843
    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F

    .prologue
    .line 847
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 848
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib1f(IF)V

    .line 849
    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 853
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 854
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    .line 855
    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 859
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 860
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib2f(IFF)V

    .line 861
    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 865
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 866
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    .line 867
    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 871
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 872
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib3f(IFFF)V

    .line 873
    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 877
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 878
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    .line 879
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
    .line 883
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 884
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib4f(IFFFF)V

    .line 885
    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 889
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 890
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    .line 891
    return-void
.end method

.method public glVertexAttribDivisor(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "divisor"    # I

    .prologue
    .line 1402
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1403
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 1404
    return-void
.end method

.method public glVertexAttribI4i(IIIII)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .prologue
    .line 1182
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribI4i(IIIII)V

    .line 1184
    return-void
.end method

.method public glVertexAttribI4ui(IIIII)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .prologue
    .line 1188
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribI4ui(IIIII)V

    .line 1190
    return-void
.end method

.method public glVertexAttribIPointer(IIIII)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "stride"    # I
    .param p5, "offset"    # I

    .prologue
    .line 1164
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 1165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribIPointer(IIIII)V

    .line 1166
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
    .line 901
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 902
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribPointer(IIIZII)V

    .line 903
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
    .line 895
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 896
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 897
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 286
    sget v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->calls:I

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glViewport(IIII)V

    .line 288
    return-void
.end method
