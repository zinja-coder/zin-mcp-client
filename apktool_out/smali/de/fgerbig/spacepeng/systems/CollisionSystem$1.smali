.class Lde/fgerbig/spacepeng/systems/CollisionSystem$1;
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
    .line 79
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCollision(Lcom/artemis/Entity;Lcom/artemis/Entity;)V
    .locals 8
    .param p1, "playerShot"    # Lcom/artemis/Entity;
    .param p2, "alien"    # Lcom/artemis/Entity;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 84
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->isAttacking_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, p2}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 85
    .local v1, "bonusForAlienIsAttacking":I
    :goto_0
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->hlth_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, p2}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v2

    .line 86
    .local v2, "boss":Z
    const/4 v4, 0x0

    .line 88
    .local v4, "health":F
    if-eqz v2, :cond_0

    .line 89
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->hlth_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, p2}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v3

    check-cast v3, Lde/fgerbig/spacepeng/components/Health;

    .line 90
    .local v3, "h":Lde/fgerbig/spacepeng/components/Health;
    iget v5, v3, Lde/fgerbig/spacepeng/components/Health;->health:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    iput v5, v3, Lde/fgerbig/spacepeng/components/Health;->health:F

    .line 91
    iget v4, v3, Lde/fgerbig/spacepeng/components/Health;->health:F

    .line 92
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    mul-int/lit8 v6, v1, 0x19

    add-int/lit8 v6, v6, 0x19

    invoke-virtual {v5, v6}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->increaseScore(I)V

    .line 95
    .end local v3    # "h":Lde/fgerbig/spacepeng/components/Health;
    :cond_0
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    .line 96
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, p2}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    .line 97
    .local v0, "alienPos":Lde/fgerbig/spacepeng/components/Position;
    if-eqz v2, :cond_3

    .line 98
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    mul-int/lit8 v6, v1, 0x32

    add-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->increaseScore(I)V

    .line 99
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-static {v5}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$000(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v5

    iget v6, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v7, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v5, v6, v7}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienBossExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 104
    :goto_1
    invoke-virtual {p2}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 105
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v6, "checkIsLevelCLear"

    invoke-interface {v5, v6, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .end local v0    # "alienPos":Lde/fgerbig/spacepeng/components/Position;
    :cond_1
    :goto_2
    return-void

    .line 84
    .end local v1    # "bonusForAlienIsAttacking":I
    .end local v2    # "boss":Z
    .end local v4    # "health":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    .restart local v0    # "alienPos":Lde/fgerbig/spacepeng/components/Position;
    .restart local v1    # "bonusForAlienIsAttacking":I
    .restart local v2    # "boss":Z
    .restart local v4    # "health":F
    :cond_3
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    mul-int/lit8 v6, v1, 0x19

    add-int/lit8 v6, v6, 0x19

    invoke-virtual {v5, v6}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->increaseScore(I)V

    .line 102
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-static {v5}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$100(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v5

    iget v6, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v7, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v5, v6, v7}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienExplosion(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    goto :goto_1

    .line 108
    .end local v0    # "alienPos":Lde/fgerbig/spacepeng/components/Position;
    :cond_4
    if-eqz v2, :cond_1

    .line 109
    sget-object v5, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v6, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_BOSS_HIT:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v5, v6}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    goto :goto_2
.end method
