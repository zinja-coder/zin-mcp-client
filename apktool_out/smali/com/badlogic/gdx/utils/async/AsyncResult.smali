.class public Lcom/badlogic/gdx/utils/async/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/badlogic/gdx/utils/async/AsyncResult;, "Lcom/badlogic/gdx/utils/async/AsyncResult<TT;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/badlogic/gdx/utils/async/AsyncResult;->future:Ljava/util/concurrent/Future;

    .line 31
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/badlogic/gdx/utils/async/AsyncResult;, "Lcom/badlogic/gdx/utils/async/AsyncResult<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/async/AsyncResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0

    .line 45
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/badlogic/gdx/utils/async/AsyncResult;, "Lcom/badlogic/gdx/utils/async/AsyncResult<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
