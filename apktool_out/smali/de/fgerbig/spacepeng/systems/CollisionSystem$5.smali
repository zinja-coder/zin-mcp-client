.class Lde/fgerbig/spacepeng/systems/CollisionSystem$5;
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
    .line 198
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$5;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCollision(Lcom/artemis/Entity;Lcom/artemis/Entity;)V
    .locals 4
    .param p1, "alienShot"    # Lcom/artemis/Entity;
    .param p2, "player"    # Lcom/artemis/Entity;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 204
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$5;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v1, v1, Lde/fgerbig/spacepeng/systems/CollisionSystem;->shield_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v1, p2}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$5;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v1, v1, Lde/fgerbig/spacepeng/systems/CollisionSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v1, p2}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    .line 209
    .local v0, "playerPos":Lde/fgerbig/spacepeng/components/Position;
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$5;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-static {v1}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$500(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v1

    iget v2, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v3, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v1, v2, v3}, Lde/fgerbig/spacepeng/services/EntityFactory;->createPlayerExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 211
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$5;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v1, v1, Lde/fgerbig/spacepeng/systems/CollisionSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v2, "playerKilled"

    invoke-interface {v1, v2, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
