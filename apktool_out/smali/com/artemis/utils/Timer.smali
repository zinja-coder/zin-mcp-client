.class public abstract Lcom/artemis/utils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private acc:F

.field private delay:F

.field private done:Z

.field private repeat:Z

.field private stopped:Z


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "delay"    # F

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artemis/utils/Timer;-><init>(FZ)V

    .line 22
    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 1
    .param p1, "delay"    # F
    .param p2, "repeat"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/artemis/utils/Timer;->delay:F

    .line 26
    iput-boolean p2, p0, Lcom/artemis/utils/Timer;->repeat:Z

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/utils/Timer;->acc:F

    .line 28
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public getDelay()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/artemis/utils/Timer;->delay:F

    return v0
.end method

.method public getPercentageRemaining()F
    .locals 3

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->done:Z

    if-eqz v0, :cond_0

    .line 74
    const/high16 v0, 0x42c80000    # 100.0f

    .line 78
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->stopped:Z

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/artemis/utils/Timer;->delay:F

    iget v2, p0, Lcom/artemis/utils/Timer;->acc:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/artemis/utils/Timer;->delay:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->done:Z

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->done:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/artemis/utils/Timer;->acc:F

    iget v1, p0, Lcom/artemis/utils/Timer;->delay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->stopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/artemis/utils/Timer;->stopped:Z

    .line 50
    iput-boolean v0, p0, Lcom/artemis/utils/Timer;->done:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/utils/Timer;->acc:F

    .line 52
    return-void
.end method

.method public setDelay(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 67
    int-to-float v0, p1

    iput v0, p0, Lcom/artemis/utils/Timer;->delay:F

    .line 68
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/utils/Timer;->stopped:Z

    .line 64
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->stopped:Z

    if-nez v0, :cond_0

    .line 32
    iget v0, p0, Lcom/artemis/utils/Timer;->acc:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/artemis/utils/Timer;->acc:F

    .line 34
    iget v0, p0, Lcom/artemis/utils/Timer;->acc:F

    iget v1, p0, Lcom/artemis/utils/Timer;->delay:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 35
    iget v0, p0, Lcom/artemis/utils/Timer;->acc:F

    iget v1, p0, Lcom/artemis/utils/Timer;->delay:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/artemis/utils/Timer;->acc:F

    .line 37
    iget-boolean v0, p0, Lcom/artemis/utils/Timer;->repeat:Z

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/artemis/utils/Timer;->reset()V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/artemis/utils/Timer;->execute()V

    .line 46
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/utils/Timer;->done:Z

    goto :goto_0
.end method
