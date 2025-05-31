.class public Lcom/artemis/World;
.super Ljava/lang/Object;
.source "World.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/World$1;,
        Lcom/artemis/World$Performer;,
        Lcom/artemis/World$AddedPerformer;,
        Lcom/artemis/World$ChangedPerformer;,
        Lcom/artemis/World$DisabledPerformer;,
        Lcom/artemis/World$EnabledPerformer;,
        Lcom/artemis/World$DeletedPerformer;
    }
.end annotation


# instance fields
.field final added:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final addedPerformer:Lcom/artemis/World$AddedPerformer;

.field final changed:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final changedPerformer:Lcom/artemis/World$ChangedPerformer;

.field private final cm:Lcom/artemis/ComponentManager;

.field final deleted:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final deletedPerformer:Lcom/artemis/World$DeletedPerformer;

.field public delta:F

.field final disabled:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final disabledPerformer:Lcom/artemis/World$DisabledPerformer;

.field final editPool:Lcom/artemis/EntityEditPool;

.field private final em:Lcom/artemis/EntityManager;

.field final enabled:Lcom/artemis/WildBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final enabledPerformer:Lcom/artemis/World$EnabledPerformer;

.field private initialized:Z

.field private injector:Lcom/artemis/Injector;

.field private final managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Manager;",
            ">;",
            "Lcom/artemis/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private final managersBag:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private registerUuids:Z

.field private final systems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/artemis/EntitySystem;",
            ">;"
        }
    .end annotation
.end field

.field private final systemsBag:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/EntitySystem;",
            ">;"
        }
    .end annotation
.end field

