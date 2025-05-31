.class public Lcom/badlogic/gdx/backends/android/AndroidGL20;
.super Ljava/lang/Object;
.source "AndroidGL20.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "gdx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/badlogic/gdx/backends/android/AndroidGL20;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public native glActiveTexture(I)V
.end method

.method public native glAttachShader(II)V
.end method

.method public native glBindAttribLocation(IILjava/lang/String;)V
.end method

.method public native glBindBuffer(II)V
.end method

.method public native glBindFramebuffer(II)V
.end method

.method public native glBindRenderbuffer(II)V
.end method

.method public native glBindTexture(II)V
.end method

.method public native glBlendColor(FFFF)V
.end method

.method public native glBlendEquation(I)V
.end method

.method public native glBlendEquationSeparate(II)V
.end method

.method public native glBlendFunc(II)V
.end method

.method public native glBlendFuncSeparate(IIII)V
.end method

.method public native glBufferData(IILjava/nio/Buffer;I)V
.end method

.method public native glBufferSubData(IIILjava/nio/Buffer;)V
.end method

.method public native glCheckFramebufferStatus(I)I
.end method

.method public native glClear(I)V
.end method

.method public native glClearColor(FFFF)V
.end method

.method public native glClearDepthf(F)V
.end method

.method public native glClearStencil(I)V
.end method

.method public native glColorMask(ZZZZ)V
.end method

.method public native glCompileShader(I)V
.end method

.method public native glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
.end method

.method public native glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glCopyTexImage2D(IIIIIIII)V
.end method

.method public native glCopyTexSubImage2D(IIIIIIII)V
.end method

.method public native glCreateProgram()I
.end method

.method public native glCreateShader(I)I
.end method

.method public native glCullFace(I)V
.end method

.method public native glDeleteBuffer(I)V
.end method

.method public native glDeleteBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteFramebuffer(I)V
.end method

.method public native glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteProgram(I)V
.end method

.method public native glDeleteRenderbuffer(I)V
.end method

.method public native glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteShader(I)V
.end method

.method public native glDeleteTexture(I)V
.end method

.method public native glDeleteTextures(ILjava/nio/IntBuffer;)V
.end method

.method public native glDepthFunc(I)V
.end method

.method public native glDepthMask(Z)V
.end method

.method public native glDepthRangef(FF)V
.end method

.method public native glDetachShader(II)V
.end method

.method public native glDisable(I)V
.end method

.method public native glDisableVertexAttribArray(I)V
.end method

.method public native glDrawArrays(III)V
.end method

.method public native glDrawElements(IIII)V
.end method

.method public native glDrawElements(IIILjava/nio/Buffer;)V
.end method

.method public native glEnable(I)V
.end method

.method public native glEnableVertexAttribArray(I)V
.end method

.method public native glFinish()V
.end method

.method public native glFlush()V
.end method

.method public native glFramebufferRenderbuffer(IIII)V
.end method

.method public native glFramebufferTexture2D(IIIII)V
.end method

.method public native glFrontFace(I)V
.end method

.method public native glGenBuffer()I
.end method

.method public native glGenBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenFramebuffer()I
.end method

.method public native glGenFramebuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenRenderbuffer()I
.end method

.method public native glGenRenderbuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenTexture()I
.end method

