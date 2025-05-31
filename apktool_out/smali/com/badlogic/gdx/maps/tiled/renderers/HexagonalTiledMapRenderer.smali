.class public Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "HexagonalTiledMapRenderer.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 41
    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 46
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    .line 50
    .local v5, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v41, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v42, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v43, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v44, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v45

    mul-float v44, v44, v45

    invoke-static/range {v41 .. v44}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v10

    .line 52
    .local v10, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v20

    .line 53
    .local v20, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v13

    .line 55
    .local v13, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    move/from16 v42, v0

    mul-float v17, v41, v42

    .line 56
    .local v17, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    move/from16 v42, v0

    mul-float v14, v41, v42

    .line 58
    .local v14, "layerTileHeight":F
    const/high16 v41, 0x3e800000    # 0.25f

    mul-float v18, v17, v41

    .line 59
    .local v18, "layerTileWidth25":F
    const/high16 v41, 0x3f400000    # 0.75f

    mul-float v19, v17, v41

    .line 61
    .local v19, "layerTileWidth75":F
    const/high16 v41, 0x3f000000    # 0.5f

    mul-float v16, v14, v41

    .line 62
    .local v16, "layerTileHeight50":F
    const/high16 v41, 0x3fc00000    # 1.5f

    mul-float v15, v14, v41

    .line 64
    .local v15, "layerTileHeight150":F
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v42, v0

    sub-float v42, v42, v18

    div-float v42, v42, v19

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v42, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 65
    .local v8, "col1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v42, v0

    add-float v41, v41, v42

    add-float v41, v41, v19

    div-float v41, v41, v19

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v20

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 67
    .local v9, "col2":I
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v42, v0

    div-float v42, v42, v15

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v42, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 68
    .local v24, "row1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v42, v0

    add-float v41, v41, v42

    add-float v41, v41, v15

    div-float v41, v41, v14

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 70
    .local v25, "row2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    move-object/from16 v34, v0

    .line 72
    .local v34, "vertices":[F
    move/from16 v23, v24

    .local v23, "row":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 73
    move v7, v8

    .local v7, "col":I
    :goto_1
    if-ge v7, v9, :cond_5

    .line 74
    int-to-float v0, v7

    move/from16 v41, v0

    mul-float v35, v19, v41

    .line 75
    .local v35, "x":F
    rem-int/lit8 v41, v7, 0x2

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1

    const/16 v41, 0x0

    :goto_2
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v42, v42, v14

    add-float v38, v41, v42

    .line 77
    .local v38, "y":F
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v6

    .line 78
    .local v6, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v6, :cond_2

    .line 79
    add-float v35, v35, v17

    .line 73
    :cond_0
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v6    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v38    # "y":F
    :cond_1
    move/from16 v41, v16

    .line 75
    goto :goto_2

    .line 82
    .restart local v6    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .restart local v38    # "y":F
    :cond_2
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v29

    .line 83
    .local v29, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v29, :cond_0

    .line 84
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    move/from16 v41, v0

    if-nez v41, :cond_0

    .line 86
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v11

    .line 87
    .local v11, "flipX":Z
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v12

    .line 88
    .local v12, "flipY":Z
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v22

    .line 90
    .local v22, "rotations":I
    invoke-interface/range {v29 .. v29}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v21

    .line 92
    .local v21, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-interface/range {v29 .. v29}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    move/from16 v42, v0

    mul-float v41, v41, v42

    add-float v36, v35, v41

    .line 93
    .local v36, "x1":F
    invoke-interface/range {v29 .. v29}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    move/from16 v42, v0

    mul-float v41, v41, v42

    add-float v39, v38, v41

    .line 94
    .local v39, "y1":F
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    move/from16 v42, v0

    mul-float v41, v41, v42

    add-float v37, v36, v41

    .line 95
    .local v37, "x2":F
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    move/from16 v42, v0

    mul-float v41, v41, v42

    add-float v40, v39, v41

    .line 97
    .local v40, "y2":F
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v30

    .line 98
    .local v30, "u1":F
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v32

    .line 99
    .local v32, "v1":F
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v31

    .line 100
    .local v31, "u2":F
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v33

    .line 102
    .local v33, "v2":F
    const/16 v41, 0x0

    aput v36, v34, v41

    .line 103
    const/16 v41, 0x1

    aput v39, v34, v41

    .line 104
    const/16 v41, 0x2

    aput v10, v34, v41

    .line 105
    const/16 v41, 0x3

    aput v30, v34, v41

    .line 106
    const/16 v41, 0x4

    aput v32, v34, v41

    .line 108
    const/16 v41, 0x5

    aput v36, v34, v41

    .line 109
    const/16 v41, 0x6

    aput v40, v34, v41

    .line 110
    const/16 v41, 0x7

    aput v10, v34, v41

    .line 111
    const/16 v41, 0x8

    aput v30, v34, v41

    .line 112
    const/16 v41, 0x9

    aput v33, v34, v41

    .line 114
    const/16 v41, 0xa

    aput v37, v34, v41

    .line 115
    const/16 v41, 0xb

    aput v40, v34, v41

    .line 116
    const/16 v41, 0xc

    aput v10, v34, v41

    .line 117
    const/16 v41, 0xd

    aput v31, v34, v41

    .line 118
    const/16 v41, 0xe

    aput v33, v34, v41

    .line 120
    const/16 v41, 0xf

    aput v37, v34, v41

    .line 121
    const/16 v41, 0x10

    aput v39, v34, v41

    .line 122
    const/16 v41, 0x11

    aput v10, v34, v41

    .line 123
    const/16 v41, 0x12

    aput v31, v34, v41

    .line 124
    const/16 v41, 0x13

    aput v32, v34, v41

    .line 126
    if-eqz v11, :cond_3

    .line 127
    const/16 v41, 0x3

    aget v26, v34, v41

    .line 128
    .local v26, "temp":F
    const/16 v41, 0x3

    const/16 v42, 0xd

    aget v42, v34, v42

    aput v42, v34, v41

    .line 129
    const/16 v41, 0xd

    aput v26, v34, v41

    .line 130
    const/16 v41, 0x8

    aget v26, v34, v41

    .line 131
    const/16 v41, 0x8

    const/16 v42, 0x12

    aget v42, v34, v42

    aput v42, v34, v41

    .line 132
    const/16 v41, 0x12

    aput v26, v34, v41

    .line 134
    .end local v26    # "temp":F
    :cond_3
    if-eqz v12, :cond_4

    .line 135
    const/16 v41, 0x4

    aget v26, v34, v41

    .line 136
    .restart local v26    # "temp":F
    const/16 v41, 0x4

    const/16 v42, 0xe

    aget v42, v34, v42

    aput v42, v34, v41

    .line 137
    const/16 v41, 0xe

    aput v26, v34, v41

    .line 138
    const/16 v41, 0x9

    aget v26, v34, v41

    .line 139
    const/16 v41, 0x9

    const/16 v42, 0x13

    aget v42, v34, v42

    aput v42, v34, v41

    .line 140
    const/16 v41, 0x13

    aput v26, v34, v41

    .line 142
    .end local v26    # "temp":F
    :cond_4
    const/16 v41, 0x2

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 143
    const/16 v41, 0x3

    aget v27, v34, v41

    .line 144
    .local v27, "tempU":F
    const/16 v41, 0x3

    const/16 v42, 0xd

    aget v42, v34, v42

    aput v42, v34, v41

    .line 145
    const/16 v41, 0xd

    aput v27, v34, v41

    .line 146
    const/16 v41, 0x8

    aget v27, v34, v41

    .line 147
    const/16 v41, 0x8

    const/16 v42, 0x12

    aget v42, v34, v42

    aput v42, v34, v41

    .line 148
    const/16 v41, 0x12

    aput v27, v34, v41

    .line 149
    const/16 v41, 0x4

    aget v28, v34, v41

    .line 150
    .local v28, "tempV":F
    const/16 v41, 0x4

    const/16 v42, 0xe

    aget v42, v34, v42

    aput v42, v34, v41

    .line 151
    const/16 v41, 0xe

    aput v28, v34, v41

    .line 152
    const/16 v41, 0x9

    aget v28, v34, v41

    .line 153
    const/16 v41, 0x9

    const/16 v42, 0x13

    aget v42, v34, v42

    aput v42, v34, v41

    .line 154
    const/16 v41, 0x13

    aput v28, v34, v41

    .line 72
    .end local v6    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v11    # "flipX":Z
    .end local v12    # "flipY":Z
    .end local v21    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v22    # "rotations":I
    .end local v27    # "tempU":F
    .end local v28    # "tempV":F
    .end local v29    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v30    # "u1":F
    .end local v31    # "u2":F
    .end local v32    # "v1":F
    .end local v33    # "v2":F
    .end local v35    # "x":F
    .end local v36    # "x1":F
    .end local v37    # "x2":F
    .end local v38    # "y":F
    .end local v39    # "y1":F
    .end local v40    # "y2":F
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 157
    .restart local v6    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .restart local v11    # "flipX":Z
    .restart local v12    # "flipY":Z
    .restart local v21    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v22    # "rotations":I
    .restart local v29    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .restart local v30    # "u1":F
    .restart local v31    # "u2":F
    .restart local v32    # "v1":F
    .restart local v33    # "v2":F
    .restart local v35    # "x":F
    .restart local v36    # "x1":F
    .restart local v37    # "x2":F
    .restart local v38    # "y":F
    .restart local v39    # "y1":F
    .restart local v40    # "y2":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v41, v0

    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v42

    const/16 v43, 0x0

    const/16 v44, 0x14

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v34

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_3

    .line 161
    .end local v6    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v7    # "col":I
    .end local v11    # "flipX":Z
    .end local v12    # "flipY":Z
    .end local v21    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v22    # "rotations":I
    .end local v29    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v30    # "u1":F
    .end local v31    # "u2":F
    .end local v32    # "v1":F
    .end local v33    # "v2":F
    .end local v35    # "x":F
    .end local v36    # "x1":F
    .end local v37    # "x2":F
    .end local v38    # "y":F
    .end local v39    # "y1":F
    .end local v40    # "y2":F
    :cond_7
    return-void
.end method
