.class final Lcom/artemis/World$AddedPerformer;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Lcom/artemis/World$Performer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/World;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AddedPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/artemis/World$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/artemis/World$1;

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/artemis/World$AddedPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/artemis/EntityObserver;Lcom/artemis/WildBag;)V
    .locals 0
    .param p1, "observer"    # Lcom/artemis/EntityObserver;
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

    .prologue
    .line 699
    .local p2, "entities":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<Lcom/artemis/Entity;>;"
    invoke-interface {p1, p2}, Lcom/artemis/EntityObserver;->added(Lcom/artemis/utils/ImmutableBag;)V

    .line 700
    return-void
.end method
