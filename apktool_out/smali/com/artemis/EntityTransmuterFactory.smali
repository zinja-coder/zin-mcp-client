.class public final Lcom/artemis/EntityTransmuterFactory;
.super Ljava/lang/Object;
.source "EntityTransmuterFactory.java"


# instance fields
.field private final additions:Ljava/util/BitSet;

.field private final removals:Ljava/util/BitSet;

.field private final types:Lcom/artemis/ComponentTypeFactory;

.field private world:Lcom/artemis/World;


# direct methods
.method public constructor <init>(Lcom/artemis/World;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/artemis/EntityTransmuterFactory;->world:Lcom/artemis/World;

    .line 13
    invoke-virtual {p1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    iget-object v0, v0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    iput-object v0, p0, Lcom/artemis/EntityTransmuterFactory;->types:Lcom/artemis/ComponentTypeFactory;

    .line 14
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityTransmuterFactory;->additions:Ljava/util/BitSet;

    .line 15
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityTransmuterFactory;->removals:Ljava/util/BitSet;

    .line 16
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;)Lcom/artemis/EntityTransmuterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/EntityTransmuterFactory;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v1, p0, Lcom/artemis/EntityTransmuterFactory;->types:Lcom/artemis/ComponentTypeFactory;

    invoke-virtual {v1, p1}, Lcom/artemis/ComponentTypeFactory;->getIndexFor(Ljava/lang/Class;)I

    move-result v0

    .line 20
    .local v0, "index":I
    iget-object v1, p0, Lcom/artemis/EntityTransmuterFactory;->additions:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 21
    iget-object v1, p0, Lcom/artemis/EntityTransmuterFactory;->removals:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 22
    return-object p0
.end method

.method public build()Lcom/artemis/EntityTransmuter;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/artemis/EntityTransmuter;

    iget-object v1, p0, Lcom/artemis/EntityTransmuterFactory;->world:Lcom/artemis/World;

    iget-object v2, p0, Lcom/artemis/EntityTransmuterFactory;->additions:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/artemis/EntityTransmuterFactory;->removals:Ljava/util/BitSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/artemis/EntityTransmuter;-><init>(Lcom/artemis/World;Ljava/util/BitSet;Ljava/util/BitSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Class;)Lcom/artemis/EntityTransmuterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/EntityTransmuterFactory;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v1, p0, Lcom/artemis/EntityTransmuterFactory;->types:Lcom/artemis/ComponentTypeFactory;

    invoke-virtual {v1, p1}, Lcom/artemis/ComponentTypeFactory;->getIndexFor(Ljava/lang/Class;)I

    move-result v0

    .line 27
    .local v0, "index":I
    iget-object v1, p0, Lcom/artemis/EntityTransmuterFactory;->additions:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 28
    iget-object v1, p0, Lcom/artemis/EntityTransmuterFactory;->removals:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 29
    return-object p0
.end method
