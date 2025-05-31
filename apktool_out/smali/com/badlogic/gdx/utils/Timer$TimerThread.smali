.class Lcom/badlogic/gdx/utils/Timer$TimerThread;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerThread"
.end annotation


# instance fields
.field app:Lcom/badlogic/gdx/Application;

.field private pauseMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 207
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->resume()V

    .line 208
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pause()V

    .line 256
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Application;->removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 257
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    .line 259
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseMillis:J

    .line 247
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 248
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->app:Lcom/badlogic/gdx/Application;

    .line 249
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->wake()V

    .line 250
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    sput-object v4, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 8

    .prologue
    .line 236
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseMillis:J

    sub-long v0, v4, v6

    .line 237
    .local v0, "delayMillis":J
    sget-object v5, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v5

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_0
    sget-object v4, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    iget v3, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 239
    sget-object v4, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v4, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->delay(J)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iput-object v4, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->app:Lcom/badlogic/gdx/Application;

    .line 242
    new-instance v4, Ljava/lang/Thread;

    const-string v5, "Timer"

    invoke-direct {v4, p0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 243
    return-void

    .line 240
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public run()V
    .locals 14

    .prologue
    .line 212
    :goto_0
    sget-object v8, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v8

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->app:Lcom/badlogic/gdx/Application;

    sget-object v9, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-eq v3, v9, :cond_0

    monitor-exit v8

    .line 225
    :goto_1
    return-void

    .line 215
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v4, v10, v12

    .line 216
    .local v4, "timeMillis":J
    const-wide/16 v6, 0x1388

    .line 217
    .local v6, "waitMillis":J
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "n":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 219
    :try_start_1
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/utils/Timer;->update(JJ)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    new-instance v9, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Task failed: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 231
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "timeMillis":J
    .end local v6    # "waitMillis":J
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 225
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v4    # "timeMillis":J
    .restart local v6    # "waitMillis":J
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->app:Lcom/badlogic/gdx/Application;

    sget-object v9, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-eq v3, v9, :cond_2

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 228
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_3

    :try_start_4
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    :cond_3
    :goto_3
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v3

    goto :goto_3
.end method
