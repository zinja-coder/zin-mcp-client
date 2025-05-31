.class public abstract Lcom/artemis/systems/VoidEntitySystem;
.super Lcom/artemis/EntitySystem;
.source "VoidEntitySystem.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/artemis/EntitySystem;-><init>(Lcom/artemis/Aspect;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected final processEntities(Lcom/artemis/utils/IntBag;)V
    .locals 0
    .param p1, "entities"    # Lcom/artemis/utils/IntBag;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/artemis/systems/VoidEntitySystem;->processSystem()V

    .line 32
    return-void
.end method

.method protected abstract processSystem()V
.end method
