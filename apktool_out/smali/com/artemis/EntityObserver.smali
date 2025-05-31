.class public interface abstract Lcom/artemis/EntityObserver;
.super Ljava/lang/Object;
.source "EntityObserver.java"


# virtual methods
.method public abstract added(Lcom/artemis/Entity;)V
.end method

.method public abstract added(Lcom/artemis/utils/ImmutableBag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changed(Lcom/artemis/Entity;)V
.end method

.method public abstract changed(Lcom/artemis/utils/ImmutableBag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleted(Lcom/artemis/Entity;)V
.end method

.method public abstract deleted(Lcom/artemis/utils/ImmutableBag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disabled(Lcom/artemis/Entity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enabled(Lcom/artemis/Entity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
