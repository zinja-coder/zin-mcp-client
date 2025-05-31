.class public Lcom/badlogic/gdx/utils/PerformanceCounter;
.super Ljava/lang/Object;
.source "PerformanceCounter.java"


# static fields
.field private static final nano2seconds:F = 1.0E-9f


# instance fields
.field public current:F

.field private lastTick:J

.field public final load:Lcom/badlogic/gdx/math/FloatCounter;

.field public final name:Ljava/lang/String;

.field private startTime:J

.field public final time:Lcom/badlogic/gdx/math/FloatCounter;

.field public valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/PerformanceCounter;-><init>(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "windowSize"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 31
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 50
    iput-object p1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->name:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    .line 53
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 100
    iput-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 101
    iput-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 104
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 84
    return-void
.end method

.method public stop()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 89
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x3089705f    # 1.0E-9f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 91
    iput-wide v6, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->startTime:J

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    .line 94
    :cond_0
    return-void
.end method

.method public tick()V
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 59
    .local v0, "t":J
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/PerformanceCounter;->tick(F)V

    .line 60
    :cond_0
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->lastTick:J

    .line 61
    return-void
.end method

.method public tick(F)V
    .locals 6
    .param p1, "delta"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 66
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    if-nez v2, :cond_0

    .line 67
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "PerformanceCounter"

    const-string v3, "Invalid data, check if you called PerformanceCounter#stop()"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    iget v3, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 73
    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    move v0, v1

    .line 74
    .local v0, "currentLoad":F
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    cmpl-float v3, p1, v4

    if-lez v3, :cond_2

    .end local v0    # "currentLoad":F
    :goto_2
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 76
    iput v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->valid:Z

    goto :goto_0

    .line 73
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->current:F

    div-float v0, v2, p1

    goto :goto_1

    .line 74
    .restart local v0    # "currentLoad":F
    :cond_2
    mul-float v3, p1, v0

    sub-float/2addr v4, p1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    iget v5, v5, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    goto :goto_2
.end method

.method public toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2
    .param p1, "sb"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ": [time: "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->time:Lcom/badlogic/gdx/math/FloatCounter;

    iget v1, v1, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ", load: "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounter;->load:Lcom/badlogic/gdx/math/FloatCounter;

    iget v1, v1, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 116
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    .line 110
    .local v0, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/PerformanceCounter;->toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
