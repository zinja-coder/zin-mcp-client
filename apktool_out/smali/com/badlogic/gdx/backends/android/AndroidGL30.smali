.class public Lcom/badlogic/gdx/backends/android/AndroidGL30;
.super Lcom/badlogic/gdx/backends/android/AndroidGL20;
.source "AndroidGL30.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL30;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    return-void
.end method


# virtual methods
.method public glBeginQuery(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "id"    # I

    .prologue
    .line 121
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBeginQuery(II)V

    .line 122
    return-void
.end method

.method public glBeginTransformFeedback(I)V
    .locals 0
    .param p1, "primitiveMode"    # I

    .prologue
    .line 297
    invoke-static {p1}, Landroid/opengl/GLES30;->glBeginTransformFeedback(I)V

    .line 298
    return-void
.end method

.method public glBindBufferBase(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I

    .prologue
    .line 312
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glBindBufferBase(III)V

    .line 313
    return-void
.end method

.method public glBindBufferRange(IIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I
    .param p4, "offset"    # I
    .param p5, "size"    # I

    .prologue
    .line 307
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glBindBufferRange(IIIII)V

    .line 308
    return-void
.end method

.method public glBindSampler(II)V
    .locals 0
    .param p1, "unit"    # I
    .param p2, "sampler"    # I

    .prologue
    .line 689
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBindSampler(II)V

    .line 690
    return-void
.end method

.method public glBindTransformFeedback(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "id"    # I

    .prologue
    .line 751
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBindTransformFeedback(II)V

    .line 752
    return-void
.end method

.method public glBindVertexArray(I)V
    .locals 0
    .param p1, "array"    # I

    .prologue
    .line 257
    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 258
    return-void
.end method

.method public glBlitFramebuffer(IIIIIIIIII)V
    .locals 0
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
    .line 232
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glBlitFramebuffer(IIIIIIIIII)V

    .line 233
    return-void
.end method

.method public glClearBufferfi(IIFI)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "depth"    # F
    .param p4, "stencil"    # I

    .prologue
    .line 506
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glClearBufferfi(IIFI)V

    .line 507
    return-void
.end method

.method public glClearBufferfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 501
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferfv(IILjava/nio/FloatBuffer;)V

    .line 502
    return-void
.end method

.method public glClearBufferiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 480
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferiv(IILjava/nio/IntBuffer;)V

    .line 481
    return-void
.end method

.method public glClearBufferuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 490
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferuiv(IILjava/nio/IntBuffer;)V

    .line 491
    return-void
.end method

.method public glCopyBufferSubData(IIIII)V
    .locals 0
    .param p1, "readTarget"    # I
    .param p2, "writeTarget"    # I
    .param p3, "readOffset"    # I
    .param p4, "writeOffset"    # I
    .param p5, "size"    # I

    .prologue
    .line 516
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glCopyBufferSubData(IIIII)V

    .line 517
    return-void
.end method

.method public glCopyTexSubImage3D(IIIIIIIII)V
    .locals 0
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
    .line 66
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES30;->glCopyTexSubImage3D(IIIIIIIII)V

    .line 67
    return-void
.end method

.method public glDeleteQueries(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 111
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteQueries(ILjava/nio/IntBuffer;)V

    .line 112
    return-void
.end method

.method public glDeleteQueries(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 106
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteQueries(I[II)V

    .line 107
    return-void
.end method

.method public glDeleteSamplers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 679
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteSamplers(ILjava/nio/IntBuffer;)V

    .line 680
    return-void
.end method

.method public glDeleteSamplers(I[II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 674
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteSamplers(I[II)V

    .line 675
    return-void
.end method

.method public glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 761
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 762
    return-void
.end method

.method public glDeleteTransformFeedbacks(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 756
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteTransformFeedbacks(I[II)V

    .line 757
    return-void
.end method

.method public glDeleteVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .prologue
    .line 267
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    .line 268
    return-void
.end method

.method public glDeleteVertexArrays(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 262
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 263
    return-void
.end method

.method public glDrawArraysInstanced(IIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I
    .param p4, "instanceCount"    # I

    .prologue
    .line 584
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glDrawArraysInstanced(IIII)V

    .line 585
    return-void
.end method

.method public glDrawBuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "bufs"    # Ljava/nio/IntBuffer;

    .prologue
    .line 166
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    .line 167
    return-void
.end method

.method public glDrawElementsInstanced(IIIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indicesOffset"    # I
    .param p5, "instanceCount"    # I

    .prologue
    .line 594
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glDrawElementsInstanced(IIIII)V

    .line 595
    return-void
.end method

.method public glDrawRangeElements(IIIIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "offset"    # I

    .prologue
    .line 36
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES30;->glDrawRangeElements(IIIIII)V

    .line 37
    return-void
.end method

.method public glDrawRangeElements(IIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 31
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES30;->glDrawRangeElements(IIIIILjava/nio/Buffer;)V

    .line 32
    return-void
.end method

.method public glEndQuery(I)V
    .locals 0
    .param p1, "target"    # I

    .prologue
    .line 126
    invoke-static {p1}, Landroid/opengl/GLES30;->glEndQuery(I)V

    .line 127
    return-void
.end method

.method public glEndTransformFeedback()V
    .locals 0

    .prologue
    .line 302
    invoke-static {}, Landroid/opengl/GLES30;->glEndTransformFeedback()V

    .line 303
    return-void
.end method

.method public glFlushMappedBufferRange(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 252
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glFlushMappedBufferRange(III)V

    .line 253
    return-void
.end method

.method public glFramebufferTextureLayer(IIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "texture"    # I
    .param p4, "level"    # I
    .param p5, "layer"    # I

    .prologue
    .line 242
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glFramebufferTextureLayer(IIIII)V

    .line 243
    return-void
.end method

.method public glGenQueries(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 101
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenQueries(ILjava/nio/IntBuffer;)V

    .line 102
    return-void
.end method

.method public glGenQueries(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 96
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenQueries(I[II)V

    .line 97
    return-void
.end method

.method public glGenSamplers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 669
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenSamplers(ILjava/nio/IntBuffer;)V

    .line 670
    return-void
.end method

.method public glGenSamplers(I[II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 664
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenSamplers(I[II)V

    .line 665
    return-void
.end method

.method public glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .prologue
    .line 771
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 772
    return-void
.end method

.method public glGenTransformFeedbacks(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 766
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenTransformFeedbacks(I[II)V

    .line 767
    return-void
.end method

.method public glGenVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .prologue
    .line 277
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    .line 278
    return-void
.end method

.method public glGenVertexArrays(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 272
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    .line 273
    return-void
.end method

.method public glGetActiveUniformBlockName(II)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I

    .prologue
    .line 574
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetActiveUniformBlockName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "length"    # Ljava/nio/Buffer;
    .param p4, "uniformBlockName"    # Ljava/nio/Buffer;

    .prologue
    .line 569
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V

    .line 570
    return-void
.end method

.method public glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 555
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V

    .line 556
    return-void
.end method

.method public glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformCount"    # I
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;
    .param p4, "pname"    # I
    .param p5, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 539
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V

    .line 540
    return-void
.end method

.method public glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/LongBuffer;

    .prologue
    .line 659
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V

    .line 660
    return-void
.end method

.method public glGetBufferPointerv(II)Ljava/nio/Buffer;
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I

    .prologue
    .line 156
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetBufferPointerv(II)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public glGetFragDataLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetFragDataLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetInteger64v(ILjava/nio/LongBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/LongBuffer;

    .prologue
    .line 629
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetInteger64v(ILjava/nio/LongBuffer;)V

    .line 630
    return-void
.end method

.method public glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 146
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V

    .line 147
    return-void
.end method

.method public glGetQueryiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 136
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetQueryiv(IILjava/nio/IntBuffer;)V

    .line 137
    return-void
.end method

.method public glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 741
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 742
    return-void
.end method

.method public glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 731
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 732
    return-void
.end method

.method public glGetStringi(II)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I
    .param p2, "index"    # I

    .prologue
    .line 511
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetStringi(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetUniformBlockIndex(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockName"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetUniformBlockIndex(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformNames"    # [Ljava/lang/String;
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;

    .prologue
    .line 527
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 528
    return-void
.end method

.method public glGetUniformuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 405
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetUniformuiv(IILjava/nio/IntBuffer;)V

    .line 406
    return-void
.end method

.method public glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 355
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V

    .line 356
    return-void
.end method

.method public glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 365
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V

    .line 366
    return-void
.end method

.method public glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;

    .prologue
    .line 818
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V

    .line 819
    return-void
.end method

.method public glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 831
    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES30;->glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V

    .line 832
    return-void
.end method

.method public glIsQuery(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 116
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsQuery(I)Z

    move-result v0

    return v0
.end method

.method public glIsSampler(I)Z
    .locals 1
    .param p1, "sampler"    # I

    .prologue
    .line 684
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsSampler(I)Z

    move-result v0

    return v0
.end method

.method public glIsTransformFeedback(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 776
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsTransformFeedback(I)Z

    move-result v0

    return v0
.end method

.method public glIsVertexArray(I)Z
    .locals 1
    .param p1, "array"    # I

    .prologue
    .line 282
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsVertexArray(I)Z

    move-result v0

    return v0
.end method

.method public glPauseTransformFeedback()V
    .locals 0

    .prologue
    .line 781
    invoke-static {}, Landroid/opengl/GLES30;->glPauseTransformFeedback()V

    .line 782
    return-void
.end method

.method public glProgramParameteri(III)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "value"    # I

    .prologue
    .line 808
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glProgramParameteri(III)V

    .line 809
    return-void
.end method

.method public glReadBuffer(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 26
    invoke-static {p1}, Landroid/opengl/GLES30;->glReadBuffer(I)V

    .line 27
    return-void
.end method

.method public glRenderbufferStorageMultisample(IIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "samples"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 237
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glRenderbufferStorageMultisample(IIIII)V

    .line 238
    return-void
.end method

.method public glResumeTransformFeedback()V
    .locals 0

    .prologue
    .line 786
    invoke-static {}, Landroid/opengl/GLES30;->glResumeTransformFeedback()V

    .line 787
    return-void
.end method

.method public glSamplerParameterf(IIF)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 710
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameterf(IIF)V

    .line 711
    return-void
.end method

.method public glSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 720
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 721
    return-void
.end method

.method public glSamplerParameteri(III)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 694
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameteri(III)V

    .line 695
    return-void
.end method

.method public glSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/IntBuffer;

    .prologue
    .line 705
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 706
    return-void
.end method

.method public glTexImage3D(IIIIIIIIII)V
    .locals 0
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
    .line 48
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIII)V

    .line 49
    return-void
.end method

.method public glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V
    .locals 0
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
    .line 42
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    .line 43
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIII)V
    .locals 0
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
    .line 60
    invoke-static/range {p1 .. p11}, Landroid/opengl/GLES30;->glTexSubImage3D(IIIIIIIIIII)V

    .line 61
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V
    .locals 0
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
    .line 54
    invoke-static/range {p1 .. p11}, Landroid/opengl/GLES30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    .line 55
    return-void
.end method

.method public glTransformFeedbackVaryings(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "varyings"    # [Ljava/lang/String;
    .param p3, "bufferMode"    # I

    .prologue
    .line 317
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glTransformFeedbackVaryings(I[Ljava/lang/String;I)V

    .line 318
    return-void
.end method

.method public glUniform1uiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 440
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform1uiv(IILjava/nio/IntBuffer;)V

    .line 441
    return-void
.end method

.method public glUniform3uiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 460
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform3uiv(IILjava/nio/IntBuffer;)V

    .line 461
    return-void
.end method

.method public glUniform4uiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .prologue
    .line 470
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform4uiv(IILjava/nio/IntBuffer;)V

    .line 471
    return-void
.end method

.method public glUniformBlockBinding(III)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "uniformBlockBinding"    # I

    .prologue
    .line 579
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniformBlockBinding(III)V

    .line 580
    return-void
.end method

.method public glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 176
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 177
    return-void
.end method

.method public glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 196
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 197
    return-void
.end method

.method public glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 186
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 187
    return-void
.end method

.method public glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 216
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 217
    return-void
.end method

.method public glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 206
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 207
    return-void
.end method

.method public glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 226
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 227
    return-void
.end method

.method public glUnmapBuffer(I)Z
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 151
    invoke-static {p1}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    move-result v0

    return v0
.end method

.method public glVertexAttribDivisor(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "divisor"    # I

    .prologue
    .line 746
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glVertexAttribDivisor(II)V

    .line 747
    return-void
.end method

.method public glVertexAttribI4i(IIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .prologue
    .line 370
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribI4i(IIIII)V

    .line 371
    return-void
.end method

.method public glVertexAttribI4ui(IIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .prologue
    .line 375
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribI4ui(IIIII)V

    .line 376
    return-void
.end method

.method public glVertexAttribIPointer(IIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "stride"    # I
    .param p5, "offset"    # I

    .prologue
    .line 345
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribIPointer(IIIII)V

    .line 346
    return-void
.end method
