.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.super Landroid/view/SurfaceView;
.source "GLSurfaceViewAPI18.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$LogWriter;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$SimpleEGLConfigChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$ComponentSizeChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$BaseConfigChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultWindowSurfaceFactory;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultContextFactory;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceViewAPI18"

.field private static final sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

.field private mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1978
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;)V

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1980
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 226
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->init()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1980
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 235
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->init()V

    .line 236
    return-void
.end method

.method static synthetic access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)I
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)I
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Z
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-eqz v0, :cond_0

    .line 1855
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1858
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 255
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 258
    .local v1, "sdkVersion":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 259
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 249
    return-void

    .line 247
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 593
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 597
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 598
    const/4 v0, 0x1

    .line 599
    .local v0, "renderMode":I
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->getRenderMode()I

    move-result v0

    .line 602
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 603
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->setRenderMode(I)V

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->start()V

    .line 608
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mDetached:Z

    .line 609
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->requestExitAndWait()V

    .line 624
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mDetached:Z

    .line 625
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 626
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->onPause()V

    .line 564
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->onResume()V

    .line 575
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->requestRender()V

    .line 529
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mDebugFlags:I

    .line 294
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 454
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$ComponentSizeChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 456
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->checkRenderThreadState()V

    .line 418
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 419
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 436
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$SimpleEGLConfigChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 437
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->checkRenderThreadState()V

    .line 486
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLContextClientVersion:I

    .line 487
    return-void
.end method

.method public setEGLContextFactory(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->checkRenderThreadState()V

    .line 387
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;

    .line 388
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->checkRenderThreadState()V

    .line 401
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;

    .line 402
    return-void
.end method

.method public setGLWrapper(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLWrapper;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLWrapper;

    .line 281
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mPreserveEGLContextOnPause:Z

    .line 324
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->setRenderMode(I)V

    .line 507
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->checkRenderThreadState()V

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$SimpleEGLConfigChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultContextFactory;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 368
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultWindowSurfaceFactory;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;

    .line 370
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 371
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->start()V

    .line 373
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->onWindowResize(II)V

    .line 554
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->surfaceCreated()V

    .line 537
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->surfaceDestroyed()V

    .line 546
    return-void
.end method
