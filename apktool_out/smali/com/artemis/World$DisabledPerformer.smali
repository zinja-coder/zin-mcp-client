.class final Lcom/artemis/World$DisabledPerformer;
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
    name = "DisabledPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/artemis/World$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/artemis/World$1;

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/artemis/World$DisabledPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/artemis/EntityObserver;Lcom/artemis/WildBag;)V
    .locals 4
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
    .line 674
    .local p2, "entities":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<Lcom/artemis/Entity;>;"
    invoke-virtual {p2}, Lcom/artemis/WildBag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 675
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Lcom/artemis/WildBag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 676
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Entity;

    invoke-interface {p1, v3}, Lcom/artemis/EntityObserver;->disabled(Lcom/artemis/Entity;)V

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method
