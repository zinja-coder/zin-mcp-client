.class public Lcom/badlogic/gdx/utils/async/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxConcurrent"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/async/AsyncExecutor$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor$1;-><init>(Lcom/badlogic/gdx/utils/async/AsyncExecutor;)V

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Couldn\'t shutdown loading thread"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public submit(Lcom/badlogic/gdx/utils/async/AsyncTask;)Lcom/badlogic/gdx/utils/async/AsyncResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/async/AsyncTask",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/async/AsyncResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "task":Lcom/badlogic/gdx/utils/async/AsyncTask;, "Lcom/badlogic/gdx/utils/async/AsyncTask<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot run tasks on an executor that has been shutdown (disposed)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/async/AsyncResult;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;

    invoke-direct {v2, p0, p1}, Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;-><init>(Lcom/badlogic/gdx/utils/async/AsyncExecutor;Lcom/badlogic/gdx/utils/async/AsyncTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/async/AsyncResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method
