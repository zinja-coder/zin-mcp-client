.class public abstract Lcom/artemis/systems/EntityProcessingSystem;
.super Lcom/artemis/EntitySystem;
.source "EntityProcessingSystem.java"


# direct methods
.method public constructor <init>(Lcom/artemis/Aspect;)V
    .locals 0
    .param p1, "aspect"    # Lcom/artemis/Aspect;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/artemis/EntitySystem;-><init>(Lcom/artemis/Aspect;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract process(Lcom/artemis/Entity;)V
.end method

.method protected final processEntities(Lcom/artemis/utils/IntBag;)V
    .locals 5
    .param p1, "entities"    # Lcom/artemis/utils/IntBag;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/artemis/utils/IntBag;->getData()[I

    move-result-object v0

    .line 45
    .local v0, "array":[I
    iget-object v1, p0, Lcom/artemis/systems/EntityProcessingSystem;->flyweight:Lcom/artemis/Entity;

    .line 46
    .local v1, "e":Lcom/artemis/Entity;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/artemis/utils/IntBag;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-le v3, v2, :cond_0

    .line 47
    aget v4, v0, v2

    iput v4, v1, Lcom/artemis/Entity;->id:I

    .line 48
    invoke-virtual {p0, v1}, Lcom/artemis/systems/EntityProcessingSystem;->process(Lcom/artemis/Entity;)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
