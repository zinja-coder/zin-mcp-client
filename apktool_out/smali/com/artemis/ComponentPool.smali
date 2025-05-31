.class Lcom/artemis/ComponentPool;
.super Ljava/lang/Object;
.source "ComponentPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/ComponentPool$1;,
        Lcom/artemis/ComponentPool$Pool;
    }
.end annotation


# instance fields
.field private pools:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/ComponentPool$Pool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentPool;->pools:Lcom/artemis/utils/Bag;

    .line 16
    return-void
.end method

.method private getPool(I)Lcom/artemis/ComponentPool$Pool;
    .locals 2
    .param p1, "typeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/PooledComponent;",
            ">(I)",
            "Lcom/artemis/ComponentPool$Pool;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/artemis/ComponentPool;->pools:Lcom/artemis/utils/Bag;

    invoke-virtual {v1, p1}, Lcom/artemis/utils/Bag;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/ComponentPool$Pool;

    .line 37
    .local v0, "pool":Lcom/artemis/ComponentPool$Pool;
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/artemis/ComponentPool$Pool;

    .end local v0    # "pool":Lcom/artemis/ComponentPool$Pool;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/artemis/ComponentPool$Pool;-><init>(Lcom/artemis/ComponentPool$1;)V

    .line 39
    .restart local v0    # "pool":Lcom/artemis/ComponentPool$Pool;
    iget-object v1, p0, Lcom/artemis/ComponentPool;->pools:Lcom/artemis/utils/Bag;

    invoke-virtual {v1, p1, v0}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 41
    :cond_0
    return-object v0
.end method


# virtual methods
.method free(Lcom/artemis/PooledComponent;I)V
    .locals 1
    .param p1, "c"    # Lcom/artemis/PooledComponent;
    .param p2, "typeIndex"    # I

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/artemis/PooledComponent;->reset()V

    .line 32
    invoke-direct {p0, p2}, Lcom/artemis/ComponentPool;->getPool(I)Lcom/artemis/ComponentPool$Pool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artemis/ComponentPool$Pool;->free(Lcom/artemis/PooledComponent;)V

    .line 33
    return-void
.end method

.method free(Lcom/artemis/PooledComponent;Lcom/artemis/ComponentType;)V
    .locals 1
    .param p1, "c"    # Lcom/artemis/PooledComponent;
    .param p2, "type"    # Lcom/artemis/ComponentType;

    .prologue
    .line 27
    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/artemis/ComponentPool;->free(Lcom/artemis/PooledComponent;I)V

    .line 28
    return-void
.end method

.method obtain(Ljava/lang/Class;Lcom/artemis/ComponentType;)Lcom/artemis/PooledComponent;
    .locals 2
    .param p2, "type"    # Lcom/artemis/ComponentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/PooledComponent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/artemis/ComponentType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/artemis/ComponentPool;->getPool(I)Lcom/artemis/ComponentPool$Pool;

    move-result-object v0

    .line 23
    .local v0, "pool":Lcom/artemis/ComponentPool$Pool;
    invoke-virtual {v0}, Lcom/artemis/ComponentPool$Pool;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/artemis/ComponentPool$Pool;->obtain()Lcom/artemis/PooledComponent;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/artemis/utils/reflect/ClassReflection;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/PooledComponent;

    goto :goto_0
.end method
