.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.source "TiledDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 30
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 40
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    .local v4, "regionWidth":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    .line 41
    .local v5, "regionHeight":F
    rem-float v10, p4, v4

    .local v10, "remainingX":F
    rem-float v21, p5, v5

    .line 42
    .local v21, "remainingY":F
    move/from16 v28, p2

    .local v28, "startX":F
    move/from16 v29, p3

    .line 43
    .local v29, "startY":F
    add-float v0, p2, p4

    sub-float v26, v0, v10

    .local v26, "endX":F
    add-float v0, p3, p5

    sub-float v27, v0, v21

    .line 44
    .local v27, "endY":F
    :goto_0
    cmpg-float v0, p2, v26

    if-gez v0, :cond_1

    .line 45
    move/from16 p3, v29

    .line 46
    :goto_1
    cmpg-float v0, p3, v27

    if-gez v0, :cond_0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 47
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 48
    add-float p3, p3, v5

    goto :goto_1

    .line 50
    :cond_0
    add-float p2, p2, v4

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    .line 53
    .local v7, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v12

    .line 54
    .local v12, "u":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v13

    .line 55
    .local v13, "v2":F
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_3

    .line 57
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v10, v0

    add-float v14, v12, v0

    .line 58
    .local v14, "u2":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v15

    .line 59
    .local v15, "v":F
    move/from16 p3, v29

    .line 60
    :goto_2
    cmpg-float v0, p3, v27

    if-gez v0, :cond_2

    move-object/from16 v6, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move v11, v5

    .line 61
    invoke-interface/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 62
    add-float p3, p3, v5

    goto :goto_2

    .line 65
    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, v21, v0

    if-lez v0, :cond_3

    .line 66
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v21, v0

    sub-float v15, v13, v0

    move-object/from16 v6, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, v21

    .line 67
    invoke-interface/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 70
    .end local v14    # "u2":F
    .end local v15    # "v":F
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v21, v0

    if-lez v0, :cond_4

    .line 72
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v14

    .line 73
    .restart local v14    # "u2":F
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v21, v0

    sub-float v15, v13, v0

    .line 74
    .restart local v15    # "v":F
    move/from16 p2, v28

    .line 75
    :goto_3
    cmpg-float v0, p2, v26

    if-gez v0, :cond_4

    move-object/from16 v16, p1

    move-object/from16 v17, v7

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, v4

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 76
    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 77
    add-float p2, p2, v4

    goto :goto_3

    .line 80
    .end local v14    # "u2":F
    .end local v15    # "v":F
    :cond_4
    return-void
.end method
