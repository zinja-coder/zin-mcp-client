.class public Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "SpriteDrawable.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;


# instance fields
.field private sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 39
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 43
    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, p4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v5, p5, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V

    .line 44
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 4
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .prologue
    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, p10}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, p8, p9}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, p2, p3, p6, p7}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    .line 52
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 53
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 55
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    return-void
.end method

.method public getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    return-object v0
.end method

.method public setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 60
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setMinWidth(F)V

    .line 61
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setMinHeight(F)V

    .line 62
    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
    .locals 4
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 70
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V

    .line 71
    .local v0, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v1

    .line 72
    .local v1, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    instance-of v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    if-eqz v3, :cond_0

    .line 73
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    .end local v1    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;)V

    .local v2, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    move-object v1, v2

    .line 76
    .end local v2    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v1    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 78
    return-object v0

    .line 75
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .end local v1    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v2    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    move-object v1, v2

    .end local v2    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v1    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    goto :goto_0
.end method
