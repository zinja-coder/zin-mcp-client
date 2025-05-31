.class public abstract Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "AndroidLiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WallpaperService"


# instance fields
.field protected volatile app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

.field protected engines:I

.field protected volatile isPreviewNotified:Z

.field protected volatile linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

.field protected volatile notifiedPreviewState:Z

.field volatile sync:[I

.field protected view:Landroid/view/SurfaceHolder$Callback;

.field protected viewFormat:I

.field protected viewHeight:I

.field protected viewWidth:I

.field protected visibleEngines:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    .line 66
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    .line 75
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->engines:I

    .line 76
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->visibleEngines:I

    .line 79
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    .line 88
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->isPreviewNotified:Z

    .line 91
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->notifiedPreviewState:Z

    .line 93
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    .line 101
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "WallpaperService"

    const-string v1, "service finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    return-void
.end method

.method public getLiveWallpaper()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 2

    .prologue
    .line 154
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - getSurfaceHolder()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-nez v0, :cond_1

    .line 158
    const/4 v0, 0x0

    monitor-exit v1

    .line 160
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 210
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;

    .prologue
    .line 130
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 131
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 132
    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 142
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 146
    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->getTouchEventsForLiveWallpaper:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;->setTouchEventsEnabled(Z)V

    .line 150
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 106
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " > AndroidLiveWallpaperService - onCreate() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const-string v0, "WallpaperService"

    const-string v1, "service created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 110
    return-void
.end method

.method public onCreateApplication()V
    .locals 2

    .prologue
    .line 124
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - onCreateApplication()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 115
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - onCreateEngine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const-string v0, "WallpaperService"

    const-string v1, "engine created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;)V

    return-object v0
.end method

.method public onDeepPauseApplication()V
    .locals 2

    .prologue
    .line 172
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - onDeepPauseApplication()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->clearManagedCaches()V

    .line 178
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " > AndroidLiveWallpaperService - onDestroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const-string v0, "WallpaperService"

    const-string v1, "service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->onDestroy()V

    .line 192
    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->app:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    .line 193
    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->view:Landroid/view/SurfaceHolder$Callback;

    .line 195
    :cond_1
    return-void
.end method

.method protected setLinkedEngine(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;)V
    .locals 2
    .param p1, "linkedEngine"    # Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    monitor-enter v1

    .line 83
    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->linkedEngine:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
