.class public Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "AndroidLiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidWallpaperEngine"
.end annotation


# instance fields
.field protected engineFormat:I

.field protected engineHeight:I

.field protected engineIsVisible:Z

.field protected engineWidth:I

.field offsetsConsumed:Z

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

.field xOffset:F

.field xOffsetStep:F

.field xPixelOffset:I

.field yOffset:F

.field yOffsetStep:F

.field yPixelOffset:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 219
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineIsVisible:Z

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->offsetsConsumed:Z

    .line 497
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xOffset:F

    .line 498
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yOffset:F

    .line 499
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xOffsetStep:F

    .line 500
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yOffsetStep:F

    .line 501
    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xPixelOffset:I

    .line 502
    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yPixelOffset:I

    .line 229
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " > AndroidWallpaperEngine() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    return-void
.end method

.method private notifySurfaceChanged(IIIZ)V
    .locals 5
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "forceUpdate"    # Z

    .prologue
    .line 322
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewFormat:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewWidth:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewHeight:I

    if-ne p3, v0, :cond_1

    .line 324
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > surface is current, skipping surfaceChanged event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineFormat:I

    .line 328
    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineWidth:I

    .line 329
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineHeight:I

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineFormat:I

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewFormat:I

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineWidth:I

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewWidth:I

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineHeight:I

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewHeight:I

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewFormat:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewWidth:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewHeight:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    .line 338
    :cond_2
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > engine is not active, skipping surfaceChanged event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineIsVisible:Z

    if-eq v0, p1, :cond_2

    .line 366
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineIsVisible:Z

    .line 368
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineIsVisible:Z

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->onResume()V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->onPause()V

    goto :goto_0

    .line 373
    :cond_2
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > visible state is current, skipping visibilityChanged event!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected notifyOffsetsChanged()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/AndroidWallpaperListener;

    if-eqz v0, :cond_0

    .line 532
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->offsetsConsumed:Z

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->offsetsConsumed:Z

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->postRunnable(Ljava/lang/Runnable;)V

    .line 551
    :cond_0
    return-void
.end method

.method protected notifyPreviewState()V
    .locals 3

    .prologue
    .line 555
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    instance-of v1, v1, Lcom/badlogic/gdx/backends/android/AndroidWallpaperListener;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->isPreview()Z

    move-result v0

    .line 557
    .local v0, "currentPreviewState":Z
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;

    invoke-direct {v2, p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;Z)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->postRunnable(Ljava/lang/Runnable;)V

    .line 578
    .end local v0    # "currentPreviewState":Z
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 3
    .param p1, "pAction"    # Ljava/lang/String;
    .param p2, "pX"    # I
    .param p3, "pY"    # I
    .param p4, "pZ"    # I
    .param p5, "pExtras"    # Landroid/os/Bundle;
    .param p6, "pResultRequested"    # Z

    .prologue
    .line 481
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 482
    const-string v1, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " > AndroidWallpaperEngine - onCommand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", linked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 234
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 235
    const-string v1, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " > AndroidWallpaperEngine - onCreate() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " running: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", linked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 238
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 471
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 472
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .prologue
    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->offsetsConsumed:Z

    .line 514
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xOffset:F

    .line 515
    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yOffset:F

    .line 516
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xOffsetStep:F

    .line 517
    iput p4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yOffsetStep:F

    .line 518
    iput p5, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->xPixelOffset:I

    .line 519
    iput p6, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->yPixelOffset:I

    .line 522
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyOffsetsChanged()V

    .line 523
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isContinuousRendering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 527
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 528
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    .line 414
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 415
    const-string v2, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > AndroidWallpaperEngine - onPause() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", running: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", linked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", visible: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    const-string v0, "WallpaperService"

    const-string v2, "engine paused"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    if-lt v0, v2, :cond_1

    .line 422
    const-string v0, "WallpaperService"

    const-string v2, "wallpaper lifecycle error, counted too many visible engines! repairing.."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->onPause()V

    .line 430
    :cond_2
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidWallpaperEngine - onPause() done!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 415
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v3, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    .line 379
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 380
    const-string v3, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " > AndroidWallpaperEngine - onResume() "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", running: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", linked: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", visible: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    const-string v0, "WallpaperService"

    const-string v3, "engine resumed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-eq v0, p0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->setLinkedEngine(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;)V

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineFormat:I

    iget v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineWidth:I

    iget v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineHeight:I

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifySurfaceChanged(IIIZ)V

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 402
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->onResume()V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyPreviewState()V

    .line 405
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyOffsetsChanged()V

    .line 406
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isContinuousRendering()Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 410
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 380
    goto :goto_0

    .line 399
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineFormat:I

    iget v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineWidth:I

    iget v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineHeight:I

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifySurfaceChanged(IIIZ)V

    goto :goto_1
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 302
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 303
    const-string v2, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > AndroidWallpaperEngine - onSurfaceChanged() isPreview: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", running: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", linked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", sufcace valid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    const-string v0, "WallpaperService"

    const-string v2, "engine surface changed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 310
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifySurfaceChanged(IIIZ)V

    .line 314
    return-void

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v3, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->setLinkedEngine(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;)V

    .line 248
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 249
    const-string v3, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " > AndroidWallpaperEngine - onSurfaceCreated() "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", running: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", linked: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    const-string v0, "WallpaperService"

    const-string v3, "engine surface created"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    if-ne v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewFormat:I

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewWidth:I

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewHeight:I

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    new-instance v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;)V

    iput-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->onCreateApplication()V

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-nez v0, :cond_3

    .line 269
    new-instance v0, Ljava/lang/Error;

    const-string v1, "You must override \'AndroidLiveWallpaperService.onCreateApplication\' method and call \'initialize\' from its body."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    .line 249
    goto :goto_0

    .line 273
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    iput-object v0, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    .line 274
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v3, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewFormat:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineFormat:I

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewWidth:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineWidth:I

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->viewHeight:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineHeight:I

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    if-ne v0, v1, :cond_5

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 290
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyPreviewState()V

    .line 291
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyOffsetsChanged()V

    .line 292
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isContinuousRendering()Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 295
    :cond_4
    return-void

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 286
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineFormat:I

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineWidth:I

    iget v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineHeight:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifySurfaceChanged(IIIZ)V

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    goto :goto_1
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    .line 442
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 443
    const-string v2, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > AndroidWallpaperEngine - onSurfaceDestroyed() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", running: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ,linked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isVisible: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineIsVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    const-string v0, "WallpaperService"

    const-string v2, "engine surface destroyed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->onDeepPauseApplication()V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 459
    :cond_2
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineFormat:I

    .line 460
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineWidth:I

    .line 461
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->engineHeight:I

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    .line 466
    :cond_3
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 467
    return-void

    :cond_4
    move v0, v1

    .line 443
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-ne v0, p0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->this$0:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 493
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->isVisible()Z

    move-result v0

    .line 349
    .local v0, "reportedVisible":Z
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 350
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > AndroidWallpaperEngine - onVisibilityChanged(paramVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reportedVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sufcace valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 356
    if-nez v0, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 357
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "WallpaperService"

    const-string v2, " > fake visibilityChanged event! Android WallpaperService likes do that!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->notifyVisibilityChanged(Z)V

    goto :goto_0
.end method
