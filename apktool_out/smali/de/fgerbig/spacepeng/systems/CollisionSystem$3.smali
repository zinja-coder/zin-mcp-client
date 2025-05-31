.class Lde/fgerbig/spacepeng/systems/CollisionSystem$3;
.super Ljava/lang/Object;
.source "CollisionSystem.java"

# interfaces
.implements Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/systems/CollisionSystem;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCollision(Lcom/artemis/Entity;Lcom/artemis/Entity;)V
    .locals 7
    .param p1, "player"    # Lcom/artemis/Entity;
    .param p2, "alien"    # Lcom/artemis/Entity;

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, "health":F
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->hlth_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v4, p2}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->hlth_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v4, p2}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/Health;

    .line 137
    iget v2, v1, Lde/fgerbig/spacepeng/components/Health;->health:F

    .line 140
    .end local v1    # "h":Lde/fgerbig/spacepeng/components/Health;
    :cond_0
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    .line 141
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v4, p2}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    .line 142
    .local v0, "alienPos":Lde/fgerbig/spacepeng/components/Position;
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-static {v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$300(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v4

    iget v5, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v6, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v4, v5, v6}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 143
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->increaseScore(I)V

    .line 144
    invoke-virtual {p2}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 145
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v5, "checkIsLevelCLear"

    invoke-interface {v4, v5, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    .end local v0    # "alienPos":Lde/fgerbig/spacepeng/components/Position;
    :cond_1
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->shield_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v4, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v4, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v3

    check-cast v3, Lde/fgerbig/spacepeng/components/Position;

    .line 155
    .local v3, "playerPos":Lde/fgerbig/spacepeng/components/Position;
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-static {v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$400(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v4

    iget v5, v3, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v6, v3, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v4, v5, v6}, Lde/fgerbig/spacepeng/services/EntityFactory;->createPlayerExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 157
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$3;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v4, v4, Lde/fgerbig/spacepeng/systems/CollisionSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v5, "playerKilled"

    invoke-interface {v4, v5, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
