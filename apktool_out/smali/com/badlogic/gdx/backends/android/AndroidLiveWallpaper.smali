.class public Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
.super Ljava/lang/Object;
.source "AndroidLiveWallpaper.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# instance fields
.field protected audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

.field protected final executedRunnables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

.field protected firstResume:Z

.field protected graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

.field protected input:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field protected final lifecycleListeners:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field protected listener:Lcom/badlogic/gdx/ApplicationListener;

.field protected logLevel:I

.field protected net:Lcom/badlogic/gdx/backends/android/AndroidNet;

.field protected final runnables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;)V
    .locals 1
    .param p1, "service"    # Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->firstResume:Z

    .line 66
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    .line 73
    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/LifecycleListener;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 265
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 266
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 272
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 273
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 289
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 294
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    return-object v0
.end method

.method public getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .locals 4

    .prologue
    .line 240
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getLifecycleListeners()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    return v0
.end method

.method public getNativeHeap()J
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public getRunnables()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 3
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "LibGDX requires Android API Level 8 or later."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    .line 84
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    invoke-static {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidInputFactory;->newAndroidInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 90
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getFilesDir()Ljava/io/File;

    .line 91
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFiles;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    .line 92
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    .line 93
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->listener:Lcom/badlogic/gdx/ApplicationListener;

    .line 98
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 104
    return-void

    .line 79
    :cond_1
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    goto :goto_0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 279
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 284
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->onDestroyGLSurfaceView()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->dispose()V

    .line 180
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 107
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaper - onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->onPauseGLSurfaceView()V

    .line 134
    :cond_1
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaper - onPause() done!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 138
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->onResumeGLSurfaceView()V

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->firstResume:Z

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume()V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->firstResume:Z

    goto :goto_0
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/badlogic/gdx/LifecycleListener;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 323
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 363
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 366
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->logLevel:I

    .line 300
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method public useImmersiveMode(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
