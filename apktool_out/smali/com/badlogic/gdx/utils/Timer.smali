.class public Lcom/badlogic/gdx/utils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Timer$TimerThread;,
        Lcom/badlogic/gdx/utils/Timer$Task;
    }
.end annotation


# static fields
.field private static final CANCELLED:I = -0x1

.field private static final FOREVER:I = -0x2

.field static instance:Lcom/badlogic/gdx/utils/Timer;

.field static final instances:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Timer;",
            ">;"
        }
    .end annotation
.end field

.field static thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;


# instance fields
.field private final tasks:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Timer$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer;->start()V

    .line 45
    return-void
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Timer;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    .line 38
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    return-object v0
.end method

.method public static post(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1
    .param p0, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;

    .prologue
    .line 150
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Timer;->postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1
    .param p0, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p1, "delaySeconds"    # F

    .prologue
    .line 156
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1
    .param p0, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p1, "delaySeconds"    # F
    .param p2, "intervalSeconds"    # F

    .prologue
    .line 162
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1
    .param p0, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p1, "delaySeconds"    # F
    .param p2, "intervalSeconds"    # F
    .param p3, "repeatCount"    # I

    .prologue
    .line 168
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method static wake()V
    .locals 2

    .prologue
    .line 142
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 95
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v3

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 99
    monitor-exit v3

    .line 100
    return-void

    .line 99
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public delay(J)V
    .locals 9
    .param p1, "delayMillis"    # J

    .prologue
    .line 133
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v4

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 135
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 136
    .local v2, "task":Lcom/badlogic/gdx/utils/Timer$Task;
    iget-wide v6, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    add-long/2addr v6, p1

    iput-wide v6, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :cond_0
    monitor-exit v4

    .line 139
    return-void

    .line 138
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 2
    .param p1, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 2
    .param p1, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p2, "delaySeconds"    # F

    .prologue
    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1
    .param p1, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p2, "delaySeconds"    # F
    .param p3, "intervalSeconds"    # F

    .prologue
    .line 59
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    return-object v0
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 5
    .param p1, "task"    # Lcom/badlogic/gdx/utils/Timer$Task;
    .param p2, "delaySeconds"    # F
    .param p3, "intervalSeconds"    # F
    .param p4, "repeatCount"    # I

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 64
    iget v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The same task may not be scheduled twice."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    mul-float v2, p2, v4

    float-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 66
    mul-float v0, p3, v4

    float-to-long v0, v0

    iput-wide v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    .line 67
    iput p4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->wake()V

    .line 73
    return-object p1

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 85
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/Timer$TimerThread;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Timer$TimerThread;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    .line 89
    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->wake()V

    .line 90
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 78
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method update(JJ)J
    .locals 9
    .param p1, "timeMillis"    # J
    .param p3, "waitMillis"    # J

    .prologue
    const/4 v5, -0x1

    .line 103
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v4

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 105
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 106
    .local v2, "task":Lcom/badlogic/gdx/utils/Timer$Task;
    iget-wide v6, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_1

    .line 107
    iget-wide v6, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    sub-long/2addr v6, p1

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 104
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-eq v3, v5, :cond_3

    .line 111
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-nez v3, :cond_2

    .line 113
    const/4 v3, -0x1

    iput v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 115
    :cond_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 117
    :cond_3
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-ne v3, v5, :cond_4

    .line 118
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 119
    add-int/lit8 v0, v0, -0x1

    .line 120
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 122
    :cond_4
    iget-wide v6, v2, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    add-long/2addr v6, p1

    iput-wide v6, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 123
    iget-wide v6, v2, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 124
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-lez v3, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    goto :goto_1

    .line 127
    .end local v1    # "n":I
    .end local v2    # "task":Lcom/badlogic/gdx/utils/Timer$Task;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "n":I
    :cond_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    return-wide p3
.end method
