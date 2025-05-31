.class public Lde/fgerbig/spacepeng/systems/HudRenderSystem;
.super Lcom/artemis/systems/VoidEntitySystem;
.source "HudRenderSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/systems/HudRenderSystem$1;,
        Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;
    }
.end annotation


# instance fields
.field private batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field protected ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

.field private font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public overlay:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

.field overlay_game_over:Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field overlay_level_done:Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field overlay_ready:Lcom/badlogic/gdx/graphics/g2d/Sprite;

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

.field private profile:Lde/fgerbig/spacepeng/services/Profile;

.field private regions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;",
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

.field private textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 1
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p3, "textureAtlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p4, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p5, "levelFont"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/artemis/systems/VoidEntitySystem;-><init>()V

    .line 69
    sget-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->NONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 76
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 77
    iput-object p2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 78
    iput-object p3, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 79
    iput-object p4, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 80
    iput-object p5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 81
    return-void
.end method


# virtual methods
.method protected drawQuarterCentered(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "heading"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "column"    # I

    .prologue
    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 107
    mul-int/lit16 v3, p4, 0x320

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v4, v6, v4

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 108
    .local v1, "x":F
    const/high16 v2, 0x43f00000    # 480.0f

    .line 109
    .local v2, "y":F
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 111
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "s":Ljava/lang/String;
    mul-int/lit16 v3, p4, 0x320

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v4, v6, v4

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 113
    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v2, v3

    .line 114
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 115
    return-void
.end method

.method protected initialize()V
    .locals 7

    .prologue
    const/high16 v6, 0x43c80000    # 400.0f

    const/high16 v5, 0x43700000    # 240.0f

    .line 85
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->world:Lcom/artemis/World;

    const-class v3, Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-virtual {v2, v3}, Lcom/artemis/World;->getSystem(Ljava/lang/Class;)Lcom/artemis/EntitySystem;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iput-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    .line 86
    sget-object v2, Lde/fgerbig/spacepeng/SpacePeng;->profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/services/ProfileManager;->retrieveProfile()Lde/fgerbig/spacepeng/services/Profile;

    move-result-object v2

    iput-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->profile:Lde/fgerbig/spacepeng/services/Profile;

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->regions:Ljava/util/HashMap;

    .line 89
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 90
    .local v1, "r":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->regions:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    .end local v1    # "r":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string v4, "ready"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_ready:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 94
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_ready:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setCenter(FF)V

    .line 96
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string v4, "leveldone"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_level_done:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 97
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_level_done:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setCenter(FF)V

    .line 99
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string v4, "gameover"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_game_over:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 100
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_game_over:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setCenter(FF)V

    .line 102
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setUseIntegerPositions(Z)V

    .line 103
    return-void
.end method

.method protected processSystem()V
    .locals 13

    .prologue
    const/high16 v12, 0x42200000    # 40.0f

    const/high16 v11, 0x44480000    # 800.0f

    const/high16 v10, 0x43f00000    # 480.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 122
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->world:Lcom/artemis/World;

    const-class v6, Lcom/artemis/managers/TagManager;

    invoke-virtual {v5, v6}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v5

    check-cast v5, Lcom/artemis/managers/TagManager;

    const-string v6, "player"

    invoke-virtual {v5, v6}, Lcom/artemis/managers/TagManager;->getEntity(Ljava/lang/String;)Lcom/artemis/Entity;

    move-result-object v1

    .line 123
    .local v1, "playerEntity":Lcom/artemis/Entity;
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->ply_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, v1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Player;

    .line 125
    .local v0, "player":Lde/fgerbig/spacepeng/components/Player;
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-string v6, "Lives"

    iget v7, v0, Lde/fgerbig/spacepeng/components/Player;->lives:I

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->drawQuarterCentered(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 126
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-string v6, "SCORE"

    iget v7, v0, Lde/fgerbig/spacepeng/components/Player;->score:I

    const/4 v8, 0x1

    invoke-virtual {p0, v5, v6, v7, v8}, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->drawQuarterCentered(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 127
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-string v6, "HIGH SCORE"

    iget-object v7, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v7}, Lde/fgerbig/spacepeng/services/Profile;->getHighScore()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {p0, v5, v6, v7, v8}, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->drawQuarterCentered(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 128
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-string v6, "LEVEL"

    iget-object v7, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-virtual {v7}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->getLevel()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {p0, v5, v6, v7, v8}, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->drawQuarterCentered(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 130
    sget-object v5, Lde/fgerbig/spacepeng/systems/HudRenderSystem$1;->$SwitchMap$de$fgerbig$spacepeng$systems$HudRenderSystem$Overlay:[I

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    invoke-virtual {v6}, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 132
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->ds:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-virtual {v6}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->getLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "s":Ljava/lang/String;
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v5, v11, v5

    div-float v3, v5, v9

    .line 134
    .local v3, "x":F
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v5, v10

    div-float v4, v5, v9

    .line 135
    .local v4, "y":F
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    goto :goto_0

    .line 139
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    const-string v2, "New"

    .line 140
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v5, v11, v5

    div-float v3, v5, v9

    .line 141
    .restart local v3    # "x":F
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v5, v10

    div-float/2addr v5, v9

    add-float v4, v5, v12

    .line 142
    .restart local v4    # "y":F
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 143
    const-string v2, "HighScore"

    .line 144
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v5, v11, v5

    div-float v3, v5, v9

    .line 145
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v5, v10

    div-float/2addr v5, v9

    sub-float v4, v5, v12

    .line 146
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->levelFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    goto :goto_0

    .line 150
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_ready:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto/16 :goto_0

    .line 154
    :pswitch_3
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_level_done:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto/16 :goto_0

    .line 158
    :pswitch_4
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay_game_over:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v6, p0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
