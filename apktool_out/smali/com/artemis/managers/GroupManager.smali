.class public Lcom/artemis/managers/GroupManager;
.super Lcom/artemis/Manager;
.source "GroupManager.java"


# static fields
.field private static final EMPTY_BAG:Lcom/artemis/utils/ImmutableBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entitiesByGroup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Entity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final groupsByEntity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/artemis/Entity;",
            "Lcom/artemis/utils/Bag",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    sput-object v0, Lcom/artemis/managers/GroupManager;->EMPTY_BAG:Lcom/artemis/utils/ImmutableBag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/artemis/Manager;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/GroupManager;->entitiesByGroup:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lcom/artemis/Entity;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v2, p0, Lcom/artemis/managers/GroupManager;->entitiesByGroup:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 56
    .local v0, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/artemis/utils/Bag;

    .end local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    .line 58
    .restart local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    iget-object v2, p0, Lcom/artemis/managers/GroupManager;->entitiesByGroup:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/utils/Bag;

    .line 63
    .local v1, "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 64
    new-instance v1, Lcom/artemis/utils/Bag;

    .end local v1    # "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    invoke-direct {v1}, Lcom/artemis/utils/Bag;-><init>()V

    .line 65
    .restart local v1    # "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    invoke-virtual {v1, p2}, Lcom/artemis/utils/Bag;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p2}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 68
    :cond_3
    return-void
.end method

.method public deleted(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/artemis/managers/GroupManager;->removeFromAllGroups(Lcom/artemis/Entity;)V

    .line 187
    return-void
.end method

.method public getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/artemis/managers/GroupManager;->entitiesByGroup:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 119
    .local v0, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/artemis/utils/Bag;

    .end local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    .line 121
    .restart local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    iget-object v1, p0, Lcom/artemis/managers/GroupManager;->entitiesByGroup:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    return-object v0
.end method

.method public getGroups(Lcom/artemis/Entity;)Lcom/artemis/utils/ImmutableBag;
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            ")",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 137
    .local v0, "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .end local v0    # "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .restart local v0    # "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    :cond_0
    sget-object v0, Lcom/artemis/managers/GroupManager;->EMPTY_BAG:Lcom/artemis/utils/ImmutableBag;

    goto :goto_0
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public isInAnyGroup(Lcom/artemis/Entity;)Z
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/artemis/managers/GroupManager;->getGroups(Lcom/artemis/Entity;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    invoke-interface {v0}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInGroup(Lcom/artemis/Entity;Ljava/lang/String;)Z
    .locals 6
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p2, :cond_1

    .line 164
    iget-object v5, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 165
    .local v0, "bag":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, "groups":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lcom/artemis/utils/Bag;->size()I

    move-result v4

    .local v4, "s":I
    :goto_0
    if-le v4, v3, :cond_1

    .line 168
    aget-object v1, v2, v3

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, "g":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const/4 v5, 0x1

    .line 175
    .end local v0    # "bag":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    .end local v1    # "g":Ljava/lang/String;
    .end local v2    # "groups":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "s":I
    :goto_1
    return v5

    .line 167
    .restart local v0    # "bag":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    .restart local v1    # "g":Ljava/lang/String;
    .restart local v2    # "groups":[Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v4    # "s":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "bag":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    .end local v1    # "g":Ljava/lang/String;
    .end local v2    # "groups":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public remove(Lcom/artemis/Entity;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/artemis/managers/GroupManager;->entitiesByGroup:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 80
    .local v0, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/utils/Bag;

    .line 85
    .local v1, "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1, p2}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    return-void
.end method

.method public removeFromAllGroups(Lcom/artemis/Entity;)V
    .locals 6
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 98
    iget-object v4, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/utils/Bag;

    .line 99
    .local v1, "groups":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-le v3, v2, :cond_2

    .line 101
    iget-object v4, p0, Lcom/artemis/managers/GroupManager;->entitiesByGroup:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/utils/Bag;

    .line 102
    .local v0, "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "entities":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/Entity;>;"
    :cond_2
    iget-object v4, p0, Lcom/artemis/managers/GroupManager;->groupsByEntity:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
