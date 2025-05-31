.class public Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.super Ljava/lang/Object;
.source "AndroidGraphics.java"

# interfaces
.implements Lcom/badlogic/gdx/Graphics;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidGraphics"

.field static volatile enforceContinuousRendering:Z


# instance fields
.field app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

.field private bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

.field protected final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field volatile created:Z

.field protected deltaTime:F

.field private density:F

.field volatile destroy:Z

.field eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field extensions:Ljava/lang/String;

.field protected fps:I

.field protected frameId:J

.field protected frameStart:J

.field protected frames:I

.field gl20:Lcom/badlogic/gdx/graphics/GL20;

.field gl30:Lcom/badlogic/gdx/graphics/GL30;

.field height:I

.field private isContinuous:Z

.field protected lastFrameTime:J

.field protected mean:Lcom/badlogic/gdx/math/WindowedMean;

.field volatile pause:Z

.field private ppcX:F

.field private ppcY:F

.field private ppiX:F

.field private ppiY:F

.field volatile resume:Z

.field volatile running:Z

.field synch:Ljava/lang/Object;

.field value:[I

.field final view:Landroid/view/View;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 1
    .param p1, "application"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V
    .locals 10
    .param p1, "application"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;
    .param p4, "focusableView"    # Z

    .prologue
    const/4 v1, 0x5

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 75
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    .line 77
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    .line 78
    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 80
    new-instance v0, Lcom/badlogic/gdx/math/WindowedMean;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    .line 82
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    .line 83
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 84
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 85
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 86
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 88
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    .line 89
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    .line 90
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    .line 91
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    .line 92
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    .line 95
    new-instance v0, Lcom/badlogic/gdx/Graphics$BufferFormat;

    const/4 v2, 0x6

    const/16 v5, 0x10

    move v3, v1

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    .line 96
    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    .line 296
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    .line 105
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 106
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    .line 107
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->preserveEGLContextOnPause()V

    .line 109
    if-eqz p4, :cond_0

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method private getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attrib"    # I
    .param p5, "defValue"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 302
    .end local p5    # "defValue":I
    :cond_0
    return p5
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 15
    .param p1, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 275
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 276
    .local v1, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    .line 277
    .local v2, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 278
    .local v13, "r":I
    const/16 v4, 0x3023

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 279
    .local v12, "g":I
    const/16 v4, 0x3022

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 280
    .local v6, "b":I
    const/16 v4, 0x3021

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 281
    .local v7, "a":I
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 282
    .local v8, "d":I
    const/16 v4, 0x3026

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 283
    .local v9, "s":I
    const/16 v4, 0x3031

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x30e1

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 285
    .local v10, "samples":I
    const/16 v4, 0x30e1

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    .line 287
    .local v11, "coverageSample":Z
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "framebuffer: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "depthbuffer: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stencilbuffer: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "samples: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverage sampling: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v3, Lcom/badlogic/gdx/Graphics$BufferFormat;

    move v4, v13

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    .line 294
    return-void

    .line 285
    .end local v11    # "coverageSample":Z
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private setupGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 228
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OGL renderer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OGL vendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1f00

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OGL version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1f02

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OGL extensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1f03

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updatePpi()V
    .locals 3

    .prologue
    const v2, 0x40228f5c    # 2.54f

    .line 169
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 172
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    .line 173
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    .line 174
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    .line 175
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    .line 176
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    .line 177
    return-void
.end method


# virtual methods
.method protected checkGL20()Z
    .locals 13

    .prologue
    const/16 v4, 0xa

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    .line 180
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 181
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 183
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    new-array v7, v12, [I

    .line 184
    .local v7, "version":[I
    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 186
    const/4 v6, 0x4

    .line 187
    .local v6, "EGL_OPENGL_ES2_BIT":I
    const/16 v10, 0x9

    new-array v2, v10, [I

    const/16 v10, 0x3024

    aput v10, v2, v9

    aput v11, v2, v8

    const/16 v10, 0x3023

    aput v10, v2, v12

    const/4 v10, 0x3

    aput v11, v2, v10

    const/16 v10, 0x3022

    aput v10, v2, v11

    const/4 v10, 0x5

    aput v11, v2, v10

    const/4 v10, 0x6

    const/16 v11, 0x3040

    aput v11, v2, v10

    const/4 v10, 0x7

    aput v6, v2, v10

    const/16 v10, 0x8

    const/16 v11, 0x3038

    aput v11, v2, v10

    .line 190
    .local v2, "configAttribs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 191
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v8, [I

    .line 192
    .local v5, "num_config":[I
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 193
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 194
    aget v4, v5, v9

    if-lez v4, :cond_0

    move v4, v8

    :goto_0
    return v4

    :cond_0
    move v4, v9

    goto :goto_0
.end method

.method public clearManagedCaches()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Mesh;->clearAllMeshes(Lcom/badlogic/gdx/Application;)V

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Texture;->clearAllTextures(Lcom/badlogic/gdx/Application;)V

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->clearAllCubemaps(Lcom/badlogic/gdx/Application;)V

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    .line 490
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logManagedCachesStatus()V

    .line 491
    return-void
.end method

.method protected createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Landroid/view/View;
    .locals 9
    .param p1, "application"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->checkGL20()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Libgdx requires OpenGL ES 2.0"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v7

    .line 130
    .local v7, "configChooser":Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .local v8, "sdkVersion":I
    const/16 v1, 0xa

    if-gt v8, v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGLSurfaceView20API18:Z

    if-eqz v1, :cond_2

    .line 132
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    .line 133
    .local v0, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    if-eqz v7, :cond_1

    .line 134
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 137
    :goto_0
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 146
    .end local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    :goto_1
    return-object v0

    .line 136
    .restart local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    .line 140
    .end local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    .line 141
    .local v0, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    if-eqz v7, :cond_3

    .line 142
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 145
    :goto_2
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(IIIIII)V

    goto :goto_2
.end method

.method destroy()V
    .locals 5

    .prologue
    .line 342
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v2

    .line 343
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 344
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 346
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 348
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "waiting for destroy synchronization failed!"

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    return-void
.end method

.method public getBufferFormat()Lcom/badlogic/gdx/Graphics$BufferFormat;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    return-object v0
.end method

.method public getDeltaTime()F
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    goto :goto_0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    return v0
.end method

.method public getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 563
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 564
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 565
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IIII)V

    return-object v0
.end method

.method public getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 3

    .prologue
    .line 542
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/Graphics$DisplayMode;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 8

    .prologue
    .line 165
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;-><init>(IIIIIII)V

    return-object v0
.end method

.method public getFrameId()J
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    return-wide v0
.end method

.method public getFramesPerSecond()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->fps:I

    return v0
.end method

.method public getGL20()Lcom/badlogic/gdx/graphics/GL20;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    return-object v0
.end method

.method public getGL30()Lcom/badlogic/gdx/graphics/GL30;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    return v0
.end method

.method public getPpcX()F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    return v0
.end method

.method public getPpcY()F
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    return v0
.end method

.method public getPpiX()F
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    return v0
.end method

.method public getPpiY()F
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    return v0
.end method

.method public getRawDeltaTime()F
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    return v0
.end method

.method public isContinuousRendering()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public isGL30Available()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logManagedCachesStatus()V
    .locals 3

    .prologue
    .line 494
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/Mesh;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 359
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    sub-long v14, v12, v14

    long-to-float v11, v14

    const v14, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v11, v14

    move-object/from16 v0, p0

    iput v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    .line 360
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 363
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    if-nez v11, :cond_3

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    .line 369
    :goto_0
    const/4 v9, 0x0

    .line 370
    .local v9, "lrunning":Z
    const/4 v7, 0x0

    .line 371
    .local v7, "lpause":Z
    const/4 v4, 0x0

    .line 372
    .local v4, "ldestroy":Z
    const/4 v8, 0x0

    .line 374
    .local v8, "lresume":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v14

    .line 375
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 376
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 377
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 378
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 380
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    if-eqz v11, :cond_0

    .line 381
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 384
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    if-eqz v11, :cond_1

    .line 385
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 386
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 389
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    if-eqz v11, :cond_2

    .line 390
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 393
    :cond_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 395
    if-eqz v8, :cond_5

    .line 396
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    .line 397
    .local v6, "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    monitor-enter v6

    .line 398
    :try_start_1
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/LifecycleListener;

    .line 399
    .local v5, "listener":Lcom/badlogic/gdx/LifecycleListener;
    invoke-interface {v5}, Lcom/badlogic/gdx/LifecycleListener;->resume()V

    goto :goto_1

    .line 401
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listener":Lcom/badlogic/gdx/LifecycleListener;
    :catchall_0
    move-exception v11

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 366
    .end local v4    # "ldestroy":Z
    .end local v6    # "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    .end local v7    # "lpause":Z
    .end local v8    # "lresume":Z
    .end local v9    # "lrunning":Z
    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    goto :goto_0

    .line 393
    .restart local v4    # "ldestroy":Z
    .restart local v7    # "lpause":Z
    .restart local v8    # "lresume":Z
    .restart local v9    # "lrunning":Z
    :catchall_1
    move-exception v11

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 401
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    :cond_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    .line 403
    sget-object v11, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v14, "AndroidGraphics"

    const-string v15, "resumed"

    invoke-interface {v11, v14, v15}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    :cond_5
    if-eqz v9, :cond_7

    .line 407
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v14

    monitor-enter v14

    .line 408
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 409
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v15}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 411
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v11, :cond_6

    .line 415
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 413
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 411
    .end local v2    # "i":I
    :catchall_2
    move-exception v11

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v11

    .line 416
    .restart local v2    # "i":I
    :catch_0
    move-exception v10

    .line 417
    .local v10, "t":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 420
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    .line 421
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameId:J

    .line 422
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    .line 425
    .end local v2    # "i":I
    :cond_7
    if-eqz v7, :cond_9

    .line 426
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    .line 427
    .restart local v6    # "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    monitor-enter v6

    .line 428
    :try_start_7
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/LifecycleListener;

    .line 429
    .restart local v5    # "listener":Lcom/badlogic/gdx/LifecycleListener;
    invoke-interface {v5}, Lcom/badlogic/gdx/LifecycleListener;->pause()V

    goto :goto_4

    .line 431
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listener":Lcom/badlogic/gdx/LifecycleListener;
    :catchall_3
    move-exception v11

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v11

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 432
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    .line 433
    sget-object v11, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v14, "AndroidGraphics"

    const-string v15, "paused"

    invoke-interface {v11, v14, v15}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    :cond_9
    if-eqz v4, :cond_b

    .line 437
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    .line 438
    .restart local v6    # "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    monitor-enter v6

    .line 439
    :try_start_9
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/LifecycleListener;

    .line 440
    .restart local v5    # "listener":Lcom/badlogic/gdx/LifecycleListener;
    invoke-interface {v5}, Lcom/badlogic/gdx/LifecycleListener;->dispose()V

    goto :goto_5

    .line 442
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listener":Lcom/badlogic/gdx/LifecycleListener;
    :catchall_4
    move-exception v11

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v11

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 443
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v11}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    .line 444
    sget-object v11, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v14, "AndroidGraphics"

    const-string v15, "destroyed"

    invoke-interface {v11, v14, v15}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "listeners":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/LifecycleListener;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x3b9aca00

    cmp-long v11, v14, v16

    if-lez v11, :cond_c

    .line 448
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->fps:I

    .line 449
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 450
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    .line 452
    :cond_c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 453
    return-void
.end method

.method public onPauseGLSurfaceView()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->onPause()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 155
    :cond_1
    return-void
.end method

.method public onResumeGLSurfaceView()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->onResume()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 162
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    .line 237
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    .line 238
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updatePpi()V

    .line 239
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 240
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->create()V

    .line 242
    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    .line 243
    monitor-enter p0

    .line 244
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/badlogic/gdx/ApplicationListener;->resize(II)V

    .line 248
    return-void

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 253
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setupGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 254
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 255
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updatePpi()V

    .line 257
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Mesh;->invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V

    .line 258
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Texture;->invalidateAllTextures(Lcom/badlogic/gdx/Application;)V

    .line 259
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Cubemap;->invalidateAllCubemaps(Lcom/badlogic/gdx/Application;)V

    .line 260
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    .line 261
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    .line 263
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logManagedCachesStatus()V

    .line 265
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 266
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    .line 267
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    .line 268
    new-instance v1, Lcom/badlogic/gdx/math/WindowedMean;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    .line 269
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 271
    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    iget v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    invoke-interface {p1, v4, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 272
    return-void
.end method

.method pause()V
    .locals 6

    .prologue
    .line 315
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    if-nez v1, :cond_0

    monitor-exit v2

    .line 339
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 319
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 327
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 328
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "waiting for pause synchronization took too long; assuming deadlock and killing"

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "ignored":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "waiting for pause synchronization failed!"

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 338
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected preserveEGLContextOnPause()V
    .locals 7

    .prologue
    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .local v1, "sdkVersion":I
    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v2, v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v2, v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;

    if-eqz v2, :cond_2

    .line 119
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPreserveEGLContextOnPause"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "Method GLSurfaceView.setPreserveEGLContextOnPause not found"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestRendering()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->requestRender()V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 606
    :cond_1
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 311
    monitor-exit v1

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContinuousRendering(Z)V
    .locals 4
    .param p1, "isContinuous"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 585
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 587
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    .line 588
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuous:Z

    if-eqz v1, :cond_5

    move v0, v3

    .line 589
    .local v0, "renderMode":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v1, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->setRenderMode(I)V

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    check-cast v1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/WindowedMean;->clear()V

    .line 593
    .end local v0    # "renderMode":I
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 587
    goto :goto_0

    :cond_5
    move v0, v2

    .line 588
    goto :goto_1
.end method

.method public setDisplayMode(IIZ)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fullscreen"    # Z

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z
    .locals 1
    .param p1, "displayMode"    # Lcom/badlogic/gdx/Graphics$DisplayMode;

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 553
    return-void
.end method

.method public setVSync(Z)V
    .locals 0
    .param p1, "vsync"    # Z

    .prologue
    .line 575
    return-void
.end method

.method public supportsDisplayModeChange()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
