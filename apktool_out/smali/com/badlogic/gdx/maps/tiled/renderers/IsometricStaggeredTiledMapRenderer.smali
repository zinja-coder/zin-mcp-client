.class public Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "IsometricStaggeredTiledMapRenderer.java"


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
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 41
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
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 37
    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 40
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 50
    .local v3, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v35, v0

    iget v0, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v36, v0

    iget v0, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v37, v0

    iget v0, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v38, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v39

    mul-float v38, v38, v39

    invoke-static/range {v35 .. v38}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v5

    .line 52
    .local v5, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v13

    .line 53
    .local v13, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v8

    .line 55
    .local v8, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    move/from16 v36, v0

    mul-float v11, v35, v36

    .line 56
    .local v11, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    move/from16 v36, v0

    mul-float v9, v35, v36

    .line 58
    .local v9, "layerTileHeight":F
    const/high16 v35, 0x3f000000    # 0.5f

    mul-float v12, v11, v35

    .line 59
    .local v12, "layerTileWidth50":F
    const/high16 v35, 0x3f000000    # 0.5f

    mul-float v10, v9, v35

    .line 61
    .local v10, "layerTileHeight50":F
    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v36, v0

    sub-float v36, v36, v12

    div-float v36, v36, v11

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 62
    .local v16, "minX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v36, v0

    add-float v35, v35, v36

    add-float v35, v35, v11

    add-float v35, v35, v12

    div-float v35, v35, v11

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 65
    .local v14, "maxX":I
    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v36, v0

    sub-float v36, v36, v9

    div-float v36, v36, v9

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 66
    .local v17, "minY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v36, v0

    add-float v35, v35, v36

    add-float v35, v35, v9

    div-float v35, v35, v10

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 68
    .local v15, "maxY":I
    add-int/lit8 v32, v15, -0x1

    .local v32, "y":I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 69
    rem-int/lit8 v35, v32, 0x2

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    move/from16 v18, v12

    .line 70
    .local v18, "offsetX":F
    :goto_1
    add-int/lit8 v29, v14, -0x1

    .local v29, "x":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    .line 71
    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v4

    .line 72
    .local v4, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v4, :cond_2

    .line 70
    :cond_0
    :goto_3
    add-int/lit8 v29, v29, -0x1

    goto :goto_2

    .line 69
    .end local v4    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v18    # "offsetX":F
    .end local v29    # "x":I
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 73
    .restart local v4    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .restart local v18    # "offsetX":F
    .restart local v29    # "x":I
    :cond_2
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v24

    .line 75
    .local v24, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v24, :cond_0

    .line 76
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v6

    .line 77
    .local v6, "flipX":Z
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v7

    .line 78
    .local v7, "flipY":Z
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v20

    .line 79
    .local v20, "rotations":I
    invoke-interface/range {v24 .. v24}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v19

    .line 81
    .local v19, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v11

    sub-float v35, v35, v18

    invoke-interface/range {v24 .. v24}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    add-float v30, v35, v36

    .line 82
    .local v30, "x1":F
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v10

    invoke-interface/range {v24 .. v24}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    add-float v33, v35, v36

    .line 83
    .local v33, "y1":F
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    add-float v31, v30, v35

    .line 84
    .local v31, "x2":F
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    add-float v34, v33, v35

    .line 86
    .local v34, "y2":F
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v25

    .line 87
    .local v25, "u1":F
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v27

    .line 88
    .local v27, "v1":F
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v26

    .line 89
    .local v26, "u2":F
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v28

    .line 91
    .local v28, "v2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v30, v35, v36

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aput v33, v35, v36

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x2

    aput v5, v35, v36

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    aput v25, v35, v36

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    aput v27, v35, v36

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x5

    aput v30, v35, v36

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x6

    aput v34, v35, v36

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x7

    aput v5, v35, v36

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    aput v25, v35, v36

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    aput v28, v35, v36

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xa

    aput v31, v35, v36

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xb

    aput v34, v35, v36

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xc

    aput v5, v35, v36

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    aput v26, v35, v36

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    aput v28, v35, v36

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xf

    aput v31, v35, v36

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x10

    aput v33, v35, v36

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x11

    aput v5, v35, v36

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aput v26, v35, v36

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aput v27, v35, v36

    .line 115
    if-eqz v6, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    aget v21, v35, v36

    .line 117
    .local v21, "temp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xd

    aget v37, v37, v38

    aput v37, v35, v36

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    aput v21, v35, v36

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    aget v21, v35, v36

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x12

    aget v37, v37, v38

    aput v37, v35, v36

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aput v21, v35, v36

    .line 124
    .end local v21    # "temp":F
    :cond_3
    if-eqz v7, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    aget v21, v35, v36

    .line 126
    .restart local v21    # "temp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xe

    aget v37, v37, v38

    aput v37, v35, v36

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    aput v21, v35, v36

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    aget v21, v35, v36

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x13

    aget v37, v37, v38

    aput v37, v35, v36

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aput v21, v35, v36

    .line 133
    .end local v21    # "temp":F
    :cond_4
    if-eqz v20, :cond_5

    .line 134
    packed-switch v20, :pswitch_data_0

    .line 180
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v35, v0

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x14

    invoke-interface/range {v35 .. v39}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_3

    .line 136
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    aget v23, v35, v36

    .line 137
    .local v23, "tempV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x9

    aget v37, v37, v38

    aput v37, v35, v36

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xe

    aget v37, v37, v38

    aput v37, v35, v36

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x13

    aget v37, v37, v38

    aput v37, v35, v36

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aput v23, v35, v36

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    aget v22, v35, v36

    .line 143
    .local v22, "tempU":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x8

    aget v37, v37, v38

    aput v37, v35, v36

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xd

    aget v37, v37, v38

    aput v37, v35, v36

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x12

    aget v37, v37, v38

    aput v37, v35, v36

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aput v22, v35, v36

    goto/16 :goto_4

    .line 150
    .end local v22    # "tempU":F
    .end local v23    # "tempV":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    aget v22, v35, v36

    .line 151
    .restart local v22    # "tempU":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xd

    aget v37, v37, v38

    aput v37, v35, v36

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    aput v22, v35, v36

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    aget v22, v35, v36

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x12

    aget v37, v37, v38

    aput v37, v35, v36

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aput v22, v35, v36

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    aget v23, v35, v36

    .line 157
    .restart local v23    # "tempV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xe

    aget v37, v37, v38

    aput v37, v35, v36

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    aput v23, v35, v36

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    aget v23, v35, v36

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x13

    aget v37, v37, v38

    aput v37, v35, v36

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aput v23, v35, v36

    goto/16 :goto_4

    .line 165
    .end local v22    # "tempU":F
    .end local v23    # "tempV":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    aget v23, v35, v36

    .line 166
    .restart local v23    # "tempV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x13

    aget v37, v37, v38

    aput v37, v35, v36

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xe

    aget v37, v37, v38

    aput v37, v35, v36

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x9

    aget v37, v37, v38

    aput v37, v35, v36

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    aput v23, v35, v36

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    aget v22, v35, v36

    .line 172
    .restart local v22    # "tempU":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x12

    aget v37, v37, v38

    aput v37, v35, v36

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0xd

    aget v37, v37, v38

    aput v37, v35, v36

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v37, v0

    const/16 v38, 0x8

    aget v37, v37, v38

    aput v37, v35, v36

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    aput v22, v35, v36

    goto/16 :goto_4

    .line 68
    .end local v4    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v6    # "flipX":Z
    .end local v7    # "flipY":Z
    .end local v19    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v20    # "rotations":I
    .end local v22    # "tempU":F
    .end local v23    # "tempV":F
    .end local v24    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v25    # "u1":F
    .end local v26    # "u2":F
    .end local v27    # "v1":F
    .end local v28    # "v2":F
    .end local v30    # "x1":F
    .end local v31    # "x2":F
    .end local v33    # "y1":F
    .end local v34    # "y2":F
    :cond_6
    add-int/lit8 v32, v32, -0x1

    goto/16 :goto_0

    .line 184
    .end local v18    # "offsetX":F
    .end local v29    # "x":I
    :cond_7
    return-void

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
