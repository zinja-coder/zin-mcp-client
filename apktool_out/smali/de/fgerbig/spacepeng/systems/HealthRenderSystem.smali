.class public Lde/fgerbig/spacepeng/systems/HealthRenderSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "HealthRenderSystem.java"


# instance fields
.field private batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field private font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

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
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/Position;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Health;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 50
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 51
    iput-object p2, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 52
    iput-object p3, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 53
    iput-object p4, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 54
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setUseIntegerPositions(Z)V

    .line 59
    return-void
.end method

.method protected process(Lcom/artemis/Entity;)V
    .locals 12
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 63
    iget-object v9, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v9, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/components/Position;

    .line 64
    .local v2, "position":Lde/fgerbig/spacepeng/components/Position;
    iget-object v9, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->hlth_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v9, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Health;

    .line 66
    .local v0, "health":Lde/fgerbig/spacepeng/components/Health;
    iget v9, v0, Lde/fgerbig/spacepeng/components/Health;->health:F

    iget v10, v0, Lde/fgerbig/spacepeng/components/Health;->maximumHealth:F

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    .line 68
    .local v1, "percentage":I
    const/4 v6, 0x0

    .line 70
    .local v6, "sy":F
    iget-object v9, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v9, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 71
    iget-object v9, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v9, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v5

    check-cast v5, Lde/fgerbig/spacepeng/components/Sprite;

    .line 72
    .local v5, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    iget-object v9, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    iget-object v10, v5, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    .line 73
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v9

    int-to-float v6, v9

    .line 76
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v5    # "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "s":Ljava/lang/String;
    iget v9, v2, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget-object v10, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v10

    iget v10, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    div-float/2addr v10, v11

    sub-float v7, v9, v10

    .line 78
    .local v7, "x":F
    iget v9, v2, Lde/fgerbig/spacepeng/components/Position;->y:F

    mul-float v10, v6, v11

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    add-float v8, v9, v10

    .line 79
    .local v8, "y":F
    iget-object v9, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v10, p0, Lde/fgerbig/spacepeng/systems/HealthRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v9, v10, v4, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 80
    return-void
.end method