.method public native glGenTextures(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenerateMipmap(I)V
.end method

.method public native glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
.end method

.method public native glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
.end method

.method public native glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
.end method

.method public native glGetAttribLocation(ILjava/lang/String;)I
.end method

.method public native glGetBooleanv(ILjava/nio/Buffer;)V
.end method

.method public native glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetError()I
.end method

.method public native glGetFloatv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
.end method

.method public native glGetIntegerv(ILjava/nio/IntBuffer;)V
.end method

.method public native glGetProgramInfoLog(I)Ljava/lang/String;
.end method

.method public native glGetProgramiv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetShaderInfoLog(I)Ljava/lang/String;
.end method

.method public native glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
.end method

.method public native glGetShaderSource(IILjava/nio/Buffer;Ljava/lang/String;)V
.end method

.method public native glGetShaderiv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetString(I)Ljava/lang/String;
.end method

.method public native glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glGetTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetUniformLocation(ILjava/lang/String;)I
.end method

.method public native glGetUniformfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glGetUniformiv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
.end method

.method public native glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
.end method

.method public native glHint(II)V
.end method

.method public native glIsBuffer(I)Z
.end method

.method public native glIsEnabled(I)Z
.end method

.method public native glIsFramebuffer(I)Z
.end method

.method public native glIsProgram(I)Z
.end method

.method public native glIsRenderbuffer(I)Z
.end method

.method public native glIsShader(I)Z
.end method

.method public native glIsTexture(I)Z
.end method

.method public native glLineWidth(F)V
.end method

.method public native glLinkProgram(I)V
.end method

.method public native glPixelStorei(II)V
.end method

.method public native glPolygonOffset(FF)V
.end method

.method public native glReadPixels(IIIIIILjava/nio/Buffer;)V
.end method

.method public native glReleaseShaderCompiler()V
.end method

.method public native glRenderbufferStorage(IIII)V
.end method

.method public native glSampleCoverage(FZ)V
.end method

.method public native glScissor(IIII)V
.end method

.method public native glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
.end method

.method public native glShaderSource(ILjava/lang/String;)V
.end method

.method public native glStencilFunc(III)V
.end method

.method public native glStencilFuncSeparate(IIII)V
.end method

.method public native glStencilMask(I)V
.end method

.method public native glStencilMaskSeparate(II)V
.end method

.method public native glStencilOp(III)V
.end method

.method public native glStencilOpSeparate(IIII)V
.end method

.method public native glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glTexParameterf(IIF)V
.end method

.method public native glTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glTexParameteri(III)V
.end method

.method public native glTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glUniform1f(IF)V
.end method

.method public native glUniform1fv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glUniform1fv(II[FI)V
.end method

.method public native glUniform1i(II)V
.end method

.method public native glUniform1iv(IILjava/nio/IntBuffer;)V
.end method

.method public native glUniform1iv(II[II)V
.end method

.method public native glUniform2f(IFF)V
.end method

.method public native glUniform2fv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glUniform2fv(II[FI)V
.end method

.method public native glUniform2i(III)V
.end method

.method public native glUniform2iv(IILjava/nio/IntBuffer;)V
.end method

.method public native glUniform2iv(II[II)V
.end method

.method public native glUniform3f(IFFF)V
.end method

.method public native glUniform3fv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glUniform3fv(II[FI)V
.end method

.method public native glUniform3i(IIII)V
.end method

.method public native glUniform3iv(IILjava/nio/IntBuffer;)V
.end method

.method public native glUniform3iv(II[II)V
.end method

.method public native glUniform4f(IFFFF)V
.end method

.method public native glUniform4fv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glUniform4fv(II[FI)V
.end method

.method public native glUniform4i(IIIII)V
.end method

.method public native glUniform4iv(IILjava/nio/IntBuffer;)V
.end method

.method public native glUniform4iv(II[II)V
.end method

.method public native glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
.end method

.method public native glUniformMatrix2fv(IIZ[FI)V
.end method

.method public native glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
.end method

.method public native glUniformMatrix3fv(IIZ[FI)V
.end method

.method public native glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
.end method

.method public native glUniformMatrix4fv(IIZ[FI)V
.end method

.method public native glUseProgram(I)V
.end method

.method public native glValidateProgram(I)V
.end method

.method public native glVertexAttrib1f(IF)V
.end method

.method public native glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glVertexAttrib2f(IFF)V
.end method

.method public native glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glVertexAttrib3f(IFFF)V
.end method

.method public native glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glVertexAttrib4f(IFFFF)V
.end method

.method public native glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glVertexAttribPointer(IIIZII)V
.end method

.method public native glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
.end method

.method public native glViewport(IIII)V
.end method