.field private final systemsToInit:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/EntitySystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/artemis/WorldConfiguration;

    invoke-direct {v0}, Lcom/artemis/WorldConfiguration;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/artemis/WorldConfiguration;->maxRebuiltIndicesPerTick(I)Lcom/artemis/WorldConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/World;-><init>(Lcom/artemis/WorldConfiguration;)V

    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "expectedEntityCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/artemis/WorldConfiguration;

    invoke-direct {v0}, Lcom/artemis/WorldConfiguration;-><init>()V

    invoke-virtual {v0, p1}, Lcom/artemis/WorldConfiguration;->maxRebuiltIndicesPerTick(I)Lcom/artemis/WorldConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/World;-><init>(Lcom/artemis/WorldConfiguration;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/artemis/WorldConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/artemis/WorldConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/artemis/EntityEditPool;

    invoke-direct {v0, p0}, Lcom/artemis/EntityEditPool;-><init>(Lcom/artemis/World;)V

    iput-object v0, p0, Lcom/artemis/World;->editPool:Lcom/artemis/EntityEditPool;

    .line 129
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->managers:Ljava/util/Map;

    .line 130
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    .line 132
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->systems:Ljava/util/Map;

    .line 133
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    .line 134
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->systemsToInit:Lcom/artemis/utils/Bag;

    .line 136
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->added:Lcom/artemis/WildBag;

    .line 137
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->changed:Lcom/artemis/WildBag;

    .line 138
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->deleted:Lcom/artemis/WildBag;

    .line 139
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->enabled:Lcom/artemis/WildBag;

    .line 140
    new-instance v0, Lcom/artemis/WildBag;

    invoke-direct {v0}, Lcom/artemis/WildBag;-><init>()V

    iput-object v0, p0, Lcom/artemis/World;->disabled:Lcom/artemis/WildBag;

    .line 142
    new-instance v0, Lcom/artemis/World$AddedPerformer;

    invoke-direct {v0, v1}, Lcom/artemis/World$AddedPerformer;-><init>(Lcom/artemis/World$1;)V

    iput-object v0, p0, Lcom/artemis/World;->addedPerformer:Lcom/artemis/World$AddedPerformer;

    .line 143
    new-instance v0, Lcom/artemis/World$ChangedPerformer;

    invoke-direct {v0, v1}, Lcom/artemis/World$ChangedPerformer;-><init>(Lcom/artemis/World$1;)V

    iput-object v0, p0, Lcom/artemis/World;->changedPerformer:Lcom/artemis/World$ChangedPerformer;

    .line 144
    new-instance v0, Lcom/artemis/World$DeletedPerformer;

    invoke-direct {v0, v1}, Lcom/artemis/World$DeletedPerformer;-><init>(Lcom/artemis/World$1;)V

    iput-object v0, p0, Lcom/artemis/World;->deletedPerformer:Lcom/artemis/World$DeletedPerformer;

    .line 145
    new-instance v0, Lcom/artemis/World$EnabledPerformer;

    invoke-direct {v0, v1}, Lcom/artemis/World$EnabledPerformer;-><init>(Lcom/artemis/World$1;)V

    iput-object v0, p0, Lcom/artemis/World;->enabledPerformer:Lcom/artemis/World$EnabledPerformer;

    .line 146
    new-instance v0, Lcom/artemis/World$DisabledPerformer;

    invoke-direct {v0, v1}, Lcom/artemis/World$DisabledPerformer;-><init>(Lcom/artemis/World$1;)V

    iput-object v0, p0, Lcom/artemis/World;->disabledPerformer:Lcom/artemis/World$DisabledPerformer;

    .line 148
    new-instance v0, Lcom/artemis/ComponentManager;

    invoke-virtual {p1}, Lcom/artemis/WorldConfiguration;->expectedEntityCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/artemis/ComponentManager;-><init>(I)V

    iput-object v0, p0, Lcom/artemis/World;->cm:Lcom/artemis/ComponentManager;

    .line 149
    iget-object v0, p0, Lcom/artemis/World;->cm:Lcom/artemis/ComponentManager;

    invoke-virtual {p0, v0}, Lcom/artemis/World;->setManager(Lcom/artemis/Manager;)Lcom/artemis/Manager;

    .line 151
    new-instance v0, Lcom/artemis/EntityManager;

    invoke-virtual {p1}, Lcom/artemis/WorldConfiguration;->expectedEntityCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/artemis/EntityManager;-><init>(I)V

    iput-object v0, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    .line 152
    iget-object v0, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    invoke-virtual {p0, v0}, Lcom/artemis/World;->setManager(Lcom/artemis/Manager;)Lcom/artemis/Manager;

    .line 154
    new-instance v0, Lcom/artemis/Injector;

    invoke-direct {v0, p0, p1}, Lcom/artemis/Injector;-><init>(Lcom/artemis/World;Lcom/artemis/WorldConfiguration;)V

    iput-object v0, p0, Lcom/artemis/World;->injector:Lcom/artemis/Injector;

    .line 155
    return-void
.end method

.method private assertInitialized()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/artemis/World;->initialized:Z

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/artemis/MundaneWireException;

    const-string v1, "World#initialize() has not yet been called."

    invoke-direct {v0, v1}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    return-void
.end method

.method private check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V
    .locals 1
    .param p2, "performer"    # Lcom/artemis/World$Performer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;",
            "Lcom/artemis/World$Performer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "entityBag":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<Lcom/artemis/Entity;>;"
    invoke-virtual {p1}, Lcom/artemis/WildBag;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/artemis/World;->notifyManagers(Lcom/artemis/World$Performer;Lcom/artemis/WildBag;)V

    .line 562
    invoke-direct {p0, p2, p1}, Lcom/artemis/World;->notifySystems(Lcom/artemis/World$Performer;Lcom/artemis/WildBag;)V

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/artemis/WildBag;->setSize(I)V

    goto :goto_0
.end method

.method private initializeSystems()V
    .locals 5

    .prologue
    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/artemis/World;->systemsToInit:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 616
    iget-object v3, p0, Lcom/artemis/World;->systemsToInit:Lcom/artemis/utils/Bag;

    invoke-virtual {v3, v1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/EntitySystem;

    .line 617
    .local v0, "es":Lcom/artemis/EntitySystem;
    iget-object v3, p0, Lcom/artemis/World;->injector:Lcom/artemis/Injector;

    invoke-virtual {v3, v0}, Lcom/artemis/Injector;->inject(Ljava/lang/Object;)V

    .line 618
    invoke-virtual {v0}, Lcom/artemis/EntitySystem;->initialize()V

    .line 619
    new-instance v3, Lcom/artemis/Entity;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v4}, Lcom/artemis/Entity;-><init>(Lcom/artemis/World;I)V

    iput-object v3, v0, Lcom/artemis/EntitySystem;->flyweight:Lcom/artemis/Entity;

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "es":Lcom/artemis/EntitySystem;
    :cond_0
    iget-object v3, p0, Lcom/artemis/World;->systemsToInit:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->clear()V

    .line 622
    const/4 v3, 0x1

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/artemis/World;->processComponentIdentity(ILjava/util/BitSet;)V

    .line 623
    return-void
.end method

.method private notifyManagers(Lcom/artemis/World$Performer;Lcom/artemis/WildBag;)V
    .locals 4
    .param p1, "performer"    # Lcom/artemis/World$Performer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/World$Performer;",
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p2, "entities":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<Lcom/artemis/Entity;>;"
    iget-object v3, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 534
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 535
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/Manager;

    invoke-interface {p1, v3, p2}, Lcom/artemis/World$Performer;->perform(Lcom/artemis/EntityObserver;Lcom/artemis/WildBag;)V

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method private notifySystems(Lcom/artemis/World$Performer;Lcom/artemis/WildBag;)V
    .locals 4
    .param p1, "performer"    # Lcom/artemis/World$Performer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/World$Performer;",
            "Lcom/artemis/WildBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p2, "entities":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<Lcom/artemis/Entity;>;"
    iget-object v3, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 521
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 522
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/EntitySystem;

    invoke-interface {p1, v3, p2}, Lcom/artemis/World$Performer;->perform(Lcom/artemis/EntityObserver;Lcom/artemis/WildBag;)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    return-void
.end method

.method private updateEntityStates()V
    .locals 2

    .prologue
    .line 600
    :goto_0
    iget-object v0, p0, Lcom/artemis/World;->added:Lcom/artemis/WildBag;

    invoke-virtual {v0}, Lcom/artemis/WildBag;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/artemis/World;->changed:Lcom/artemis/WildBag;

    invoke-virtual {v0}, Lcom/artemis/WildBag;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/artemis/World;->added:Lcom/artemis/WildBag;

    iget-object v1, p0, Lcom/artemis/World;->addedPerformer:Lcom/artemis/World$AddedPerformer;

    invoke-direct {p0, v0, v1}, Lcom/artemis/World;->check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V

    .line 602
    iget-object v0, p0, Lcom/artemis/World;->changed:Lcom/artemis/WildBag;

    iget-object v1, p0, Lcom/artemis/World;->changedPerformer:Lcom/artemis/World$ChangedPerformer;

    invoke-direct {p0, v0, v1}, Lcom/artemis/World;->check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V

    goto :goto_0

    .line 605
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/artemis/World;->editPool:Lcom/artemis/EntityEditPool;

    invoke-virtual {v0}, Lcom/artemis/EntityEditPool;->processEntities()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lcom/artemis/World;->added:Lcom/artemis/WildBag;

    iget-object v1, p0, Lcom/artemis/World;->addedPerformer:Lcom/artemis/World$AddedPerformer;

    invoke-direct {p0, v0, v1}, Lcom/artemis/World;->check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V

    .line 607
    iget-object v0, p0, Lcom/artemis/World;->changed:Lcom/artemis/WildBag;

    iget-object v1, p0, Lcom/artemis/World;->changedPerformer:Lcom/artemis/World$ChangedPerformer;

    invoke-direct {p0, v0, v1}, Lcom/artemis/World;->check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V

    .line 608
    iget-object v0, p0, Lcom/artemis/World;->deleted:Lcom/artemis/WildBag;

    iget-object v1, p0, Lcom/artemis/World;->deletedPerformer:Lcom/artemis/World$DeletedPerformer;

    invoke-direct {p0, v0, v1}, Lcom/artemis/World;->check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V

    .line 609
    iget-object v0, p0, Lcom/artemis/World;->disabled:Lcom/artemis/WildBag;

    iget-object v1, p0, Lcom/artemis/World;->disabledPerformer:Lcom/artemis/World$DisabledPerformer;

    invoke-direct {p0, v0, v1}, Lcom/artemis/World;->check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V

    .line 610
    iget-object v0, p0, Lcom/artemis/World;->enabled:Lcom/artemis/WildBag;

    iget-object v1, p0, Lcom/artemis/World;->enabledPerformer:Lcom/artemis/World$EnabledPerformer;

    invoke-direct {p0, v0, v1}, Lcom/artemis/World;->check(Lcom/artemis/WildBag;Lcom/artemis/World$Performer;)V

    goto :goto_1

    .line 612
    :cond_2
    return-void
.end method


# virtual methods
.method public addEntity(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    return-void
.end method

.method public changedEntity(Lcom/artemis/Entity;)V
    .locals 0
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    return-void
.end method

.method public createEntity()Lcom/artemis/Entity;
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    invoke-virtual {v1}, Lcom/artemis/EntityManager;->createEntityInstance()Lcom/artemis/Entity;

    move-result-object v0

    .line 408
    .local v0, "e":Lcom/artemis/Entity;
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    .line 409
    return-object v0
.end method

.method public createEntity(Lcom/artemis/Archetype;)Lcom/artemis/Entity;
    .locals 2
    .param p1, "archetype"    # Lcom/artemis/Archetype;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    invoke-virtual {v1, p1}, Lcom/artemis/EntityManager;->createEntityInstance(Lcom/artemis/Archetype;)Lcom/artemis/Entity;

    move-result-object v0

    .line 420
    .local v0, "e":Lcom/artemis/Entity;
    iget-object v1, p0, Lcom/artemis/World;->cm:Lcom/artemis/ComponentManager;

    invoke-virtual {v1, v0, p1}, Lcom/artemis/ComponentManager;->addComponents(Lcom/artemis/Entity;Lcom/artemis/Archetype;)V

    .line 421
    iget-object v1, p0, Lcom/artemis/World;->added:Lcom/artemis/WildBag;

    invoke-virtual {v1, v0}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 422
    return-object v0
.end method

.method public createEntity(Ljava/util/UUID;)Lcom/artemis/Entity;
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    invoke-virtual {v1}, Lcom/artemis/EntityManager;->createEntityInstance()Lcom/artemis/Entity;

    move-result-object v0

    .line 437
    .local v0, "entity":Lcom/artemis/Entity;
    invoke-virtual {v0, p1}, Lcom/artemis/Entity;->setUuid(Ljava/util/UUID;)V

    .line 438
    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    .line 439
    return-object v0
.end method

.method createFactory(Ljava/lang/Class;)Lcom/artemis/EntityFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/artemis/EntityFactory;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "factory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    new-instance v4, Lcom/artemis/MundaneWireException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected interface for type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/artemis/World;->assertInitialized()V

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Impl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "impl":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/artemis/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 238
    .local v3, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/artemis/World;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/artemis/utils/reflect/ClassReflection;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/artemis/utils/reflect/Constructor;

    move-result-object v0

    .line 239
    .local v0, "constructor":Lcom/artemis/utils/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v4}, Lcom/artemis/utils/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artemis/EntityFactory;
    :try_end_0
    .catch Lcom/artemis/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 240
    .end local v0    # "constructor":Lcom/artemis/utils/reflect/Constructor;
    .end local v3    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Lcom/artemis/utils/reflect/ReflectionException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public deleteEntity(Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artemis/EntityEdit;->deleteEntity()V

    .line 364
    return-void
.end method

.method public deleteManager(Lcom/artemis/Manager;)V
    .locals 2
    .param p1, "manager"    # Lcom/artemis/Manager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/artemis/World;->managers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public deleteSystem(Lcom/artemis/EntitySystem;)V
    .locals 2
    .param p1, "system"    # Lcom/artemis/EntitySystem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/artemis/World;->systems:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/artemis/World;->systemsToInit:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->remove(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public disable(Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/artemis/World;->enabled:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/artemis/World;->enabled:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->remove(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/artemis/World;->disabled:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method public dispose()V
    .locals 6

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v5}, Lcom/artemis/utils/Bag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/Manager;

    .line 210
    .local v3, "manager":Lcom/artemis/Manager;
    :try_start_0
    invoke-virtual {v3}, Lcom/artemis/Manager;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "manager":Lcom/artemis/Manager;
    :cond_0
    iget-object v5, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v5}, Lcom/artemis/utils/Bag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artemis/EntitySystem;

    .line 218
    .local v4, "system":Lcom/artemis/EntitySystem;
    :try_start_1
    invoke-virtual {v4}, Lcom/artemis/EntitySystem;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "system":Lcom/artemis/EntitySystem;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 225
    new-instance v5, Lcom/artemis/ArtemisMultiException;

    invoke-direct {v5, v1}, Lcom/artemis/ArtemisMultiException;-><init>(Ljava/util/List;)V

    throw v5

    .line 226
    :cond_2
    return-void
