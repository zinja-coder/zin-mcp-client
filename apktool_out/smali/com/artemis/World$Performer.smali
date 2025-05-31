.class interface abstract Lcom/artemis/World$Performer;
.super Ljava/lang/Object;
.source "World.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/World;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Performer"
.end annotation


# virtual methods
.method public abstract perform(Lcom/artemis/EntityObserver;Lcom/artemis/WildBag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/EntityObserver;",
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation
.end method
