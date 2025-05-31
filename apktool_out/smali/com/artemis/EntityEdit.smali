.class public final Lcom/artemis/EntityEdit;
.super Ljava/lang/Object;
.source "EntityEdit.java"


# instance fields
.field final componentBits:Ljava/util/BitSet;

.field entity:Lcom/artemis/Entity;

.field hasBeenAddedToWorld:Z

.field scheduledDeletion:Z

.field private world:Lcom/artemis/World;


# direct methods
.method constructor <init>(Lcom/artemis/World;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/artemis/EntityEdit;->world:Lcom/artemis/World;

    .line 16
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;
    .locals 2
    .param p1, "component"    # Lcom/artemis/Component;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/artemis/EntityEdit;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    iget-object v0, v1, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 50
    .local v0, "tf":Lcom/artemis/ComponentTypeFactory;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;Lcom/artemis/ComponentType;)Lcom/artemis/EntityEdit;

    move-result-object v1

    return-object v1
.end method

.method public add(Lcom/artemis/Component;Lcom/artemis/ComponentType;)Lcom/artemis/EntityEdit;
    .locals 3
    .param p1, "component"    # Lcom/artemis/Component;
    .param p2, "type"    # Lcom/artemis/ComponentType;

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getTaxonomy()Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v0

    sget-object v1, Lcom/artemis/ComponentType$Taxonomy;->BASIC:Lcom/artemis/ComponentType$Taxonomy;

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Lcom/artemis/InvalidComponentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Use EntityEdit#create(Class<Component>) for adding non-basic component types"

    invoke-direct {v0, v1, v2}, Lcom/artemis/InvalidComponentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/artemis/EntityEdit;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1, p2, p1}, Lcom/artemis/ComponentManager;->addComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;Lcom/artemis/Component;)V

    .line 75
    iget-object v0, p0, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 77
    return-object p0
.end method

.method public create(Ljava/lang/Class;)Lcom/artemis/Component;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "componentKlazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Lcom/artemis/EntityEdit;->world:Lcom/artemis/World;

    invoke-virtual {v4}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    .line 30
    .local v1, "componentManager":Lcom/artemis/ComponentManager;
    iget-object v4, p0, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v1, v4, p1}, Lcom/artemis/ComponentManager;->create(Lcom/artemis/Entity;Ljava/lang/Class;)Lcom/artemis/Component;

    move-result-object v0

    .line 32
    .local v0, "component":Lcom/artemis/Component;, "TT;"
    iget-object v4, p0, Lcom/artemis/EntityEdit;->world:Lcom/artemis/World;

    invoke-virtual {v4}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v4

    iget-object v3, v4, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 33
    .local v3, "tf":Lcom/artemis/ComponentTypeFactory;
    invoke-virtual {v3, p1}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v2

    .line 34
    .local v2, "componentType":Lcom/artemis/ComponentType;
    iget-object v4, p0, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 36
    return-object v0
.end method

.method public deleteEntity()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artemis/EntityEdit;->scheduledDeletion:Z

    .line 26
    return-void
.end method

.method public getEntity()Lcom/artemis/Entity;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    return-object v0
.end method

.method public remove(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;
    .locals 1
    .param p1, "component"    # Lcom/artemis/Component;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artemis/EntityEdit;->remove(Ljava/lang/Class;)Lcom/artemis/EntityEdit;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/artemis/ComponentType;)Lcom/artemis/EntityEdit;
    .locals 2
    .param p1, "type"    # Lcom/artemis/ComponentType;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/artemis/EntityEdit;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1, p1}, Lcom/artemis/ComponentManager;->removeComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)V

    .line 105
    iget-object v0, p0, Lcom/artemis/EntityEdit;->componentBits:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 107
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/Class;)Lcom/artemis/EntityEdit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/EntityEdit;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v1, p0, Lcom/artemis/EntityEdit;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    iget-object v0, v1, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 119
    .local v0, "tf":Lcom/artemis/ComponentTypeFactory;
    invoke-virtual {v0, p1}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/artemis/EntityEdit;->remove(Lcom/artemis/ComponentType;)Lcom/artemis/EntityEdit;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityEdit["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/artemis/EntityEdit;->entity:Lcom/artemis/Entity;

    invoke-virtual {v1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
