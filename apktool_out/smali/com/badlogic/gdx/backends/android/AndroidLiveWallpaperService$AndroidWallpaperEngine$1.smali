.class Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;
.super Ljava/lang/Object;
.source "AndroidLiveWallpaperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyOffsetsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 539
    const/4 v7, 0x0

    .line 540
    .local v7, "isCurrent":Z
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, v2, :cond_1

    const/4 v7, 0x1

    .line 543
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz v7, :cond_0

    .line 545
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidWallpaperListener;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xOffset:F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yOffset:F

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xOffsetStep:F

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yOffsetStep:F

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xPixelOffset:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yPixelOffset:I

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidWallpaperListener;->offsetChange(FFFFII)V

    .line 547
    :cond_0
    return-void

    .line 541
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
