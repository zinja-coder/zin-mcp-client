.class public Lde/fgerbig/spacepeng/screens/GameScreen;
.super Ljava/lang/Object;
.source "GameScreen.java"

# interfaces
.implements Lcom/badlogic/gdx/Screen;


# instance fields
.field protected final LIVES:I

.field private boundsRenderSystem:Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;

.field protected ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

.field protected eventManager:Lde/fgerbig/spacepeng/events/EventManager;

.field game:Lde/fgerbig/spacepeng/SpacePeng;

.field private healthRenderSystem:Lde/fgerbig/spacepeng/systems/HealthRenderSystem;

.field private hudRenderSystem:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

.field private playerInputSystem:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

.field private spriteRenderSystem:Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

.field private world:Lcom/artemis/World;


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/SpacePeng;)V
    .locals 12
    .param p1, "game"    # Lde/fgerbig/spacepeng/SpacePeng;

    .prologue
    const/4 v11, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->LIVES:I

    .line 58
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    .line 60
    new-instance v0, Lde/fgerbig/spacepeng/events/EventManagerImpl;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/events/EventManagerImpl;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    .line 62
    new-instance v0, Lcom/artemis/World;

    invoke-direct {v0}, Lcom/artemis/World;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    .line 64
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lcom/artemis/managers/GroupManager;

    invoke-direct {v1}, Lcom/artemis/managers/GroupManager;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setManager(Lcom/artemis/Manager;)Lcom/artemis/Manager;

    .line 65
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lcom/artemis/managers/TagManager;

    invoke-direct {v1}, Lcom/artemis/managers/TagManager;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setManager(Lcom/artemis/Manager;)Lcom/artemis/Manager;

    .line 67
    new-instance v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    invoke-direct {v0, v1}, Lde/fgerbig/spacepeng/systems/DirectorSystem;-><init>(Lde/fgerbig/spacepeng/events/EventManager;)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    .line 68
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 70
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/ExpiringEntitySystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/ExpiringEntitySystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 71
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/ExpiringComponentSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/ExpiringComponentSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 72
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/ColorAnimationSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/ColorAnimationSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 73
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/ScaleAnimationSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/ScaleAnimationSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 75
    new-instance v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getCamera()Lcom/badlogic/gdx/graphics/OrthographicCamera;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;-><init>(Lde/fgerbig/spacepeng/events/EventManager;Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/utils/viewport/Viewport;)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->playerInputSystem:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    .line 76
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->playerInputSystem:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 78
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 79
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/CoinSpawningSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 81
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/VelocityMovementSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/VelocityMovementSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 82
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/PathMovementSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/PathMovementSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 83
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 84
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/OffScreenRemoveSystem;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/systems/OffScreenRemoveSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 86
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    invoke-direct {v1, v2}, Lde/fgerbig/spacepeng/systems/CollisionSystem;-><init>(Lde/fgerbig/spacepeng/events/EventManager;)V

    invoke-virtual {v0, v1}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;)Lcom/artemis/EntitySystem;

    .line 88
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getCamera()Lcom/badlogic/gdx/graphics/OrthographicCamera;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v3

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v4

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    invoke-virtual {v0, v1, v11}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;Z)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->spriteRenderSystem:Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

    .line 89
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getCamera()Lcom/badlogic/gdx/graphics/OrthographicCamera;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v3

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v4

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSmallFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    invoke-virtual {v0, v1, v11}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;Z)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->healthRenderSystem:Lde/fgerbig/spacepeng/systems/HealthRenderSystem;

    .line 90
    iget-object v10, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getCamera()Lcom/badlogic/gdx/graphics/OrthographicCamera;

    move-result-object v1

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSmallFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v4

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getLargeFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lde/fgerbig/spacepeng/systems/HudRenderSystem;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    invoke-virtual {v10, v0, v11}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;Z)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->hudRenderSystem:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    .line 91
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    new-instance v1, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getCamera()Lcom/badlogic/gdx/graphics/OrthographicCamera;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {v0, v1, v11}, Lcom/artemis/World;->setSystem(Lcom/artemis/EntitySystem;Z)Lcom/artemis/EntitySystem;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->boundsRenderSystem:Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;

    .line 93
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->initialize()V

    .line 95
    new-instance v8, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;

    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    invoke-direct {v8, v0}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;-><init>(Lde/fgerbig/spacepeng/events/EventManager;)V

    .line 97
    .local v8, "registrator":Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getManagers()Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    invoke-interface {v0}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/artemis/Manager;

    .line 98
    .local v7, "manager":Lcom/artemis/Manager;
    invoke-virtual {v8, v7}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->registerEventListeners(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    .end local v7    # "manager":Lcom/artemis/Manager;
    :cond_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->getSystems()Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    invoke-interface {v0}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/artemis/EntitySystem;

    .line 102
    .local v9, "system":Lcom/artemis/EntitySystem;
    invoke-virtual {v8, v9}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->registerEventListeners(Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    .end local v9    # "system":Lcom/artemis/EntitySystem;
    :cond_1
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    const-string v1, "background"

    invoke-static {v0, v1}, Lde/fgerbig/spacepeng/services/EntityFactory;->createBackground(Lcom/artemis/World;Ljava/lang/String;)Lcom/artemis/Entity;

    .line 107
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    invoke-static {v0}, Lde/fgerbig/spacepeng/services/EntityFactory;->createPlayer(Lcom/artemis/World;)Lcom/artemis/Entity;

    .line 109
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setup()V

    .line 110
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 177
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disposing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/GameScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    invoke-virtual {v0}, Lcom/artemis/World;->dispose()V

    .line 185
    :cond_0
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 159
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hiding screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/GameScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/GameScreen;->dispose()V

    .line 163
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 167
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/GameScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public render(F)V
    .locals 5
    .param p1, "delta"    # F

    .prologue
    .line 119
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x83

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SpacePeng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ESCAPE press detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/GameScreen;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    new-instance v2, Lde/fgerbig/spacepeng/screens/MenuScreen;

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-direct {v2, v3}, Lde/fgerbig/spacepeng/screens/MenuScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/SpacePeng;->setScreen(Lcom/badlogic/gdx/Screen;)V

    .line 124
    :cond_0
    invoke-static {}, Lde/fgerbig/spacepeng/SpacePeng;->glClear()V

    .line 126
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/SpacePeng;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v0

    .line 127
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 129
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    invoke-virtual {v1, p1}, Lcom/artemis/World;->setDelta(F)V

    .line 130
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->process()V

    .line 132
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->spriteRenderSystem:Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->process()V

    .line 133
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->healthRenderSystem:Lde/fgerbig/spacepeng/systems/HealthRenderSystem;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->process()V

    .line 134
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->hudRenderSystem:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->process()V

    .line 136
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 138
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    invoke-interface {v1}, Lde/fgerbig/spacepeng/events/EventManager;->process()V

    .line 142
    return-void
.end method

.method public resize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resizing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/GameScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/GameScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(II)V

    .line 148
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/GameScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    sget-object v1, Lde/fgerbig/spacepeng/assets/MusicKey;->GAME:Lde/fgerbig/spacepeng/assets/MusicKey;

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/services/MusicManager;->play(Lde/fgerbig/spacepeng/assets/MusicKey;)V

    .line 155
    return-void
.end method
