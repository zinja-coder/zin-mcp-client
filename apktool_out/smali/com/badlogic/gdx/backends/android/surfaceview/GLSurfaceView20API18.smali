.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.source "GLSurfaceView20API18.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ConfigChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field final resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "GL2JNIView"

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 53
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->init(ZII)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIILcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "depth"    # I
    .param p4, "stencil"    # I
    .param p5, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 59
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->init(ZII)V

    .line 61
    return-void
.end method

.method static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 151
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 152
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private init(ZII)V
    .locals 7
    .param p1, "translucent"    # Z
    .param p2, "depth"    # I
    .param p3, "stencil"    # I

    .prologue
    const/4 v5, 0x5

    const/16 v1, 0x8

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 120
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ContextFactory;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ContextFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setEGLContextFactory(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLContextFactory;)V

    .line 126
    if-eqz p1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 130
    return-void

    .line 126
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move v1, v5

    move v3, v5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 77
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18$1;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;Landroid/view/View;Z)V

    .line 103
    .local v0, "connection":Landroid/view/inputmethod/BaseInputConnection;
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;->calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    move-result-object v0

    .line 66
    .local v0, "measures":Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    iget v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->width:I

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setMeasuredDimension(II)V

    .line 67
    return-void
.end method
