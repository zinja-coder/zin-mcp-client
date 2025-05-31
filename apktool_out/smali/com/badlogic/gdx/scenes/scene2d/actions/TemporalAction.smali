.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "TemporalAction.java"


# instance fields
.field private began:Z

.field private complete:Z

.field private duration:F

.field private interpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private reverse:Z

.field private time:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 34
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    .line 35
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 38
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    .line 39
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 40
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 5
    .param p1, "delta"    # F

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    if-eqz v3, :cond_0

    .line 64
    :goto_0
    return v2

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v1

    .line 45
    .local v1, "pool":Lcom/badlogic/gdx/utils/Pool;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 47
    :try_start_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    if-nez v3, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->begin()V

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    .line 51
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 52
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    :goto_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    .line 54
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    if-eqz v2, :cond_6

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    .local v0, "percent":F
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    .end local v0    # "percent":F
    :cond_3
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->update(F)V

    .line 61
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->end()V

    .line 62
    :cond_4
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_0

    .line 52
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 57
    :cond_6
    :try_start_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    div-float v0, v2, v3

    .line 58
    .restart local v0    # "percent":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_2

    .line 64
    .end local v0    # "percent":F
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw v2
.end method

.method protected begin()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected end()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 85
    return-void
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    return v0
.end method

.method public getInterpolation()Lcom/badlogic/gdx/math/Interpolation;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-object v0
.end method

.method public getTime()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 97
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 89
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    .line 90
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    .line 91
    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    .line 116
    return-void
.end method

.method public setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p1, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 124
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .param p1, "reverse"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    .line 133
    return-void
.end method

.method public setTime(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 107
    return-void
.end method

.method protected abstract update(F)V
.end method
