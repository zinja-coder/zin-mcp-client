.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1861
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$1;

    .prologue
    .line 1860
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    const/4 v1, 0x1

    .line 1944
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1950
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersion:I

    .line 1951
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersion:I

    if-lt v0, v2, :cond_0

    .line 1952
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1958
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1960
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1925
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1926
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLESVersion()V

    .line 1927
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 1929
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1931
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1933
    :cond_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1939
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1929
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1933
    goto :goto_1

    .line 1925
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-ne v0, p1, :cond_0

    .line 1907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 1909
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1910
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1916
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1920
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLESVersion()V

    .line 1921
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1920
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .prologue
    .line 1867
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->access$1102(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;Z)Z

    .line 1868
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-ne v0, p1, :cond_0

    .line 1869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 1871
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    monitor-exit p0

    return-void

    .line 1867
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1882
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-nez v1, :cond_2

    .line 1883
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    .line 1884
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1898
    :cond_1
    :goto_0
    return v0

    .line 1887
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLESVersion()V

    .line 1888
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    if-eqz v0, :cond_3

    .line 1896
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->requestReleaseEglContextLocked()V

    .line 1898
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
