.class public abstract Lcom/artemis/systems/IntervalEntityProcessingSystem;
.super Lcom/artemis/systems/IntervalEntitySystem;
.source "IntervalEntityProcessingSystem.java"


# direct methods
.method public constructor <init>(Lcom/artemis/Aspect;F)V
    .locals 0
    .param p1, "aspect"    # Lcom/artemis/Aspect;
    .param p2, "interval"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/artemis/systems/IntervalEntitySystem;-><init>(Lcom/artemis/Aspect;F)V

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract process(Lcom/artemis/Entity;)V
.end method

.method protected processEntities(Lcom/artemis/utils/IntBag;)V
    .locals 5
    .param p1, "entities"    # Lcom/artemis/utils/IntBag;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/artemis/utils/IntBag;->getData()[I

    move-result-object v2

    .line 48
    .local v2, "ids":[I
    iget-object v0, p0, Lcom/artemis/systems/IntervalEntityProcessingSystem;->flyweight:Lcom/artemis/Entity;

    .line 49
    .local v0, "e":Lcom/artemis/Entity;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/artemis/utils/IntBag;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-le v3, v1, :cond_0

    .line 50
    aget v4, v2, v1

    iput v4, v0, Lcom/artemis/Entity;->id:I

    .line 51
    invoke-virtual {p0, v0}, Lcom/artemis/systems/IntervalEntityProcessingSystem;->process(Lcom/artemis/Entity;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