.end method

.method public enable(Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/artemis/World;->disabled:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/artemis/World;->disabled:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->remove(Ljava/lang/Object;)Z

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/artemis/World;->enabled:Lcom/artemis/WildBag;

    invoke-virtual {v0, p1}, Lcom/artemis/WildBag;->add(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public getComponentManager()Lcom/artemis/ComponentManager;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/artemis/World;->cm:Lcom/artemis/ComponentManager;

    return-object v0
.end method

.method public getDelta()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/artemis/World;->delta:F

    return v0
.end method

.method public getEntity(I)Lcom/artemis/Entity;
    .locals 1
    .param p1, "entityId"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    invoke-virtual {v0, p1}, Lcom/artemis/EntityManager;->getEntity(I)Lcom/artemis/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getEntityManager()Lcom/artemis/EntityManager;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    return-object v0
.end method

.method public getManager(Ljava/lang/Class;)Lcom/artemis/Manager;
    .locals 1
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
    .line 299
    .local p1, "managerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/artemis/World;->managers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/Manager;

    return-object v0
.end method

.method public getManagers()Lcom/artemis/utils/ImmutableBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Manager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    return-object v0
.end method

.method public getMapper(Ljava/lang/Class;)Lcom/artemis/ComponentMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/artemis/ComponentMapper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p0}, Lcom/artemis/BasicComponentMapper;->getFor(Ljava/lang/Class;Lcom/artemis/World;)Lcom/artemis/ComponentMapper;

    move-result-object v0

    return-object v0
.end method

.method public getSystem(Ljava/lang/Class;)Lcom/artemis/EntitySystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/EntitySystem;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/artemis/World;->systems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/EntitySystem;

    return-object v0
.end method

.method public getSystems()Lcom/artemis/utils/ImmutableBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/EntitySystem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    return-object v0
.end method

.method hasUuidManager()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/artemis/World;->registerUuids:Z

    return v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 162
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/artemis/World;->initialized:Z

    .line 163
    iget-object v2, p0, Lcom/artemis/World;->injector:Lcom/artemis/Injector;

    invoke-virtual {v2}, Lcom/artemis/Injector;->update()V

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v2}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/Manager;

    .line 166
    .local v1, "manager":Lcom/artemis/Manager;
    iget-object v2, p0, Lcom/artemis/World;->injector:Lcom/artemis/Injector;

    invoke-virtual {v2, v1}, Lcom/artemis/Injector;->inject(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v1}, Lcom/artemis/Manager;->initialize()V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "manager":Lcom/artemis/Manager;
    :cond_0
    invoke-direct {p0}, Lcom/artemis/World;->initializeSystems()V

    .line 171
    return-void
