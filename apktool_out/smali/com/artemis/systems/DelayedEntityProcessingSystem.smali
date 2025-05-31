.class public abstract Lcom/artemis/systems/DelayedEntityProcessingSystem;
.super Lcom/artemis/EntitySystem;
.source "DelayedEntityProcessingSystem.java"


# instance fields
.field private acc:F

.field private delay:F

.field private running:Z


# direct methods
.method public constructor <init>(Lcom/artemis/Aspect;)V
    .locals 0
    .param p1, "aspect"    # Lcom/artemis/Aspect;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/artemis/EntitySystem;-><init>(Lcom/artemis/Aspect;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected final checkProcessing()Z
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->running:Z

    if-eqz v0, :cond_0

    .line 99
    iget v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    invoke-virtual {p0}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->getTimeDelta()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    .line 101
    iget v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    iget v1, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitialTimeDelay()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    return v0
.end method

.method protected abstract getRemainingDelay(Lcom/artemis/Entity;)F
.end method

.method public getRemainingTimeUntilProcessing()F
    .locals 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->running:Z

    if-eqz v0, :cond_0

    .line 193
    iget v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    iget v1, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    sub-float/2addr v0, v1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTimeDelta()F
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getDelta()F

    move-result v0

    return v0
.end method

.method protected inserted(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->getRemainingDelay(Lcom/artemis/Entity;)F

    move-result v0

    .line 79
    .local v0, "remainingDelay":F
    iget v1, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    neg-float v1, v1

    invoke-virtual {p0, p1, v1}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->processDelta(Lcom/artemis/Entity;F)V

    .line 80
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->offerDelay(F)V

    .line 83
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->running:Z

    return v0
.end method

.method public offerDelay(F)V
    .locals 1
    .param p1, "offeredDelay"    # F

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->running:Z

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->running:Z

    .line 166
    iput p1, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    goto :goto_0
.end method

.method protected abstract processDelta(Lcom/artemis/Entity;F)V
.end method

.method protected final processEntities(Lcom/artemis/utils/IntBag;)V
    .locals 7
    .param p1, "entities"    # Lcom/artemis/utils/IntBag;

    .prologue
    const/4 v6, 0x0

    .line 57
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    iput v5, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    .line 58
    invoke-virtual {p1}, Lcom/artemis/utils/IntBag;->getData()[I

    move-result-object v0

    .line 59
    .local v0, "array":[I
    invoke-virtual {p1}, Lcom/artemis/utils/IntBag;->size()I

    move-result v3

    .line 60
    .local v3, "processed":I
    iget-object v1, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->flyweight:Lcom/artemis/Entity;

    .line 61
    .local v1, "e":Lcom/artemis/Entity;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-le v3, v2, :cond_1

    .line 62
    aget v5, v0, v2

    iput v5, v1, Lcom/artemis/Entity;->id:I

    .line 63
    iget v5, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    invoke-virtual {p0, v1, v5}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->processDelta(Lcom/artemis/Entity;F)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->getRemainingDelay(Lcom/artemis/Entity;)F

    move-result v4

    .line 65
    .local v4, "remaining":F
    cmpg-float v5, v4, v6

    if-gtz v5, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->processExpired(Lcom/artemis/Entity;)V

    .line 61
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, v4}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->offerDelay(F)V

    goto :goto_1

    .line 71
    .end local v4    # "remaining":F
    :cond_1
    iput v6, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    .line 72
    invoke-virtual {p0}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->getActives()Lcom/artemis/utils/ImmutableBag;

    move-result-object v5

    invoke-interface {v5}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/artemis/systems/DelayedEntityProcessingSystem;->stop()V

    .line 73
    :cond_2
    return-void
.end method

.method protected abstract processExpired(Lcom/artemis/Entity;)V
.end method

.method public restart(F)V
    .locals 1
    .param p1, "delay"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    iput p1, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->delay:F

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->running:Z

    .line 145
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->running:Z

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/systems/DelayedEntityProcessingSystem;->acc:F

    .line 216
    return-void
.end method
