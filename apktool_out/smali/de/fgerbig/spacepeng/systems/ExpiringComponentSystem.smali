.class public Lde/fgerbig/spacepeng/systems/ExpiringComponentSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "ExpiringComponentSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected process(Lcom/artemis/Entity;)V
    .locals 5
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 37
    new-instance v3, Lcom/artemis/utils/Bag;

    invoke-direct {v3}, Lcom/artemis/utils/Bag;-><init>()V

    invoke-virtual {p1, v3}, Lcom/artemis/Entity;->getComponents(Lcom/artemis/utils/Bag;)Lcom/artemis/utils/Bag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Component;

    .line 39
    .local v0, "component":Lcom/artemis/Component;
    instance-of v3, v0, Lde/fgerbig/spacepeng/components/ExpiringComponent;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 41
    check-cast v1, Lde/fgerbig/spacepeng/components/ExpiringComponent;

    .line 43
    .local v1, "expiringComponent":Lde/fgerbig/spacepeng/components/ExpiringComponent;
    iget v3, v1, Lde/fgerbig/spacepeng/components/ExpiringComponent;->delay:F

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/ExpiringComponentSystem;->world:Lcom/artemis/World;

    invoke-virtual {v4}, Lcom/artemis/World;->getDelta()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v1, Lde/fgerbig/spacepeng/components/ExpiringComponent;->delay:F

    .line 46
    iget v3, v1, Lde/fgerbig/spacepeng/components/ExpiringComponent;->delay:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 47
    iget-object v3, v1, Lde/fgerbig/spacepeng/components/ExpiringComponent;->onExpiry:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 48
    iget-object v3, v1, Lde/fgerbig/spacepeng/components/ExpiringComponent;->onExpiry:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/artemis/EntityEdit;->remove(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    goto :goto_0

    .line 55
    .end local v0    # "component":Lcom/artemis/Component;
    .end local v1    # "expiringComponent":Lde/fgerbig/spacepeng/components/ExpiringComponent;
    :cond_2
    return-void
.end method
