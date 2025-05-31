.class Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;
.super Ljava/lang/Object;
.source "AndroidLiveWallpaperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyPreviewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

.field final synthetic val$currentPreviewState:Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;Z)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->val$currentPreviewState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, "shouldNotify":Z
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v3, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    monitor-enter v3

    .line 562
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->isPreviewNotified:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->notifiedPreviewState:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->val$currentPreviewState:Z

    if-eq v2, v4, :cond_1

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->val$currentPreviewState:Z

    iput-boolean v4, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->notifiedPreviewState:Z

    .line 564
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->isPreviewNotified:Z

    .line 565
    const/4 v1, 0x1

    .line 567
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    if-eqz v1, :cond_2

    .line 570
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    .line 572
    .local v0, "currentApp":Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
    if-eqz v0, :cond_2

    .line 573
    iget-object v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidWallpaperListener;

    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;->val$currentPreviewState:Z

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidWallpaperListener;->previewStateChange(Z)V

    .line 575
    .end local v0    # "currentApp":Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
    :cond_2
    return-void

    .line 567
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
