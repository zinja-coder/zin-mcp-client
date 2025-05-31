.class public Lcom/badlogic/gdx/backends/android/AndroidApplication;
.super Landroid/app/Activity;
.source "AndroidApplication.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# instance fields
.field private final androidEventListeners:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidEventListener;",
            ">;"
        }
    .end annotation
.end field

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

.field public handler:Landroid/os/Handler;

.field protected hideStatusBar:Z

.field protected input:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field private isWaitingForAudio:Z

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

.field protected useImmersiveMode:Z

.field private wasFocusChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    .line 77
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    .line 78
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    .line 80
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    return-void
.end method

.method private init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
    .locals 9
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "isForView"    # Z

    .prologue
    const/16 v8, 0x400

    .line 130
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 131
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "LibGDX requires Android API Level 8 or later."

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v5, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v5, :cond_3

    new-instance v5, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v5}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :goto_0
    invoke-direct {v6, p0, p2, v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    .line 135
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v5, v5, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-static {p0, p0, v5, p2}, Lcom/badlogic/gdx/backends/android/AndroidInputFactory;->newAndroidInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v5

    iput-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 136
    new-instance v5, Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-direct {v5, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 137
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFilesDir()Ljava/io/File;

    .line 138
    new-instance v5, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/backends/android/AndroidFiles;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    .line 139
    new-instance v5, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v5, p0}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    iput-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    .line 140
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    .line 141
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    .line 142
    iget-boolean v5, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    iput-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    .line 143
    iget-boolean v5, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->hideStatusBar:Z

    iput-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    .line 146
    new-instance v5, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;

    invoke-direct {v5, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 164
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 165
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v5

    sput-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 166
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v5

    sput-object v5, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 167
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v5

    sput-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 168
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v5

    sput-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 169
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v5

    sput-object v5, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 171
    if-nez p3, :cond_1

    .line 173
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 178
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 179
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_1
    iget-boolean v5, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createWakeLock(Z)V

    .line 183
    iget-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar(Z)V

    .line 184
    iget-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode(Z)V

    .line 185
    iget-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v5

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 187
    :try_start_1
    const-string v5, "com.badlogic.gdx.backends.android.AndroidVisibilityListener"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 188
    .local v4, "vlistener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 189
    .local v3, "o":Ljava/lang/Object;
    const-string v5, "createListener"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 190
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "vlistener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_2
    return-void

    .line 133
    :cond_3
    iget-object v5, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "AndroidApplication"

    const-string v6, "Content already displayed, cannot request FEATURE_NO_TITLE"

    invoke-virtual {p0, v5, v6, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 191
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AndroidApplication"

    const-string v6, "Failed to create AndroidVisibilityListener"

    invoke-virtual {p0, v5, v6, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    .prologue
    .line 480
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/LifecycleListener;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 456
    monitor-exit v1

    .line 457
    return-void

    .line 456
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

    .line 198
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    return-object v0
.end method

.method protected createWakeLock(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 410
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 411
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 417
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 418
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 434
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 439
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 494
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
    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .locals 4

    .prologue
    .line 359
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
    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    return v0
.end method

.method public getNativeHeap()J
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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
    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method protected hideStatusBar(Z)V
    .locals 8
    .param p1, "hide"    # Z

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 216
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

    .line 217
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v3

    const/16 v4, 0xd

    if-gt v3, v4, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_2
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

    .line 219
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AndroidApplication"

    const-string v4, "Can\'t hide status bar"

    invoke-virtual {p0, v3, v4, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;

    .prologue
    .line 87
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 88
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 89
    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 100
    return-void
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;)Landroid/view/View;
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;

    .prologue
    .line 110
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 111
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 424
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 429
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 468
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 471
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v2

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidEventListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    monitor-exit v2

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "keyboardAvailable":Z
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyboardAvailable:Z

    .line 396
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 315
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 259
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuousRendering()Z

    move-result v0

    .line 260
    .local v0, "isContinuous":Z
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 263
    .local v1, "isContinuousEnforced":Z
    sput-boolean v3, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 264
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 267
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause()V

    .line 269
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    .line 271
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    .line 273
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy()V

    .line 276
    :cond_0
    sput-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 277
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 279
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 282
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 287
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 288
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 289
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 290
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 291
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume()V

    .line 304
    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    .line 305
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 307
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    .line 309
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 310
    return-void

    .line 302
    :cond_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 227
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode(Z)V

    .line 228
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->hideStatusBar(Z)V

    .line 229
    if-eqz p1, :cond_1

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    .line 231
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 233
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->isWaitingForAudio:Z

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->wasFocusChanged:I

    goto :goto_0
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
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
    .line 461
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 463
    monitor-exit v1

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .prologue
    .line 444
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    .line 445
    return-void
.end method

.method public useImmersiveMode(Z)V
    .locals 9
    .param p1, "use"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v4

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 247
    .local v3, "view":Landroid/view/View;
    :try_start_0
    const-class v4, Landroid/view/View;

    const-string v5, "setSystemUiVisibility"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 248
    .local v2, "m":Ljava/lang/reflect/Method;
    const/16 v0, 0x1706

    .line 251
    .local v0, "code":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "code":I
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AndroidApplication"

    const-string v5, "Can\'t set immersive mode"

    invoke-virtual {p0, v4, v5, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
