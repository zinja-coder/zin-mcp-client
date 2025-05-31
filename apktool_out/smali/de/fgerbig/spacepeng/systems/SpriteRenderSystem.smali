.class public Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;
.super Lcom/artemis/EntitySystem;
.source "SpriteRenderSystem.java"


# instance fields
.field anim_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/AnimationParameters;",
            ">;"
        }
    .end annotation
.end field

.field private animations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array",
            "<+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;>;"
        }
    .end annotation
.end field

.field private batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field private font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

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

.field private sortedEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/artemis/Entity;",
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
.method public constructor <init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 3
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p3, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p4, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/Position;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Sprite;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/EntitySystem;-><init>(Lcom/artemis/Aspect;)V

    .line 60
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 61
    iput-object p2, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 62
    iput-object p3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 63
    iput-object p4, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 64
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 7

    .prologue
    .line 68
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->regions:Ljava/util/HashMap;

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->animations:Ljava/util/HashMap;

    .line 71
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 74
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->regions:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "SpacePeng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added texture atlas region \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->regions:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->animations:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 84
    .local v0, "animationRegions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;>;"
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 86
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "SpacePeng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added animation \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " texture atlas regions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->animations:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 93
    .end local v0    # "animationRegions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;>;"
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->sortedEntities:Ljava/util/List;

    .line 94
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setUseIntegerPositions(Z)V

    .line 95
    return-void
.end method

.method protected inserted(Lcom/artemis/Entity;)V
    .locals 2
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 130
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->sortedEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->sortedEntities:Ljava/util/List;

    new-instance v1, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem$1;

    invoke-direct {v1, p0}, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem$1;-><init>(Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    return-void
.end method

.method protected process(Lcom/artemis/Entity;)V
    .locals 16
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->inv_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v14

    check-cast v14, Lde/fgerbig/spacepeng/components/Position;

    .line 110
    .local v14, "position":Lde/fgerbig/spacepeng/components/Position;
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v15

    check-cast v15, Lde/fgerbig/spacepeng/components/Sprite;

    .line 112
    .local v15, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->regions:Ljava/util/HashMap;

    iget-object v5, v15, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 113
    .local v2, "spriteRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget v5, v15, Lde/fgerbig/spacepeng/components/Sprite;->r:F

    iget v6, v15, Lde/fgerbig/spacepeng/components/Sprite;->g:F

    iget v7, v15, Lde/fgerbig/spacepeng/components/Sprite;->b:F

    iget v8, v15, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->anim_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->animations:Ljava/util/HashMap;

    iget-object v5, v15, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->anim_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v13

    check-cast v13, Lde/fgerbig/spacepeng/components/AnimationParameters;

    .line 118
    .local v13, "ap":Lde/fgerbig/spacepeng/components/AnimationParameters;
    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/Animation;

    iget v5, v13, Lde/fgerbig/spacepeng/components/AnimationParameters;->frameDuration:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->animations:Ljava/util/HashMap;

    iget-object v6, v15, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v13, Lde/fgerbig/spacepeng/components/AnimationParameters;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    invoke-direct {v12, v5, v1, v6}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V

    .line 119
    .local v12, "animation":Lcom/badlogic/gdx/graphics/g2d/Animation;
    iget v1, v13, Lde/fgerbig/spacepeng/components/AnimationParameters;->stateTime:F

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(F)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 120
    iget v1, v13, Lde/fgerbig/spacepeng/components/AnimationParameters;->stateTime:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->world:Lcom/artemis/World;

    invoke-virtual {v5}, Lcom/artemis/World;->getDelta()F

    move-result v5

    add-float/2addr v1, v5

    iput v1, v13, Lde/fgerbig/spacepeng/components/AnimationParameters;->stateTime:F

    .line 123
    .end local v12    # "animation":Lcom/badlogic/gdx/graphics/g2d/Animation;
    .end local v13    # "ap":Lde/fgerbig/spacepeng/components/AnimationParameters;
    :cond_1
    iget v1, v14, Lde/fgerbig/spacepeng/components/Position;->x:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v15, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    mul-float/2addr v5, v6

    sub-float v3, v1, v5

    .line 124
    .local v3, "posX":F
    iget v1, v14, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v15, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    mul-float/2addr v5, v6

    sub-float v4, v1, v5

    .line 125
    .local v4, "posY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v15, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    iget v10, v15, Lde/fgerbig/spacepeng/components/Sprite;->scaleY:F

    iget v11, v15, Lde/fgerbig/spacepeng/components/Sprite;->rotation:F

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_0
.end method

.method protected processEntities(Lcom/artemis/utils/IntBag;)V
    .locals 2
    .param p1, "entities"    # Lcom/artemis/utils/IntBag;

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->sortedEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 100
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->sortedEntities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/Entity;

    invoke-virtual {p0, v1}, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->process(Lcom/artemis/Entity;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method protected removed(Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 147
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->sortedEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
