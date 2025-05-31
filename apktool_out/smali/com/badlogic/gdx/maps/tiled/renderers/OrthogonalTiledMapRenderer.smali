.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "OrthogonalTiledMapRenderer.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 56
    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 43
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    .line 69
    .local v5, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v38, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v39, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v40, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v42

    mul-float v41, v41, v42

    invoke-static/range {v38 .. v41}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v10

    .line 71
    .local v10, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v16

    .line 72
    .local v16, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v13

    .line 74
    .local v13, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v15, v38, v39

    .line 75
    .local v15, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v14, v38, v39

    .line 77
    .local v14, "layerTileHeight":F
    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v39, v0

    div-float v39, v39, v15

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 78
    .local v8, "col1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v39, v0

    add-float v38, v38, v39

    add-float v38, v38, v15

    div-float v38, v38, v15

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v16

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 80
    .local v9, "col2":I
    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v39, v0

    div-float v39, v39, v14

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 81
    .local v20, "row1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v39, v0

    add-float v38, v38, v39

    add-float v38, v38, v14

    div-float v38, v38, v14

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 83
    .local v21, "row2":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v35, v38, v14

    .line 84
    .local v35, "y":F
    int-to-float v0, v8

    move/from16 v38, v0

    mul-float v34, v38, v15

    .line 85
    .local v34, "xStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->vertices:[F

    move-object/from16 v30, v0

    .line 87
    .local v30, "vertices":[F
    move/from16 v19, v21

    .local v19, "row":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 88
    move/from16 v31, v34

    .line 89
    .local v31, "x":F
    move v7, v8

    .local v7, "col":I
    :goto_1
    if-ge v7, v9, :cond_5

    .line 90
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v6

    .line 91
    .local v6, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v6, :cond_0

    .line 92
    add-float v31, v31, v15

    .line 89
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v25

    .line 97
    .local v25, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v25, :cond_4

    .line 98
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v11

    .line 99
    .local v11, "flipX":Z
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v12

    .line 100
    .local v12, "flipY":Z
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v18

    .line 102
    .local v18, "rotations":I
    invoke-interface/range {v25 .. v25}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v17

    .line 104
    .local v17, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-interface/range {v25 .. v25}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v32, v31, v38

    .line 105
    .local v32, "x1":F
    invoke-interface/range {v25 .. v25}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v36, v35, v38

    .line 106
    .local v36, "y1":F
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v33, v32, v38

    .line 107
    .local v33, "x2":F
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v37, v36, v38

    .line 109
    .local v37, "y2":F
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v26

    .line 110
    .local v26, "u1":F
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v28

    .line 111
    .local v28, "v1":F
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v27

    .line 112
    .local v27, "u2":F
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v29

    .line 114
    .local v29, "v2":F
    const/16 v38, 0x0

    aput v32, v30, v38

    .line 115
    const/16 v38, 0x1

    aput v36, v30, v38

    .line 116
    const/16 v38, 0x2

    aput v10, v30, v38

    .line 117
    const/16 v38, 0x3

    aput v26, v30, v38

    .line 118
    const/16 v38, 0x4

    aput v28, v30, v38

    .line 120
    const/16 v38, 0x5

    aput v32, v30, v38

    .line 121
    const/16 v38, 0x6

    aput v37, v30, v38

    .line 122
    const/16 v38, 0x7

    aput v10, v30, v38

    .line 123
    const/16 v38, 0x8

    aput v26, v30, v38

    .line 124
    const/16 v38, 0x9

    aput v29, v30, v38

    .line 126
    const/16 v38, 0xa

    aput v33, v30, v38

    .line 127
    const/16 v38, 0xb

    aput v37, v30, v38

    .line 128
    const/16 v38, 0xc

    aput v10, v30, v38

    .line 129
    const/16 v38, 0xd

    aput v27, v30, v38

    .line 130
    const/16 v38, 0xe

    aput v29, v30, v38

    .line 132
    const/16 v38, 0xf

    aput v33, v30, v38

    .line 133
    const/16 v38, 0x10

    aput v36, v30, v38

    .line 134
    const/16 v38, 0x11

    aput v10, v30, v38

    .line 135
    const/16 v38, 0x12

    aput v27, v30, v38

    .line 136
    const/16 v38, 0x13

    aput v28, v30, v38

    .line 138
    if-eqz v11, :cond_1

    .line 139
    const/16 v38, 0x3

    aget v22, v30, v38

    .line 140
    .local v22, "temp":F
    const/16 v38, 0x3

    const/16 v39, 0xd

    aget v39, v30, v39

    aput v39, v30, v38

    .line 141
    const/16 v38, 0xd

    aput v22, v30, v38

    .line 142
    const/16 v38, 0x8

    aget v22, v30, v38

    .line 143
    const/16 v38, 0x8

    const/16 v39, 0x12

    aget v39, v30, v39

    aput v39, v30, v38

    .line 144
    const/16 v38, 0x12

    aput v22, v30, v38

    .line 146
    .end local v22    # "temp":F
    :cond_1
    if-eqz v12, :cond_2

    .line 147
    const/16 v38, 0x4

    aget v22, v30, v38

    .line 148
    .restart local v22    # "temp":F
    const/16 v38, 0x4

    const/16 v39, 0xe

    aget v39, v30, v39

    aput v39, v30, v38

    .line 149
    const/16 v38, 0xe

    aput v22, v30, v38

    .line 150
    const/16 v38, 0x9

    aget v22, v30, v38

    .line 151
    const/16 v38, 0x9

    const/16 v39, 0x13

    aget v39, v30, v39

    aput v39, v30, v38

    .line 152
    const/16 v38, 0x13

    aput v22, v30, v38

    .line 154
    .end local v22    # "temp":F
    :cond_2
    if-eqz v18, :cond_3

    .line 155
    packed-switch v18, :pswitch_data_0

    .line 201
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v38, v0

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x14

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 203
    .end local v11    # "flipX":Z
    .end local v12    # "flipY":Z
    .end local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v18    # "rotations":I
    .end local v26    # "u1":F
    .end local v27    # "u2":F
    .end local v28    # "v1":F
    .end local v29    # "v2":F
    .end local v32    # "x1":F
    .end local v33    # "x2":F
    .end local v36    # "y1":F
    .end local v37    # "y2":F
    :cond_4
    add-float v31, v31, v15

    goto/16 :goto_2

    .line 157
    .restart local v11    # "flipX":Z
    .restart local v12    # "flipY":Z
    .restart local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v18    # "rotations":I
    .restart local v26    # "u1":F
    .restart local v27    # "u2":F
    .restart local v28    # "v1":F
    .restart local v29    # "v2":F
    .restart local v32    # "x1":F
    .restart local v33    # "x2":F
    .restart local v36    # "y1":F
    .restart local v37    # "y2":F
    :pswitch_0
    const/16 v38, 0x4

    aget v24, v30, v38

    .line 158
    .local v24, "tempV":F
    const/16 v38, 0x4

    const/16 v39, 0x9

    aget v39, v30, v39

    aput v39, v30, v38

    .line 159
    const/16 v38, 0x9

    const/16 v39, 0xe

    aget v39, v30, v39

    aput v39, v30, v38

    .line 160
    const/16 v38, 0xe

    const/16 v39, 0x13

    aget v39, v30, v39

    aput v39, v30, v38

    .line 161
    const/16 v38, 0x13

    aput v24, v30, v38

    .line 163
    const/16 v38, 0x3

    aget v23, v30, v38

    .line 164
    .local v23, "tempU":F
    const/16 v38, 0x3

    const/16 v39, 0x8

    aget v39, v30, v39

    aput v39, v30, v38

    .line 165
    const/16 v38, 0x8

    const/16 v39, 0xd

    aget v39, v30, v39

    aput v39, v30, v38

    .line 166
    const/16 v38, 0xd

    const/16 v39, 0x12

    aget v39, v30, v39

    aput v39, v30, v38

    .line 167
    const/16 v38, 0x12

    aput v23, v30, v38

    goto :goto_3

    .line 171
    .end local v23    # "tempU":F
    .end local v24    # "tempV":F
    :pswitch_1
    const/16 v38, 0x3

    aget v23, v30, v38

    .line 172
    .restart local v23    # "tempU":F
    const/16 v38, 0x3

    const/16 v39, 0xd

    aget v39, v30, v39

    aput v39, v30, v38

    .line 173
    const/16 v38, 0xd

    aput v23, v30, v38

    .line 174
    const/16 v38, 0x8

    aget v23, v30, v38

    .line 175
    const/16 v38, 0x8

    const/16 v39, 0x12

    aget v39, v30, v39

    aput v39, v30, v38

    .line 176
    const/16 v38, 0x12

    aput v23, v30, v38

    .line 177
    const/16 v38, 0x4

    aget v24, v30, v38

    .line 178
    .restart local v24    # "tempV":F
    const/16 v38, 0x4

    const/16 v39, 0xe

    aget v39, v30, v39

    aput v39, v30, v38

    .line 179
    const/16 v38, 0xe

    aput v24, v30, v38

    .line 180
    const/16 v38, 0x9

    aget v24, v30, v38

    .line 181
    const/16 v38, 0x9

    const/16 v39, 0x13

    aget v39, v30, v39

    aput v39, v30, v38

    .line 182
    const/16 v38, 0x13

    aput v24, v30, v38

    goto/16 :goto_3

    .line 186
    .end local v23    # "tempU":F
    .end local v24    # "tempV":F
    :pswitch_2
    const/16 v38, 0x4

    aget v24, v30, v38

    .line 187
    .restart local v24    # "tempV":F
    const/16 v38, 0x4

    const/16 v39, 0x13

    aget v39, v30, v39

    aput v39, v30, v38

    .line 188
    const/16 v38, 0x13

    const/16 v39, 0xe

    aget v39, v30, v39

    aput v39, v30, v38

    .line 189
    const/16 v38, 0xe

    const/16 v39, 0x9

    aget v39, v30, v39

    aput v39, v30, v38

    .line 190
    const/16 v38, 0x9

    aput v24, v30, v38

    .line 192
    const/16 v38, 0x3

    aget v23, v30, v38

    .line 193
    .restart local v23    # "tempU":F
    const/16 v38, 0x3

    const/16 v39, 0x12

    aget v39, v30, v39

    aput v39, v30, v38

    .line 194
    const/16 v38, 0x12

    const/16 v39, 0xd

    aget v39, v30, v39

    aput v39, v30, v38

    .line 195
    const/16 v38, 0xd

    const/16 v39, 0x8

    aget v39, v30, v39

    aput v39, v30, v38

    .line 196
    const/16 v38, 0x8

    aput v23, v30, v38

    goto/16 :goto_3

    .line 205
    .end local v6    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v11    # "flipX":Z
    .end local v12    # "flipY":Z
    .end local v17    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v18    # "rotations":I
    .end local v23    # "tempU":F
    .end local v24    # "tempV":F
    .end local v25    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v26    # "u1":F
    .end local v27    # "u2":F
    .end local v28    # "v1":F
    .end local v29    # "v2":F
    .end local v32    # "x1":F
    .end local v33    # "x2":F
    .end local v36    # "y1":F
    .end local v37    # "y2":F
    :cond_5
    sub-float v35, v35, v14

    .line 87
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_0

    .line 207
    .end local v7    # "col":I
    .end local v31    # "x":F
    :cond_6
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
