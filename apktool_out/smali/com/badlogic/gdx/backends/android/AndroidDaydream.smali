.class public Lcom/badlogic/gdx/backends/android/AndroidDaydream;
.super Landroid/service/dreams/DreamService;
.source "AndroidDaydream.java"

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

.field protected graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

.field protected handler:Landroid/os/Handler;

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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->firstResume:Z

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    return-void
.end method

.method private init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "isForView"    # Z

    .prologue
    .line 122
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-static {p0, p0, v0, p2}, Lcom/badlogic/gdx/backends/android/AndroidInputFactory;->newAndroidInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 125
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 126
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getFilesDir()Ljava/io/File;

    .line 127
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFiles;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    .line 128
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    .line 129
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->listener:Lcom/badlogic/gdx/ApplicationListener;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->handler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 152
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 153
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 154
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 157
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 159
    if-nez p3, :cond_0

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->setFullscreen(Z)V

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_0
    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->createWakeLock(Z)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->hideStatusBar(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 166
    return-void

    .line 122
    :cond_1
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    goto/16 :goto_0
.end method


# virtual methods
.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/LifecycleListener;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 169
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    return-object v0
.end method

.method protected createWakeLock(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 338
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 339
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 345
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 346
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 362
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 367
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 396
    return-object p0
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
    .line 406
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .locals 4

    .prologue
    .line 287
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
    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    return v0
.end method

.method public getNativeHeap()J
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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
    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method protected hideStatusBar(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 8
    .param p1, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 182
    iget-boolean v3, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->hideStatusBar:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getVersion()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, "rootView":Landroid/view/View;
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "setSystemUiVisibility"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 188
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AndroidApplication"

    const-string v4, "Can\'t hide status bar"

    invoke-virtual {p0, v3, v4, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;

    .prologue
    .line 82
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 83
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 84
    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 94
    return-void
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;)Landroid/view/View;
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;

    .prologue
    .line 103
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 104
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 352
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 357
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "keyboardAvailable":Z
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyboardAvailable:Z

    .line 324
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    .line 243
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 220
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 221
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 222
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 223
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 224
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 225
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 227
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->registerSensorListeners()V

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->firstResume:Z

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume()V

    .line 237
    :goto_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 238
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->firstResume:Z

    goto :goto_0
.end method

.method public onDreamingStopped()V
    .locals 5

    .prologue
    .line 197
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuousRendering()Z

    move-result v0

    .line 198
    .local v0, "isContinuous":Z
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 199
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause()V

    .line 201
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/AndroidInput;->unregisterSensorListeners()V

    .line 203
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    .line 205
    .local v1, "realId":[I
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 206
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v3, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    .line 208
    .local v2, "touched":[Z
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 209
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    .line 210
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy()V

    .line 211
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 213
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    .line 215
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 216
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 315
    monitor-exit v1

    .line 316
    return-void

    .line 315
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
    .line 389
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
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
    .line 426
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 429
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->logLevel:I

    .line 373
    return-void
.end method

.method public useImmersiveMode(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 439
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
