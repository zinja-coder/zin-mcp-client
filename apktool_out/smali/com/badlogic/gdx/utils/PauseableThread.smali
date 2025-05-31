.class public Lcom/badlogic/gdx/utils/PauseableThread;
.super Ljava/lang/Thread;
.source "PauseableThread.java"


# instance fields
.field exit:Z

.field paused:Z

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 26
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/utils/PauseableThread;->runnable:Ljava/lang/Runnable;

    .line 33
    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 37
    :goto_0
    monitor-enter p0

    .line 39
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    if-eqz v1, :cond_1

    return-void

    .line 44
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PauseableThread;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    .line 73
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PauseableThread;->onResume()V

    .line 74
    :cond_0
    return-void
.end method
