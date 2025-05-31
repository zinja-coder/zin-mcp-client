.class Lcom/artemis/PackedComponentMapper;
.super Lcom/artemis/ComponentMapper;
.source "PackedComponentMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/artemis/PackedComponent;",
        ">",
        "Lcom/artemis/ComponentMapper",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final component:Lcom/artemis/PackedComponent;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private newInstanceWithWorld:Z

.field private final owners:Ljava/util/BitSet;

.field private world:Lcom/artemis/World;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/artemis/World;)V
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
    .line 40
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Lcom/artemis/ComponentMapper;-><init>()V

    .line 27
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/artemis/PackedComponentMapper;->newInstanceWithWorld:Z

    .line 41
    iput-object p2, p0, Lcom/artemis/PackedComponentMapper;->world:Lcom/artemis/World;

    .line 42
    invoke-virtual {p2}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    .line 43
    .local v0, "cm":Lcom/artemis/ComponentManager;
    iget-object v2, v0, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v1

    .line 44
    .local v1, "type":Lcom/artemis/ComponentType;
    iget-boolean v2, v1, Lcom/artemis/ComponentType;->packedHasWorldConstructor:Z

    iput-boolean v2, p0, Lcom/artemis/PackedComponentMapper;->newInstanceWithWorld:Z

    .line 45
    invoke-virtual {v0, v1}, Lcom/artemis/ComponentManager;->getPackedComponentOwners(Lcom/artemis/ComponentType;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, p0, Lcom/artemis/PackedComponentMapper;->owners:Ljava/util/BitSet;

    .line 47
    iput-object p1, p0, Lcom/artemis/PackedComponentMapper;->componentType:Ljava/lang/Class;

    .line 49
    invoke-direct {p0}, Lcom/artemis/PackedComponentMapper;->newInstance()Lcom/artemis/PackedComponent;

    move-result-object v2

    iput-object v2, p0, Lcom/artemis/PackedComponentMapper;->component:Lcom/artemis/PackedComponent;

    .line 50
    return-void
.end method

.method static create(Ljava/lang/Class;Lcom/artemis/World;)Lcom/artemis/PackedComponentMapper;
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/artemis/PackedComponent;",
            ">;",
            "Lcom/artemis/World;",
            ")",
            "Lcom/artemis/PackedComponentMapper",
            "<",
            "Lcom/artemis/PackedComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/artemis/PackedComponent;>;"
    new-instance v0, Lcom/artemis/PackedComponentMapper;

    invoke-direct {v0, p0, p1}, Lcom/artemis/PackedComponentMapper;-><init>(Ljava/lang/Class;Lcom/artemis/World;)V

    return-object v0
.end method

.method private newInstance()Lcom/artemis/PackedComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    iget-object v0, p0, Lcom/artemis/PackedComponentMapper;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/artemis/PackedComponentMapper;->componentType:Ljava/lang/Class;

    iget-boolean v2, p0, Lcom/artemis/PackedComponentMapper;->newInstanceWithWorld:Z

    invoke-virtual {v0, v1, v2}, Lcom/artemis/ComponentManager;->newInstance(Ljava/lang/Class;Z)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lcom/artemis/PackedComponent;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get(Lcom/artemis/Entity;)Lcom/artemis/Component;
    .locals 1
    .param p1, "x0"    # Lcom/artemis/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/PackedComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/PackedComponent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Lcom/artemis/Entity;Z)Lcom/artemis/Component;
    .locals 1
    .param p1, "x0"    # Lcom/artemis/Entity;
    .param p2, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    invoke-virtual {p0, p1, p2}, Lcom/artemis/PackedComponentMapper;->get(Lcom/artemis/Entity;Z)Lcom/artemis/PackedComponent;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/artemis/Entity;)Lcom/artemis/PackedComponent;
    .locals 1
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
    .line 59
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    iget-object v0, p0, Lcom/artemis/PackedComponentMapper;->component:Lcom/artemis/PackedComponent;

    invoke-virtual {v0, p1}, Lcom/artemis/PackedComponent;->forEntity(Lcom/artemis/Entity;)V

    .line 60
    iget-object v0, p0, Lcom/artemis/PackedComponentMapper;->component:Lcom/artemis/PackedComponent;

    return-object v0
.end method

.method public get(Lcom/artemis/Entity;Z)Lcom/artemis/PackedComponent;
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
    .line 75
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    if-eqz p2, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/artemis/PackedComponentMapper;->newInstance()Lcom/artemis/PackedComponent;

    move-result-object v0

    .line 77
    .local v0, "c":Lcom/artemis/PackedComponent;, "TA;"
    invoke-virtual {v0, p1}, Lcom/artemis/PackedComponent;->forEntity(Lcom/artemis/Entity;)V

    .line 80
    .end local v0    # "c":Lcom/artemis/PackedComponent;, "TA;"
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/artemis/PackedComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/PackedComponent;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;
    .locals 1
    .param p1, "x0"    # Lcom/artemis/Entity;

    .prologue
    .line 18
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/PackedComponentMapper;->getSafe(Lcom/artemis/Entity;)Lcom/artemis/PackedComponent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSafe(Lcom/artemis/Entity;Z)Lcom/artemis/Component;
    .locals 1
    .param p1, "x0"    # Lcom/artemis/Entity;
    .param p2, "x1"    # Z

    .prologue
    .line 18
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    invoke-virtual {p0, p1, p2}, Lcom/artemis/PackedComponentMapper;->getSafe(Lcom/artemis/Entity;Z)Lcom/artemis/PackedComponent;

    move-result-object v0

    return-object v0
.end method

.method public getSafe(Lcom/artemis/Entity;)Lcom/artemis/PackedComponent;
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/PackedComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/artemis/PackedComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/PackedComponent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSafe(Lcom/artemis/Entity;Z)Lcom/artemis/PackedComponent;
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
    .line 86
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/PackedComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/artemis/PackedComponentMapper;->get(Lcom/artemis/Entity;Z)Lcom/artemis/PackedComponent;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Lcom/artemis/Entity;)Z
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 70
    .local p0, "this":Lcom/artemis/PackedComponentMapper;, "Lcom/artemis/PackedComponentMapper<TA;>;"
    iget-object v0, p0, Lcom/artemis/PackedComponentMapper;->owners:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/artemis/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method
