.class Lcom/artemis/BasicComponentMapper;
.super Lcom/artemis/ComponentMapper;
.source "BasicComponentMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/artemis/Component;",
        ">",
        "Lcom/artemis/ComponentMapper",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final components:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/artemis/ComponentType;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/artemis/World;)V
    .locals 3
    .param p2, "world"    # Lcom/artemis/World;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/artemis/World;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/artemis/BasicComponentMapper;, "Lcom/artemis/BasicComponentMapper<TA;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Lcom/artemis/ComponentMapper;-><init>()V

    .line 37
    invoke-virtual {p2}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    iget-object v0, v1, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 38
    .local v0, "tf":Lcom/artemis/ComponentTypeFactory;
    invoke-virtual {v0, p1}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v1

    iput-object v1, p0, Lcom/artemis/BasicComponentMapper;->type:Lcom/artemis/ComponentType;

    .line 39
    invoke-virtual {p2}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/artemis/BasicComponentMapper;->type:Lcom/artemis/ComponentType;

    invoke-virtual {v1, v2}, Lcom/artemis/ComponentManager;->getComponentsByType(Lcom/artemis/ComponentType;)Lcom/artemis/utils/Bag;

    move-result-object v1

    iput-object v1, p0, Lcom/artemis/BasicComponentMapper;->components:Lcom/artemis/utils/Bag;

    .line 40
    return-void
.end method


# virtual methods
.method public get(Lcom/artemis/Entity;)Lcom/artemis/Component;
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/artemis/BasicComponentMapper;, "Lcom/artemis/BasicComponentMapper<TA;>;"
    iget-object v0, p0, Lcom/artemis/BasicComponentMapper;->components:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Component;

    return-object v0
.end method

.method public get(Lcom/artemis/Entity;Z)Lcom/artemis/Component;
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "forceNewInstance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            "Z)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/artemis/BasicComponentMapper;, "Lcom/artemis/BasicComponentMapper<TA;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/BasicComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    return-object v0
.end method

.method public getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/artemis/BasicComponentMapper;, "Lcom/artemis/BasicComponentMapper<TA;>;"
    iget-object v0, p0, Lcom/artemis/BasicComponentMapper;->components:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->isIndexWithinBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/artemis/BasicComponentMapper;->components:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Component;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSafe(Lcom/artemis/Entity;Z)Lcom/artemis/Component;
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "forceNewInstance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            "Z)TA;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/artemis/BasicComponentMapper;, "Lcom/artemis/BasicComponentMapper<TA;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/BasicComponentMapper;->getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    return-object v0
.end method

.method public has(Lcom/artemis/Entity;)Z
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 60
    .local p0, "this":Lcom/artemis/BasicComponentMapper;, "Lcom/artemis/BasicComponentMapper<TA;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/BasicComponentMapper;->getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
