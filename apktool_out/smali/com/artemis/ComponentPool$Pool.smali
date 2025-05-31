.class Lcom/artemis/ComponentPool$Pool;
.super Ljava/lang/Object;
.source "ComponentPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/ComponentPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pool"
.end annotation


# instance fields
.field private final cache:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/PooledComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentPool$Pool;->cache:Lcom/artemis/utils/Bag;

    return-void
.end method

.method synthetic constructor <init>(Lcom/artemis/ComponentPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/artemis/ComponentPool$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/artemis/ComponentPool$Pool;-><init>()V

    return-void
.end method


# virtual methods
.method free(Lcom/artemis/PooledComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/artemis/PooledComponent;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/artemis/ComponentPool$Pool;->cache:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method obtain()Lcom/artemis/PooledComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/PooledComponent;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/artemis/ComponentPool$Pool;->cache:Lcom/artemis/utils/Bag;

    invoke-virtual {v0}, Lcom/artemis/utils/Bag;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/PooledComponent;

    return-object v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/artemis/ComponentPool$Pool;->cache:Lcom/artemis/utils/Bag;

    invoke-virtual {v0}, Lcom/artemis/utils/Bag;->size()I

    move-result v0

    return v0
.end method
