.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "GLSurfaceViewAPI18.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EGLWindowSurfaceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultWindowSurfaceFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$DefaultWindowSurfaceFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "nativeWindow"    # Ljava/lang/Object;

    .prologue
    .line 819
    const/4 v1, 0x0

    .line 821
    .local v1, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, p2, p3, p4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 831
    :goto_0
    return-object v1

    .line 822
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "GLSurfaceViewAPI18"

    const-string v3, "eglCreateWindowSurface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 836
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 837
    return-void
.end method
