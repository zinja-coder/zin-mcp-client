.class public Lde/fgerbig/spacepeng/systems/DirectorSystem;
.super Lcom/artemis/systems/VoidEntitySystem;
.source "DirectorSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
    }
.end annotation


# instance fields
.field alienBehaviour:Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

.field eventManager:Lde/fgerbig/spacepeng/events/EventManager;

.field hud:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

.field input:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

.field inv_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Invisible;",
            ">;"
        }
    .end annotation
.end field

.field protected level:I

.field player:Lde/fgerbig/spacepeng/components/Player;

.field playerEntity:Lcom/artemis/Entity;

.field playerPos:Lde/fgerbig/spacepeng/components/Position;

.field playerVlc:Lde/fgerbig/spacepeng/components/Velocity;

.field ply_cm:Lcom/artemis/ComponentMapper;
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

.field profile:Lde/fgerbig/spacepeng/services/Profile;

.field queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;",
            ">;"
        }
    .end annotation
.end field

.field vlc_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Velocity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/events/EventManager;)V
    .locals 1
    .param p1, "eventManager"    # Lde/fgerbig/spacepeng/events/EventManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/artemis/systems/VoidEntitySystem;-><init>()V

    .line 85
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    .line 87
    return-void
.end method


# virtual methods
.method public checkIsLevelClear(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 5
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;
    .annotation runtime Lde/fgerbig/spacepeng/events/reflection/Handles;
        ids = {
            "checkIsLevelCLear"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 348
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    sget-object v2, Lde/fgerbig/spacepeng/components/Player$State;->DEAD:Lde/fgerbig/spacepeng/components/Player$State;

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/components/Player;->isState(Lde/fgerbig/spacepeng/components/Player$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const-class v2, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v1, v2}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v1

    check-cast v1, Lcom/artemis/managers/GroupManager;

    const-string v2, "aliens"

    invoke-virtual {v1, v2}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    .line 353
    .local v0, "aliens":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<Lcom/artemis/Entity;>;"
    invoke-interface {v0}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setPlayerUncollidable()V

    .line 356
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v2, "disableAction"

    invoke-interface {v1, v2, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->input:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    const/high16 v2, 0x40900000    # 4.5f

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->setFireBlockedForSeconds(F)V

    .line 359
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 360
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$9;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, p0, v3}, Lde/fgerbig/spacepeng/systems/DirectorSystem$9;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$10;

    invoke-direct {v2, p0, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem$10;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$11;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, p0, v3}, Lde/fgerbig/spacepeng/systems/DirectorSystem$11;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$12;

    invoke-direct {v2, p0, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem$12;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public continueEvent(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 2
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;
    .annotation runtime Lde/fgerbig/spacepeng/events/reflection/Handles;
        ids = {
            "continue"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;

    .line 230
    .local v0, "queueEvent":Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
    const/4 v1, 0x0

    iput v1, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;->delay:F

    .line 232
    .end local v0    # "queueEvent":Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
    :cond_0
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->level:I

    return v0
.end method

.method public increaseScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    iget v1, v0, Lde/fgerbig/spacepeng/components/Player;->score:I

    add-int/2addr v1, p1

    iput v1, v0, Lde/fgerbig/spacepeng/components/Player;->score:I

    .line 256
    return-void
.end method

.method public playerKilled(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 5
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;
    .annotation runtime Lde/fgerbig/spacepeng/events/reflection/Handles;
        ids = {
            "playerKilled"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 264
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->input:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->setFireBlockedForSeconds(F)V

    .line 265
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setPlayerInvisible()V

    .line 266
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setPlayerUncollidable()V

    .line 267
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    iget v2, v1, Lde/fgerbig/spacepeng/components/Player;->lives:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lde/fgerbig/spacepeng/components/Player;->lives:I

    .line 270
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v2, "disableAction"

    invoke-interface {v1, v2, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    iget v1, v1, Lde/fgerbig/spacepeng/components/Player;->lives:I

    if-lez v1, :cond_0

    .line 274
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    sget-object v2, Lde/fgerbig/spacepeng/components/Player$State;->RESPAWNING:Lde/fgerbig/spacepeng/components/Player$State;

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/components/Player;->setState(Lde/fgerbig/spacepeng/components/Player$State;)V

    .line 275
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v2, "checkIsLevelCLear"

    invoke-interface {v1, v2, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 278
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$3;

    invoke-direct {v2, p0, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem$3;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, p0, v3}, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    sget-object v2, Lde/fgerbig/spacepeng/components/Player$State;->DEAD:Lde/fgerbig/spacepeng/components/Player$State;

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/components/Player;->setState(Lde/fgerbig/spacepeng/components/Player$State;)V

    .line 299
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 301
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/services/ProfileManager;->retrieveProfile()Lde/fgerbig/spacepeng/services/Profile;

    move-result-object v0

    .line 304
    .local v0, "profile":Lde/fgerbig/spacepeng/services/Profile;
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    iget v1, v1, Lde/fgerbig/spacepeng/components/Player;->score:I

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/services/Profile;->getHighScore()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 305
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    iget v1, v1, Lde/fgerbig/spacepeng/components/Player;->score:I

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/services/Profile;->setHighScore(I)V

    .line 307
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$5;

    invoke-direct {v2, p0, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem$5;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$6;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, p0, v3}, Lde/fgerbig/spacepeng/systems/DirectorSystem$6;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    iget v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->level:I

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/services/Profile;->getLastPlayedLevel()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 323
    iget v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->level:I

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/services/Profile;->setLastPlayedLevel(I)V

    .line 327
    :cond_2
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$7;

    invoke-direct {v2, p0, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem$7;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v2, Lde/fgerbig/spacepeng/systems/DirectorSystem$8;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v2, p0, v3}, Lde/fgerbig/spacepeng/systems/DirectorSystem$8;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected processSystem()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->profile:Lde/fgerbig/spacepeng/services/Profile;

    iget v2, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->level:I

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/services/Profile;->setLastPlayedLevel(I)V

    .line 214
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->profile:Lde/fgerbig/spacepeng/services/Profile;

    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    iget v2, v2, Lde/fgerbig/spacepeng/components/Player;->score:I

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/services/Profile;->setIfNewHighScore(I)Z

    .line 216
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;

    .line 218
    .local v0, "queueEvent":Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
    iget v1, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;->delay:F

    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    iget v2, v2, Lcom/artemis/World;->delta:F

    sub-float/2addr v1, v2

    iput v1, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;->delay:F

    .line 219
    iget v1, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;->delay:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 220
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 221
    invoke-virtual {v0}, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;->run()V

    .line 224
    .end local v0    # "queueEvent":Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
    :cond_0
    return-void
.end method

.method protected setPlayerCollidable()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const-class v2, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v1, v2}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/GroupManager;

    .line 251
    .local v0, "gm":Lcom/artemis/managers/GroupManager;
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    const-string v2, "player"

    invoke-virtual {v0, v1, v2}, Lcom/artemis/managers/GroupManager;->add(Lcom/artemis/Entity;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method protected setPlayerInvisible()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    new-instance v1, Lde/fgerbig/spacepeng/components/Invisible;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/components/Invisible;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 242
    return-void
.end method

.method protected setPlayerUncollidable()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const-class v2, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v1, v2}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/GroupManager;

    .line 246
    .local v0, "gm":Lcom/artemis/managers/GroupManager;
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/managers/GroupManager;->removeFromAllGroups(Lcom/artemis/Entity;)V

    .line 247
    return-void
.end method

.method protected setPlayerVisible()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->inv_cm:Lcom/artemis/ComponentMapper;

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    const-class v1, Lde/fgerbig/spacepeng/components/Invisible;

    invoke-virtual {v0, v1}, Lcom/artemis/EntityEdit;->remove(Ljava/lang/Class;)Lcom/artemis/EntityEdit;

    .line 238
    :cond_0
    return-void
.end method

.method public setup()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const-class v1, Lcom/artemis/managers/TagManager;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/TagManager;

    const-string v1, "player"

    invoke-virtual {v0, v1}, Lcom/artemis/managers/TagManager;->getEntity(Ljava/lang/String;)Lcom/artemis/Entity;

    move-result-object v0

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    .line 91
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->ply_cm:Lcom/artemis/ComponentMapper;

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Player;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    .line 92
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/services/ProfileManager;->retrieveProfile()Lde/fgerbig/spacepeng/services/Profile;

    move-result-object v0

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->profile:Lde/fgerbig/spacepeng/services/Profile;

    .line 94
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerPos:Lde/fgerbig/spacepeng/components/Position;

    .line 95
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->vlc_cm:Lcom/artemis/ComponentMapper;

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerEntity:Lcom/artemis/Entity;

    invoke-virtual {v0, v1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Velocity;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerVlc:Lde/fgerbig/spacepeng/components/Velocity;

    .line 97
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const-class v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getSystem(Ljava/lang/Class;)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->hud:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    .line 98
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const-class v1, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getSystem(Ljava/lang/Class;)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->input:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    .line 99
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const-class v1, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getSystem(Ljava/lang/Class;)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->alienBehaviour:Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

    .line 101
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/services/Profile;->getLastPlayedLevel()I

    move-result v0

    iput v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->level:I

    .line 102
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->input:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->setFireBlockedForSeconds(F)V

    .line 103
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupPlayer()V

    .line 104
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setPlayerUncollidable()V

    .line 105
    iget v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->level:I

    invoke-virtual {p0, v0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupLevel(I)V

    .line 106
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v1, "disableAction"

    invoke-interface {v0, v1, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 109
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v1, Lde/fgerbig/spacepeng/systems/DirectorSystem$1;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, p0, v2}, Lde/fgerbig/spacepeng/systems/DirectorSystem$1;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->queue:Ljava/util/Queue;

    new-instance v1, Lde/fgerbig/spacepeng/systems/DirectorSystem$2;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, p0, v2}, Lde/fgerbig/spacepeng/systems/DirectorSystem$2;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method protected setupAliens(IIII)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/16 v8, 0xa

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, "aliens":I
    const/16 v1, 0x3c

    .line 192
    .local v1, "dx":I
    const/16 v2, 0x3c

    .line 194
    .local v2, "dy":I
    const/4 v6, 0x4

    new-array v3, v6, [[I

    const/4 v6, 0x0

    new-array v7, v8, [I

    fill-array-data v7, :array_0

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-array v7, v8, [I

    fill-array-data v7, :array_1

    aput-object v7, v3, v6

    const/4 v6, 0x2

    new-array v7, v8, [I

    fill-array-data v7, :array_2

    aput-object v7, v3, v6

    const/4 v6, 0x3

    new-array v7, v8, [I

    fill-array-data v7, :array_3

    aput-object v7, v3, v6

    .line 200
    .local v3, "groupId":[[I
    move v4, p1

    .local v4, "ix":I
    :goto_0
    add-int v6, p1, p3

    if-ge v4, v6, :cond_1

    .line 201
    move v5, p2

    .local v5, "iy":I
    :goto_1
    add-int v6, p2, p4

    if-ge v5, v6, :cond_0

    .line 202
    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    mul-int/lit8 v7, v4, 0x3c

    add-int/lit16 v7, v7, 0x82

    int-to-float v7, v7

    mul-int/lit8 v8, v5, 0x3c

    rsub-int v8, v8, 0x186

    int-to-float v8, v8

    aget-object v9, v3, v5

    aget v9, v9, v4

    invoke-static {v6, v7, v8, v9}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlien(Lcom/artemis/World;FFI)Lcom/artemis/Entity;

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 200
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v5    # "iy":I
    :cond_1
    return v0

    .line 194
    :array_0
    .array-data 4
        0x9
        0x1
        0x9
        0x7
        0x7
        0x8
        0x8
        0xa
        0x2
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x5
        0x7
        0x8
        0x6
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x9
        0x3
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x4
        0xa
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x3
        0x3
        0xc
        0xb
        0xb
        0xc
        0x4
        0x4
        0x4
    .end array-data
.end method

.method protected setupLevel(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    const/high16 v6, 0x43a00000    # 320.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/16 v2, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 139
    const/4 v0, 0x0

    .line 142
    .local v0, "alienCount":I
    rem-int/lit8 v1, p1, 0xa

    packed-switch v1, :pswitch_data_0

    .line 185
    :goto_0
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->alienBehaviour:Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

    invoke-virtual {v1, p1, v0}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->setLevelParameters(II)V

    .line 186
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p0, v3, v3, v2, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {p0, v3, v3, v2, v1}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const/high16 v2, 0x43c80000    # 400.0f

    const-string v3, "bossAttack"

    invoke-static {v1, v2, v6, v5, v3}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienBoss(Lcom/artemis/World;FFFLjava/lang/String;)Lcom/artemis/Entity;

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_3
    invoke-virtual {p0, v3, v3, v2, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    goto :goto_0

    .line 157
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p0, v3, v3, v2, v1}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    goto :goto_0

    .line 160
    :pswitch_5
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v4, v2}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v4, v3}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const/high16 v2, 0x43c80000    # 400.0f

    const-string v3, "bossAttack"

    invoke-static {v1, v2, v6, v5, v3}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienBoss(Lcom/artemis/World;FFFLjava/lang/String;)Lcom/artemis/Entity;

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 164
    goto :goto_0

    .line 166
    :pswitch_6
    invoke-virtual {p0, v3, v3, v2, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    goto :goto_0

    .line 169
    :pswitch_7
    const/4 v1, 0x4

    invoke-virtual {p0, v3, v3, v2, v1}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    goto :goto_0

    .line 172
    :pswitch_8
    invoke-virtual {p0, v3, v3, v4, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v3, v4, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const/high16 v2, 0x43c80000    # 400.0f

    const-string v3, "bossAttack"

    invoke-static {v1, v2, v6, v5, v3}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienBoss(Lcom/artemis/World;FFFLjava/lang/String;)Lcom/artemis/Entity;

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    goto :goto_0

    .line 178
    :pswitch_9
    const/4 v1, 0x4

    invoke-virtual {p0, v4, v3, v1, v4}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupAliens(IIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const/high16 v2, 0x43480000    # 200.0f

    const-string v3, "twoBossesAttack"

    invoke-static {v1, v2, v6, v5, v3}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienBoss(Lcom/artemis/World;FFFLjava/lang/String;)Lcom/artemis/Entity;

    .line 180
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->world:Lcom/artemis/World;

    const/high16 v2, 0x44160000    # 600.0f

    const-string v3, "twoBossesAttack"

    invoke-static {v1, v2, v6, v5, v3}, Lde/fgerbig/spacepeng/services/EntityFactory;->createAlienBoss(Lcom/artemis/World;FFFLjava/lang/String;)Lcom/artemis/Entity;

    .line 181
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected setupPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerPos:Lde/fgerbig/spacepeng/components/Position;

    const/high16 v1, 0x43c80000    # 400.0f

    iput v1, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 131
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerPos:Lde/fgerbig/spacepeng/components/Position;

    const/high16 v1, 0x42400000    # 48.0f

    iput v1, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 132
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerVlc:Lde/fgerbig/spacepeng/components/Velocity;

    iput v2, v0, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    .line 133
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerVlc:Lde/fgerbig/spacepeng/components/Velocity;

    iput v2, v0, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    .line 134
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setPlayerVisible()V

    .line 135
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setPlayerCollidable()V

    .line 136
    return-void
.end method
