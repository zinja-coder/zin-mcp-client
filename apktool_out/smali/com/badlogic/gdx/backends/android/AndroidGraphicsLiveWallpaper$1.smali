.class Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
.source "AndroidGraphicsLiveWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;->onDetachedFromWindow()V

    .line 77
    return-void
.end method