.end method

.method public inject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/artemis/World;->assertInitialized()V

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/artemis/annotations/Wire;

    invoke-static {v0, v1}, Lcom/artemis/utils/reflect/ClassReflection;->isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/artemis/MundaneWireException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be annotated with @Wire"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/artemis/World;->injector:Lcom/artemis/Injector;

    invoke-virtual {v0, p1}, Lcom/artemis/Injector;->inject(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public process()V
    .locals 5

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/artemis/World;->updateEntityStates()V

    .line 579
    iget-object v4, p0, Lcom/artemis/World;->em:Lcom/artemis/EntityManager;

    invoke-virtual {v4}, Lcom/artemis/EntityManager;->clean()V

    .line 580
    iget-object v4, p0, Lcom/artemis/World;->cm:Lcom/artemis/ComponentManager;

    invoke-virtual {v4}, Lcom/artemis/ComponentManager;->clean()V

    .line 584
    iget-object v4, p0, Lcom/artemis/World;->systemsToInit:Lcom/artemis/utils/Bag;

    invoke-virtual {v4}, Lcom/artemis/utils/Bag;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/artemis/World;->initializeSystems()V

    .line 588
    :cond_0
    iget-object v4, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v4}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v3

    .line 589
    .local v3, "systemsData":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v4}, Lcom/artemis/utils/Bag;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-le v1, v0, :cond_2

    .line 590
    invoke-direct {p0}, Lcom/artemis/World;->updateEntityStates()V

    .line 592
    aget-object v2, v3, v0

    check-cast v2, Lcom/artemis/EntitySystem;

    .line 593
    .local v2, "system":Lcom/artemis/EntitySystem;
    invoke-virtual {v2}, Lcom/artemis/EntitySystem;->isPassive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 594
    invoke-virtual {v2}, Lcom/artemis/EntitySystem;->process()V

    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    .end local v2    # "system":Lcom/artemis/EntitySystem;
    :cond_2
    return-void
