.class public Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
.super Ljava/lang/Object;
.source "AndroidApplicationConfiguration.java"


# instance fields
.field public a:I

.field public b:I

.field public depth:I

.field public disableAudio:Z

.field public g:I

.field public getTouchEventsForLiveWallpaper:Z

.field public hideStatusBar:Z

.field public maxSimultaneousSounds:I

.field public numSamples:I

.field public r:I

.field public resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

.field public stencil:I

.field public touchSleepTime:I

.field public useAccelerometer:Z

.field public useCompass:Z

.field public useGLSurfaceView20API18:Z

.field public useImmersiveMode:Z

.field public useWakelock:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v3, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v3, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    .line 33
    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    .line 36
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    .line 39
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    .line 42
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    .line 46
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    .line 49
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    .line 53
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->hideStatusBar:Z

    .line 56
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    .line 60
    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    .line 63
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 66
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->getTouchEventsForLiveWallpaper:Z

    .line 69
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    .line 75
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGLSurfaceView20API18:Z

    return-void
.end method
