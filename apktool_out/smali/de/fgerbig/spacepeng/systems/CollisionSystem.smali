.class public Lde/fgerbig/spacepeng/systems/CollisionSystem;
.super Lcom/artemis/systems/VoidEntitySystem;
.source "CollisionSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/systems/CollisionSystem$6;,
        Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;,
        Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;
    }
.end annotation


# instance fields
.field circb_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/collision/CircleBounds;",
            ">;"
        }
    .end annotation
.end field

.field coin_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/powerup/Coin;",
            ">;"
        }
    .end annotation
.end field

.field private collisionPairs:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;",
            ">;"
        }
    .end annotation
.end field

.field protected ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

.field eventManager:Lde/fgerbig/spacepeng/events/EventManager;

.field hlth_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Health;",
            ">;"
        }
    .end annotation
.end field

.field isAttacking_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/IsAttacking;",
            ">;"
        }
    .end annotation
.end field

.field player_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Player;",
            ">;"
        }
    .end annotation
.end field

.field pos_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Position;",
            ">;"
        }
    .end annotation
.end field

.field rectb_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/collision/RectangleBounds;",
            ">;"
        }
    .end annotation
.end field

.field shield_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/powerup/Shield;",
            ">;"
        }
    .end annotation
.end field

.field spr_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/events/EventManager;)V
    .locals 0
    .param p1, "eventManager"    # Lde/fgerbig/spacepeng/events/EventManager;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/artemis/systems/VoidEntitySystem;-><init>()V

    .line 69
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method

.method static synthetic access$100(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method

.method static synthetic access$200(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method

.method static synthetic access$300(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method

.method static synthetic access$400(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method

.method static synthetic access$500(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method

.method static synthetic access$600(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method

.method static synthetic access$700(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/systems/CollisionSystem;

    .prologue
    .line 43
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    return-object v0
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->world:Lcom/artemis/World;

    const-class v1, Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getSystem(Ljava/lang/Class;)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    .line 76
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    .line 79
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    new-instance v1, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;

    const-string v2, "playerShots"

    const-string v3, "aliens"

    new-instance v4, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;

    invoke-direct {v4, p0}, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;Ljava/lang/String;Ljava/lang/String;Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;)V

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    new-instance v1, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;

    const-string v2, "playerShots"

    const-string v3, "alienShots"

    new-instance v4, Lde/fgerbig/spacepeng/systems/CollisionSystem$2;

    invoke-direct {v4, p0}, Lde/fgerbig/spacepeng/systems/CollisionSystem$2;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;Ljava/lang/String;Ljava/lang/String;Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;)V

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    new-instance v1, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;

    const-string v2, "player"

    const-string v3, "aliens"

    new-instance v4, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;

    invoke-direct {v4, p0}, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;Ljava/lang/String;Ljava/lang/String;Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;)V

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    new-instance v1, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;

    const-string v2, "player"

    const-string v3, "coin"

    new-instance v4, Lde/fgerbig/spacepeng/systems/CollisionSystem$4;

    invoke-direct {v4, p0}, Lde/fgerbig/spacepeng/systems/CollisionSystem$4;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;Ljava/lang/String;Ljava/lang/String;Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;)V

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    new-instance v1, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;

    const-string v2, "alienShots"

    const-string v3, "player"

    new-instance v4, Lde/fgerbig/spacepeng/systems/CollisionSystem$5;

    invoke-direct {v4, p0}, Lde/fgerbig/spacepeng/systems/CollisionSystem$5;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;Ljava/lang/String;Ljava/lang/String;Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;)V

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method protected processSystem()V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    invoke-virtual {v1}, Lcom/artemis/utils/Bag;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 219
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem;->collisionPairs:Lcom/artemis/utils/Bag;

    invoke-virtual {v1, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->checkForCollisions()V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method