.end method

.method processComponentIdentity(ILjava/util/BitSet;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "componentBits"    # Ljava/util/BitSet;

    .prologue
    .line 567
    iget-object v3, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 568
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 569
    aget-object v3, v0, v1

    check-cast v3, Lcom/artemis/EntitySystem;

    invoke-virtual {v3, p1, p2}, Lcom/artemis/EntitySystem;->processComponentIdentity(ILjava/util/BitSet;)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    return-void
.end method

.method public setDelta(F)V
    .locals 0
    .param p1, "delta"    # F

    .prologue
    .line 336
    iput p1, p0, Lcom/artemis/World;->delta:F

    .line 337
    return-void
.end method

.method public final setManager(Lcom/artemis/Manager;)Lcom/artemis/Manager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Manager;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "manager":Lcom/artemis/Manager;, "TT;"
    iget-boolean v1, p0, Lcom/artemis/World;->initialized:Z

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "It is forbidden to add managers after calling World#initialized."

    .line 277
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/artemis/World;->managers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/artemis/World;->managersBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v1, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 282
    invoke-virtual {p1, p0}, Lcom/artemis/Manager;->setWorld(Lcom/artemis/World;)V

    .line 284
    instance-of v1, p1, Lcom/artemis/managers/UuidEntityManager;

    if-eqz v1, :cond_1

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/artemis/World;->registerUuids:Z

    .line 287
    :cond_1
    return-object p1
.end method

.method public setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/EntitySystem;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "system":Lcom/artemis/EntitySystem;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;Z)Lcom/artemis/EntitySystem;

    move-result-object v0

    return-object v0
.end method

.method public setSystem(Lcom/artemis/EntitySystem;Z)Lcom/artemis/EntitySystem;
    .locals 3
    .param p2, "passive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/EntitySystem;",
            ">(TT;Z)TT;"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "system":Lcom/artemis/EntitySystem;, "TT;"
    iget-boolean v1, p0, Lcom/artemis/World;->initialized:Z

    if-eqz v1, :cond_0

    .line 485
    const-string v0, "It is forbidden to add systems after calling World#initialized."

    .line 486
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p0}, Lcom/artemis/EntitySystem;->setWorld(Lcom/artemis/World;)V

    .line 491
    invoke-virtual {p1, p2}, Lcom/artemis/EntitySystem;->setPassive(Z)V

    .line 493
    iget-object v1, p0, Lcom/artemis/World;->systems:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v1, p0, Lcom/artemis/World;->systemsBag:Lcom/artemis/utils/Bag;

    invoke-virtual {v1, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 495
    iget-object v1, p0, Lcom/artemis/World;->systemsToInit:Lcom/artemis/utils/Bag;

    invoke-virtual {v1, p1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 497
    return-object p1
.end method
