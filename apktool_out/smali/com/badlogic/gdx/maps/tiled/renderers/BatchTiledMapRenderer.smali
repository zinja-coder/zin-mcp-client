.class public abstract Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.super Ljava/lang/Object;
.source "BatchTiledMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field protected static final NUM_VERTICES:I = 0x14


# instance fields
.field protected batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field protected imageBounds:Lcom/badlogic/gdx/math/Rectangle;

.field protected map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected ownsBatch:Z

.field protected unitScale:F

.field protected vertices:[F

.field protected viewBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .prologue
    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 99
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 100
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    .line 101
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 112
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    .line 113
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 114
    iput-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected beginRender()V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->updateAnimationBaseTime()V

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 242
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 254
    :cond_0
    return-void
.end method

.method protected endRender()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 247
    return-void
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getMap()Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public getUnitScale()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    return v0
.end method

.method public getViewBounds()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public render()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    .line 135
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapLayer;

    .line 136
    .local v1, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    instance-of v2, v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 138
    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    .line 139
    :cond_1
    instance-of v2, v1, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v2, :cond_2

    .line 140
    check-cast v1, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_0

    .line 142
    .restart local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_0

    .line 146
    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    .line 147
    return-void
.end method

.method public render([I)V
    .locals 6
    .param p1, "layers"    # [I

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    .line 152
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_3

    aget v3, v0, v1

    .line 153
    .local v3, "layerIdx":I
    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v2

    .line 154
    .local v2, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    instance-of v5, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v5, :cond_1

    .line 156
    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .end local v2    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    .line 152
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .restart local v2    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_1
    instance-of v5, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v5, :cond_2

    .line 158
    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .end local v2    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_1

    .line 160
    .restart local v2    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_1

    .line 164
    .end local v2    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    .end local v3    # "layerIdx":I
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    .line 165
    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .locals 23
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    .line 182
    .local v4, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v18, v0

    iget v0, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v19, v0

    iget v0, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v20, v0

    iget v0, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getOpacity()F

    move-result v22

    mul-float v21, v21, v22

    invoke-static/range {v18 .. v21}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v5

    .line 187
    .local v5, "color":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    .line 189
    .local v11, "vertices":[F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 191
    .local v6, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v6, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v12, v0

    .line 196
    .local v12, "x":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v15, v0

    .line 197
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    move/from16 v18, v0

    mul-float v13, v12, v18

    .line 198
    .local v13, "x1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    move/from16 v18, v0

    mul-float v16, v15, v18

    .line 199
    .local v16, "y1":F
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v14, v13, v18

    .line 200
    .local v14, "x2":F
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v16, v18

    .line 202
    .local v17, "y2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v18, v0

    sub-float v19, v14, v13

    sub-float v20, v17, v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/math/Rectangle;->contains(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 205
    :cond_2
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v7

    .line 206
    .local v7, "u1":F
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v9

    .line 207
    .local v9, "v1":F
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v8

    .line 208
    .local v8, "u2":F
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v10

    .line 210
    .local v10, "v2":F
    const/16 v18, 0x0

    aput v13, v11, v18

    .line 211
    const/16 v18, 0x1

    aput v16, v11, v18

    .line 212
    const/16 v18, 0x2

    aput v5, v11, v18

    .line 213
    const/16 v18, 0x3

    aput v7, v11, v18

    .line 214
    const/16 v18, 0x4

    aput v9, v11, v18

    .line 216
    const/16 v18, 0x5

    aput v13, v11, v18

    .line 217
    const/16 v18, 0x6

    aput v17, v11, v18

    .line 218
    const/16 v18, 0x7

    aput v5, v11, v18

    .line 219
    const/16 v18, 0x8

    aput v7, v11, v18

    .line 220
    const/16 v18, 0x9

    aput v10, v11, v18

    .line 222
    const/16 v18, 0xa

    aput v14, v11, v18

    .line 223
    const/16 v18, 0xb

    aput v17, v11, v18

    .line 224
    const/16 v18, 0xc

    aput v5, v11, v18

    .line 225
    const/16 v18, 0xd

    aput v8, v11, v18

    .line 226
    const/16 v18, 0xe

    aput v10, v11, v18

    .line 228
    const/16 v18, 0xf

    aput v14, v11, v18

    .line 229
    const/16 v18, 0x10

    aput v16, v11, v18

    .line 230
    const/16 v18, 0x11

    aput v5, v11, v18

    .line 231
    const/16 v18, 0x12

    aput v8, v11, v18

    .line 232
    const/16 v18, 0x13

    aput v9, v11, v18

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x14

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v11, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_0
.end method

.method public renderObject(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 0
    .param p1, "object"    # Lcom/badlogic/gdx/maps/MapObject;

    .prologue
    .line 177
    return-void
.end method

.method public renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 3
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObjects;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapObject;

    .line 170
    .local v1, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    goto :goto_0

    .line 172
    .end local v1    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_0
    return-void
.end method

.method public setMap(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 80
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 6
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 120
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 121
    iget v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float v1, v2, v3

    .line 122
    .local v1, "width":F
    iget v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float v0, v2, v3

    .line 123
    .local v0, "height":F
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 124
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .locals 1
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 130
    return-void
.end method
