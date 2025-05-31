.class public Lcom/artemis/utils/EntityBuilder;
.super Ljava/lang/Object;
.source "EntityBuilder.java"


# instance fields
.field private final edit:Lcom/artemis/EntityEdit;

.field private final world:Lcom/artemis/World;


# direct methods
.method public constructor <init>(Lcom/artemis/World;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/artemis/utils/EntityBuilder;->world:Lcom/artemis/World;

    .line 30
    invoke-virtual {p1}, Lcom/artemis/World;->createEntity()Lcom/artemis/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    iput-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/artemis/World;Lcom/artemis/Archetype;)V
    .locals 1
    .param p1, "world"    # Lcom/artemis/World;
    .param p2, "archetype"    # Lcom/artemis/Archetype;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/artemis/utils/EntityBuilder;->world:Lcom/artemis/World;

    .line 36
    invoke-virtual {p1, p2}, Lcom/artemis/World;->createEntity(Lcom/artemis/Archetype;)Lcom/artemis/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    iput-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    .line 37
    return-void
.end method


# virtual methods
.method public UUID(Ljava/util/UUID;)Lcom/artemis/utils/EntityBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 138
    const-class v0, Lcom/artemis/managers/UuidEntityManager;

    invoke-virtual {p0, v0}, Lcom/artemis/utils/EntityBuilder;->resolveManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/UuidEntityManager;

    iget-object v1, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v1}, Lcom/artemis/EntityEdit;->getEntity()Lcom/artemis/Entity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/artemis/managers/UuidEntityManager;->setUuid(Lcom/artemis/Entity;Ljava/util/UUID;)V

    .line 139
    return-object p0
.end method

.method public build()Lcom/artemis/Entity;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0}, Lcom/artemis/EntityEdit;->getEntity()Lcom/artemis/Entity;

    move-result-object v0

    return-object v0
.end method

.method public group(Ljava/lang/String;)Lcom/artemis/utils/EntityBuilder;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 160
    const-class v0, Lcom/artemis/managers/GroupManager;

    invoke-virtual {p0, v0}, Lcom/artemis/utils/EntityBuilder;->resolveManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/GroupManager;

    iget-object v1, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v1}, Lcom/artemis/EntityEdit;->getEntity()Lcom/artemis/Entity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 161
    return-object p0
.end method

.method public varargs groups([Ljava/lang/String;)Lcom/artemis/utils/EntityBuilder;
    .locals 2
    .param p1, "groups"    # [Ljava/lang/String;

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 167
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/artemis/utils/EntityBuilder;->group(Ljava/lang/String;)Lcom/artemis/utils/EntityBuilder;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object p0
.end method

.method public player(Ljava/lang/String;)Lcom/artemis/utils/EntityBuilder;
    .locals 2
    .param p1, "player"    # Ljava/lang/String;

    .prologue
    .line 148
    const-class v0, Lcom/artemis/managers/PlayerManager;

    invoke-virtual {p0, v0}, Lcom/artemis/utils/EntityBuilder;->resolveManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/PlayerManager;

    iget-object v1, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v1}, Lcom/artemis/EntityEdit;->getEntity()Lcom/artemis/Entity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/artemis/managers/PlayerManager;->setPlayer(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 149
    return-object p0
.end method

.method protected resolveManager(Ljava/lang/Class;)Lcom/artemis/Manager;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Manager;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/artemis/utils/EntityBuilder;->world:Lcom/artemis/World;

    invoke-virtual {v1, p1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    .line 180
    .local v0, "teamManager":Lcom/artemis/Manager;, "TT;"
    if-nez v0, :cond_0

    .line 181
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/artemis/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with your artemis world."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/artemis/utils/EntityBuilder;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 154
    const-class v0, Lcom/artemis/managers/TagManager;

    invoke-virtual {p0, v0}, Lcom/artemis/utils/EntityBuilder;->resolveManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/TagManager;

    iget-object v1, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v1}, Lcom/artemis/EntityEdit;->getEntity()Lcom/artemis/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/artemis/managers/TagManager;->register(Ljava/lang/String;Lcom/artemis/Entity;)V

    .line 155
    return-object p0
.end method

.method public with(Lcom/artemis/Component;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .param p1, "component"    # Lcom/artemis/Component;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 42
    return-object p0
.end method

.method public with(Lcom/artemis/Component;Lcom/artemis/Component;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .param p1, "component1"    # Lcom/artemis/Component;
    .param p2, "component2"    # Lcom/artemis/Component;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 48
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 49
    return-object p0
.end method

.method public with(Lcom/artemis/Component;Lcom/artemis/Component;Lcom/artemis/Component;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .param p1, "component1"    # Lcom/artemis/Component;
    .param p2, "component2"    # Lcom/artemis/Component;
    .param p3, "component3"    # Lcom/artemis/Component;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 55
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 56
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 57
    return-object p0
.end method

.method public with(Lcom/artemis/Component;Lcom/artemis/Component;Lcom/artemis/Component;Lcom/artemis/Component;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .param p1, "component1"    # Lcom/artemis/Component;
    .param p2, "component2"    # Lcom/artemis/Component;
    .param p3, "component3"    # Lcom/artemis/Component;
    .param p4, "component4"    # Lcom/artemis/Component;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 63
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 64
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 65
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 66
    return-object p0
.end method

.method public with(Lcom/artemis/Component;Lcom/artemis/Component;Lcom/artemis/Component;Lcom/artemis/Component;Lcom/artemis/Component;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .param p1, "component1"    # Lcom/artemis/Component;
    .param p2, "component2"    # Lcom/artemis/Component;
    .param p3, "component3"    # Lcom/artemis/Component;
    .param p4, "component4"    # Lcom/artemis/Component;
    .param p5, "component5"    # Lcom/artemis/Component;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 72
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 73
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 74
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p4}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 75
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p5}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 76
    return-object p0
.end method

.method public with(Ljava/lang/Class;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/utils/EntityBuilder;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 90
    return-object p0
.end method

.method public with(Ljava/lang/Class;Ljava/lang/Class;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/utils/EntityBuilder;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "component1":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p2, "component2":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 96
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 97
    return-object p0
.end method

.method public with(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/utils/EntityBuilder;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "component1":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p2, "component2":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p3, "component3":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 103
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 104
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p3}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 105
    return-object p0
.end method

.method public with(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/utils/EntityBuilder;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "component1":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p2, "component2":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p3, "component3":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p4, "component4":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 111
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 112
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p3}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 113
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p4}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 114
    return-object p0
.end method

.method public with(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/artemis/utils/EntityBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/utils/EntityBuilder;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "component1":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p2, "component2":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p3, "component3":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p4, "component4":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    .local p5, "component5":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 120
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p2}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 121
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p3}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 122
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p4}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 123
    iget-object v0, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    invoke-virtual {v0, p5}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 124
    return-object p0
.end method

.method public varargs with([Lcom/artemis/Component;)Lcom/artemis/utils/EntityBuilder;
    .locals 4
    .param p1, "components"    # [Lcom/artemis/Component;

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-object p0
.end method

.method public varargs with([Ljava/lang/Class;)Lcom/artemis/utils/EntityBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/utils/EntityBuilder;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "components":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/artemis/Component;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 130
    iget-object v2, p0, Lcom/artemis/utils/EntityBuilder;->edit:Lcom/artemis/EntityEdit;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/artemis/EntityEdit;->create(Ljava/lang/Class;)Lcom/artemis/Component;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object p0
.end method
