.class public abstract Lcom/artemis/systems/IntervalEntitySystem;
.super Lcom/artemis/EntitySystem;
.source "IntervalEntitySystem.java"


# instance fields
.field protected acc:F

.field private final interval:F

.field private intervalDelta:F


# direct methods
.method public constructor <init>(Lcom/artemis/Aspect;F)V
    .locals 0
    .param p1, "aspect"    # Lcom/artemis/Aspect;
    .param p2, "interval"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/artemis/EntitySystem;-><init>(Lcom/artemis/Aspect;)V

    .line 33
    iput p2, p0, Lcom/artemis/systems/IntervalEntitySystem;->interval:F

    .line 34
    return-void
.end method


# virtual methods
.method protected checkProcessing()Z
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->acc:F

    invoke-virtual {p0}, Lcom/artemis/systems/IntervalEntitySystem;->getTimeDelta()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->acc:F

    .line 40
    iget v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->acc:F

    iget v1, p0, Lcom/artemis/systems/IntervalEntitySystem;->interval:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 41
    iget v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->acc:F

    iget v1, p0, Lcom/artemis/systems/IntervalEntitySystem;->interval:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->acc:F

    .line 42
    iget v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->acc:F

    iget v1, p0, Lcom/artemis/systems/IntervalEntitySystem;->intervalDelta:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->intervalDelta:F

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIntervalDelta()F
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->interval:F

    iget v1, p0, Lcom/artemis/systems/IntervalEntitySystem;->intervalDelta:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected getTimeDelta()F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/artemis/systems/IntervalEntitySystem;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getDelta()F

    move-result v0

    return v0
.end method
