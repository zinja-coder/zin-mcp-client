.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "TextureRegionDrawable.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;


# instance fields
.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 41
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 6
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 45
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 46
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 11
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
    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 51
    return-void
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 55
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setMinWidth(F)V

    .line 56
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setMinHeight(F)V

    .line 57
    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
    .locals 2
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    instance-of v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    .line 70
    .local v0, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 71
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-object v1

    .line 69
    .end local v0    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .restart local v0    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    goto :goto_0
.end method
