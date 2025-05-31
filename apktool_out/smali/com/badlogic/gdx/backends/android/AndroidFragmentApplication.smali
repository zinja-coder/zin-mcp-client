.class public Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;
.super Landroid/support/v4/app/Fragment;
.source "AndroidFragmentApplication.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;
    }
.end annotation


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

.field protected callbacks:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

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
    .line 52
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->firstResume:Z

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    return-void
.end method


# virtual methods
.method public addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 443
    monitor-exit v1

    .line 444
    return-void

    .line 443
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
    .line 390
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 392
    monitor-exit v1

    .line 393
    return-void

    .line 392
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

    .line 93
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    return-object v0
.end method

.method protected createWakeLock(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 346
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 347
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 353
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 354
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 370
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 375
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

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
    .line 414
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .locals 4

    .prologue
    .line 295
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
    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    return v0
.end method

.method public getNativeHeap()J
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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
    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;)Landroid/view/View;
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;

    .prologue
    .line 133
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 134
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    .locals 8
    .param p1, "listener"    # Lcom/badlogic/gdx/ApplicationListener;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getVersion()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 151
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "LibGDX requires Android API Level 8 or later."

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_0
    new-instance v5, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v4, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v4, :cond_2

    new-instance v4, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v4}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :goto_0
    invoke-direct {v5, p0, p2, v4}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v5, v5, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-static {p0, v4, v5, p2}, Lcom/badlogic/gdx/backends/android/AndroidInputFactory;->newAndroidInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v4

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 156
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 157
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/backends/android/AndroidFiles;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    .line 158
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v4, p0}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    .line 159
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    .line 160
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->handler:Landroid/os/Handler;

    .line 163
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;

    invoke-direct {v4, p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 181
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 182
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v4

    sput-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v4

    sput-object v4, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 184
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v4

    sput-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 185
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v4

    sput-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 186
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v4

    sput-object v4, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 187
    iget-boolean v4, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->createWakeLock(Z)V

    .line 188
    iget-boolean v4, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->useImmersiveMode(Z)V

    .line 189
    iget-boolean v4, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getVersion()I

    move-result v4

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 191
    :try_start_0
    const-string v4, "com.badlogic.gdx.backends.android.AndroidVisibilityListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 192
    .local v3, "vlistener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "o":Ljava/lang/Object;
    const-string v4, "createListener"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 194
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "vlistener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v4}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 153
    :cond_2
    iget-object v4, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AndroidApplication"

    const-string v5, "Failed to create AndroidVisibilityListener"

    invoke-virtual {p0, v4, v5, v0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 360
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 365
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 429
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 432
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v2

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidEventListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    monitor-exit v2

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    instance-of v0, p1, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->callbacks:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    .line 83
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->callbacks:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->callbacks:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing AndroidFragmentApplication.Callbacks. Please implement AndroidFragmentApplication.Callbacks on the parent activity, fragment or target fragment."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "keyboardAvailable":Z
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyboardAvailable:Z

    .line 332
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->callbacks:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 204
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuousRendering()Z

    move-result v0

    .line 205
    .local v0, "isContinuous":Z
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 208
    .local v1, "isContinuousEnforced":Z
    sput-boolean v3, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 209
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 212
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause()V

    .line 214
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    .line 218
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    .line 220
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy()V

    .line 223
    :cond_1
    sput-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->enforceContinuousRendering:Z

    .line 224
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    .line 226
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    .line 228
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 233
    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 234
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 235
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    .line 236
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 237
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 238
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->firstResume:Z

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume()V

    .line 250
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 251
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->firstResume:Z

    goto :goto_0
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 322
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

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

.method public removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    .prologue
    .line 448
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->androidEventListeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
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
    .line 397
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 399
    monitor-exit v1

    .line 400
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->logLevel:I

    .line 381
    return-void
.end method

.method public useImmersiveMode(Z)V
    .locals 9
    .param p1, "use"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getVersion()I

    move-result v4

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v4}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v3

    .line 113
    .local v3, "view":Landroid/view/View;
    const-class v4, Landroid/view/View;

    const-string v5, "setSystemUiVisibility"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 114
    .local v2, "m":Ljava/lang/reflect/Method;
    const/16 v0, 0x1706

    .line 117
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

    .line 118
    .end local v0    # "code":I
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AndroidApplication"

    const-string v5, "Failed to setup immersive mode, a throwable has occurred."

    invoke-virtual {p0, v4, v5, v1}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
