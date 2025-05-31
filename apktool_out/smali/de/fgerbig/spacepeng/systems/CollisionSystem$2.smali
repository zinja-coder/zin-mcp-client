.class Lde/fgerbig/spacepeng/systems/CollisionSystem$2;
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
    .line 116
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$2;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCollision(Lcom/artemis/Entity;Lcom/artemis/Entity;)V
    .locals 5
    .param p1, "playerShot"    # Lcom/artemis/Entity;
    .param p2, "alienShot"    # Lcom/artemis/Entity;

    .prologue
    .line 119
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$2;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v2, v2, Lde/fgerbig/spacepeng/systems/CollisionSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p2}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    .line 120
    .local v0, "alienShotPos":Lde/fgerbig/spacepeng/components/Position;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 121
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$2;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-static {v2}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$200(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v2

    iget v3, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v4, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v2, v3, v4}, Lde/fgerbig/spacepeng/services/EntityFactory;->createParticle(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 125
    return-void
.end method
