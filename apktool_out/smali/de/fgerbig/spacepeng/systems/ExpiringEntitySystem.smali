.class public Lde/fgerbig/spacepeng/systems/ExpiringEntitySystem;
.super Lcom/artemis/systems/DelayedEntityProcessingSystem;
.source "ExpiringEntitySystem.java"


# instance fields
.field em:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/ExpiringEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/ExpiringEntity;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/DelayedEntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getRemainingDelay(Lcom/artemis/Entity;)F
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 53
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/ExpiringEntitySystem;->em:Lcom/artemis/ComponentMapper;

    invoke-virtual {v1, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;

    .line 54
    .local v0, "expiringEntity":Lde/fgerbig/spacepeng/components/ExpiringEntity;
    iget v1, v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;->delay:F

    return v1
.end method

.method protected processDelta(Lcom/artemis/Entity;F)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "accumulatedDelta"    # F

    .prologue
    .line 38
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/ExpiringEntitySystem;->em:Lcom/artemis/ComponentMapper;

    invoke-virtual {v1, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;

    .line 39
    .local v0, "expiringEntity":Lde/fgerbig/spacepeng/components/ExpiringEntity;
    iget v1, v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;->delay:F

    sub-float/2addr v1, p2

    iput v1, v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;->delay:F

    .line 40
    return-void
.end method

.method protected processExpired(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 44
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/ExpiringEntitySystem;->em:Lcom/artemis/ComponentMapper;

    invoke-virtual {v1, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;

    .line 45
    .local v0, "expiringEntity":Lde/fgerbig/spacepeng/components/ExpiringEntity;
    iget-object v1, v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;->onExpiry:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, v0, Lde/fgerbig/spacepeng/components/ExpiringEntity;->onExpiry:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 49
    return-void
.end method
