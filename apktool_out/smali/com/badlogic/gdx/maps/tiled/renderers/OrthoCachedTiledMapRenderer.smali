.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;
.super Ljava/lang/Object;
.source "OrthoCachedTiledMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field protected static final NUM_VERTICES:I = 0x14

.field private static final tolerance:F = 1.0E-5f


# instance fields
.field protected blending:Z

.field protected final cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

.field protected cached:Z

.field protected canCacheMoreE:Z

.field protected canCacheMoreN:Z

.field protected canCacheMoreS:Z

.field protected canCacheMoreW:Z

.field protected count:I

.field protected final map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected maxTileHeight:F

.field protected maxTileWidth:F

.field protected overCache:F

.field protected final spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field protected unitScale:F

.field protected final vertices:[F

.field protected final viewBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .prologue
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .prologue
    .line 75
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "cacheSize"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 62
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 81
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    .line 83
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V

    .line 444
    return-void
.end method

.method public getSpriteCache()Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-object v0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 405
    return-void
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    return v0
.end method

.method public render()V
    .locals 12

    .prologue
    const/16 v11, 0xbe2

    const/high16 v10, 0x40000000    # 2.0f

    .line 117
    iget-boolean v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    if-nez v7, :cond_2

    .line 118
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 119
    const/4 v7, 0x0

    iput v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    .line 120
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    .line 122
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float v1, v7, v8

    .line 123
    .local v1, "extraWidth":F
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float v0, v7, v8

    .line 124
    .local v0, "extraHeight":F
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v8, v1

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 125
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v8, v0

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 126
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v9, v1, v10

    add-float/2addr v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 127
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v9, v0, v10

    add-float/2addr v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 129
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/maps/MapLayer;

    .line 130
    .local v5, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 131
    instance-of v7, v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v7, :cond_1

    .line 132
    check-cast v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .end local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    .line 136
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    goto :goto_0

    .line 133
    .restart local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_1
    instance-of v7, v5, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v7, :cond_0

    .line 134
    check-cast v5, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .end local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_1

    .line 140
    .end local v0    # "extraHeight":F
    .end local v1    # "extraWidth":F
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-boolean v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz v7, :cond_3

    .line 141
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v7, v11}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 142
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v8, 0x302

    const/16 v9, 0x303

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 144
    :cond_3
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    .line 145
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v6

    .line 146
    .local v6, "mapLayers":Lcom/badlogic/gdx/maps/MapLayers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/MapLayers;->getCount()I

    move-result v4

    .local v4, "j":I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 147
    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v5

    .line 148
    .restart local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 149
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    .line 150
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 146
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    .end local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_5
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    .line 154
    iget-boolean v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v7, v11}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 155
    :cond_6
    return-void
.end method

.method public render([I)V
    .locals 13
    .param p1, "layers"    # [I

    .prologue
    const/16 v12, 0xbe2

    const/high16 v11, 0x40000000    # 2.0f

    .line 159
    iget-boolean v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    if-nez v8, :cond_2

    .line 160
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 161
    const/4 v8, 0x0

    iput v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    .line 162
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    .line 164
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v9, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float v2, v8, v9

    .line 165
    .local v2, "extraWidth":F
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v9, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float v1, v8, v9

    .line 166
    .local v1, "extraHeight":F
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v9, v2

    iput v9, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 167
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v9, v1

    iput v9, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 168
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v10, v2, v11

    add-float/2addr v9, v10

    iput v9, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 169
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v9, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v10, v1, v11

    add-float/2addr v9, v10

    iput v9, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 171
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/maps/MapLayer;

    .line 172
    .local v5, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 173
    instance-of v8, v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v8, :cond_1

    .line 174
    check-cast v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .end local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    .line 178
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    goto :goto_0

    .line 175
    .restart local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_1
    instance-of v8, v5, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v8, :cond_0

    .line 176
    check-cast v5, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .end local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_1

    .line 182
    .end local v1    # "extraHeight":F
    .end local v2    # "extraWidth":F
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-boolean v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz v8, :cond_3

    .line 183
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v12}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 184
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v9, 0x302

    const/16 v10, 0x303

    invoke-interface {v8, v9, v10}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 186
    :cond_3
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    .line 187
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v7

    .line 188
    .local v7, "mapLayers":Lcom/badlogic/gdx/maps/MapLayers;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_5

    aget v3, v0, v4

    .line 189
    .local v3, "i":I
    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v5

    .line 190
    .restart local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 191
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    .line 192
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 188
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 195
    .end local v3    # "i":I
    .end local v5    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_5
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    .line 196
    iget-boolean v8, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v12}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 197
    :cond_6
    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .locals 21
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    .prologue
    .line 354
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getOpacity()F

    move-result v20

    invoke-static/range {v17 .. v20}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v4

    .line 355
    .local v4, "color":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    .line 357
    .local v10, "vertices":[F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 359
    .local v5, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v5, :cond_0

    .line 400
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v11, v0

    .line 364
    .local v11, "x":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getY()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    .line 365
    .local v14, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v17, v0

    mul-float v12, v11, v17

    .line 366
    .local v12, "x1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v17, v0

    mul-float v15, v14, v17

    .line 367
    .local v15, "y1":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v13, v12, v17

    .line 368
    .local v13, "x2":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v15, v17

    .line 370
    .local v16, "y2":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v6

    .line 371
    .local v6, "u1":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v8

    .line 372
    .local v8, "v1":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v7

    .line 373
    .local v7, "u2":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v9

    .line 375
    .local v9, "v2":F
    const/16 v17, 0x0

    aput v12, v10, v17

    .line 376
    const/16 v17, 0x1

    aput v15, v10, v17

    .line 377
    const/16 v17, 0x2

    aput v4, v10, v17

    .line 378
    const/16 v17, 0x3

    aput v6, v10, v17

    .line 379
    const/16 v17, 0x4

    aput v8, v10, v17

    .line 381
    const/16 v17, 0x5

    aput v12, v10, v17

    .line 382
    const/16 v17, 0x6

    aput v16, v10, v17

    .line 383
    const/16 v17, 0x7

    aput v4, v10, v17

    .line 384
    const/16 v17, 0x8

    aput v6, v10, v17

    .line 385
    const/16 v17, 0x9

    aput v9, v10, v17

    .line 387
    const/16 v17, 0xa

    aput v13, v10, v17

    .line 388
    const/16 v17, 0xb

    aput v16, v10, v17

    .line 389
    const/16 v17, 0xc

    aput v4, v10, v17

    .line 390
    const/16 v17, 0xd

    aput v7, v10, v17

    .line 391
    const/16 v17, 0xe

    aput v9, v10, v17

    .line 393
    const/16 v17, 0xf

    aput v13, v10, v17

    .line 394
    const/16 v17, 0x10

    aput v15, v10, v17

    .line 395
    const/16 v17, 0x11

    aput v4, v10, v17

    .line 396
    const/16 v17, 0x12

    aput v7, v10, v17

    .line 397
    const/16 v17, 0x13

    aput v8, v10, v17

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x14

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_0
.end method

.method public renderObject(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 0
    .param p1, "object"    # Lcom/badlogic/gdx/maps/MapObject;

    .prologue
    .line 208
    return-void
.end method

.method public renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 3
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;

    .prologue
    .line 201
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

    .line 202
    .local v1, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    goto :goto_0

    .line 204
    .end local v1    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_0
    return-void
.end method

.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 41
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .prologue
    .line 212
    const/high16 v37, 0x3f800000    # 1.0f

    const/high16 v38, 0x3f800000    # 1.0f

    const/high16 v39, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v40

    invoke-static/range {v37 .. v40}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v11

    .line 214
    .local v11, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v17

    .line 215
    .local v17, "layerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v14

    .line 217
    .local v14, "layerHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v38, v0

    mul-float v16, v37, v38

    .line 218
    .local v16, "layerTileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v38, v0

    mul-float v15, v37, v38

    .line 220
    .local v15, "layerTileHeight":F
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v38, v0

    div-float v38, v38, v16

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 221
    .local v9, "col1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v38, v0

    add-float v37, v37, v38

    add-float v37, v37, v16

    div-float v37, v37, v16

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v17

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 223
    .local v10, "col2":I
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v38, v0

    div-float v38, v38, v15

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 224
    .local v21, "row1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v38, v0

    add-float v37, v37, v38

    add-float v37, v37, v15

    div-float v37, v37, v15

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 226
    .local v22, "row2":I
    move/from16 v0, v22

    if-ge v0, v14, :cond_1

    const/16 v37, 0x1

    :goto_0
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    .line 227
    move/from16 v0, v17

    if-ge v10, v0, :cond_2

    const/16 v37, 0x1

    :goto_1
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    .line 228
    if-lez v9, :cond_3

    const/16 v37, 0x1

    :goto_2
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    .line 229
    if-lez v21, :cond_4

    const/16 v37, 0x1

    :goto_3
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    move-object/from16 v32, v0

    .line 232
    .local v32, "vertices":[F
    move/from16 v20, v22

    .local v20, "row":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 233
    move v8, v9

    .local v8, "col":I
    :goto_5
    if-ge v8, v10, :cond_9

    .line 234
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v7

    .line 235
    .local v7, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v7, :cond_5

    .line 233
    :cond_0
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 226
    .end local v7    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v8    # "col":I
    .end local v20    # "row":I
    .end local v32    # "vertices":[F
    :cond_1
    const/16 v37, 0x0

    goto :goto_0

    .line 227
    :cond_2
    const/16 v37, 0x0

    goto :goto_1

    .line 228
    :cond_3
    const/16 v37, 0x0

    goto :goto_2

    .line 229
    :cond_4
    const/16 v37, 0x0

    goto :goto_3

    .line 237
    .restart local v7    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .restart local v8    # "col":I
    .restart local v20    # "row":I
    .restart local v32    # "vertices":[F
    :cond_5
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v27

    .line 238
    .local v27, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v27, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    .line 241
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v12

    .line 242
    .local v12, "flipX":Z
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v13

    .line 243
    .local v13, "flipY":Z
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v19

    .line 245
    .local v19, "rotations":I
    invoke-interface/range {v27 .. v27}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v18

    .line 246
    .local v18, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v26

    .line 248
    .local v26, "texture":Lcom/badlogic/gdx/graphics/Texture;
    int-to-float v0, v8

    move/from16 v37, v0

    mul-float v37, v37, v16

    invoke-interface/range {v27 .. v27}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v33, v37, v38

    .line 249
    .local v33, "x1":F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v15

    invoke-interface/range {v27 .. v27}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v35, v37, v38

    .line 250
    .local v35, "y1":F
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v38, v0

    mul-float v37, v37, v38

    add-float v34, v33, v37

    .line 251
    .local v34, "x2":F
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    move/from16 v38, v0

    mul-float v37, v37, v38

    add-float v36, v35, v37

    .line 253
    .local v36, "y2":F
    const/high16 v37, 0x3f000000    # 0.5f

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v5, v37, v38

    .line 254
    .local v5, "adjustX":F
    const/high16 v37, 0x3f000000    # 0.5f

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v6, v37, v38

    .line 255
    .local v6, "adjustY":F
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v37

    add-float v28, v37, v5

    .line 256
    .local v28, "u1":F
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v37

    sub-float v30, v37, v6

    .line 257
    .local v30, "v1":F
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v37

    sub-float v29, v37, v5

    .line 258
    .local v29, "u2":F
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v37

    add-float v31, v37, v6

    .line 260
    .local v31, "v2":F
    const/16 v37, 0x0

    aput v33, v32, v37

    .line 261
    const/16 v37, 0x1

    aput v35, v32, v37

    .line 262
    const/16 v37, 0x2

    aput v11, v32, v37

    .line 263
    const/16 v37, 0x3

    aput v28, v32, v37

    .line 264
    const/16 v37, 0x4

    aput v30, v32, v37

    .line 266
    const/16 v37, 0x5

    aput v33, v32, v37

    .line 267
    const/16 v37, 0x6

    aput v36, v32, v37

    .line 268
    const/16 v37, 0x7

    aput v11, v32, v37

    .line 269
    const/16 v37, 0x8

    aput v28, v32, v37

    .line 270
    const/16 v37, 0x9

    aput v31, v32, v37

    .line 272
    const/16 v37, 0xa

    aput v34, v32, v37

    .line 273
    const/16 v37, 0xb

    aput v36, v32, v37

    .line 274
    const/16 v37, 0xc

    aput v11, v32, v37

    .line 275
    const/16 v37, 0xd

    aput v29, v32, v37

    .line 276
    const/16 v37, 0xe

    aput v31, v32, v37

    .line 278
    const/16 v37, 0xf

    aput v34, v32, v37

    .line 279
    const/16 v37, 0x10

    aput v35, v32, v37

    .line 280
    const/16 v37, 0x11

    aput v11, v32, v37

    .line 281
    const/16 v37, 0x12

    aput v29, v32, v37

    .line 282
    const/16 v37, 0x13

    aput v30, v32, v37

    .line 284
    if-eqz v12, :cond_6

    .line 285
    const/16 v37, 0x3

    aget v23, v32, v37

    .line 286
    .local v23, "temp":F
    const/16 v37, 0x3

    const/16 v38, 0xd

    aget v38, v32, v38

    aput v38, v32, v37

    .line 287
    const/16 v37, 0xd

    aput v23, v32, v37

    .line 288
    const/16 v37, 0x8

    aget v23, v32, v37

    .line 289
    const/16 v37, 0x8

    const/16 v38, 0x12

    aget v38, v32, v38

    aput v38, v32, v37

    .line 290
    const/16 v37, 0x12

    aput v23, v32, v37

    .line 292
    .end local v23    # "temp":F
    :cond_6
    if-eqz v13, :cond_7

    .line 293
    const/16 v37, 0x4

    aget v23, v32, v37

    .line 294
    .restart local v23    # "temp":F
    const/16 v37, 0x4

    const/16 v38, 0xe

    aget v38, v32, v38

    aput v38, v32, v37

    .line 295
    const/16 v37, 0xe

    aput v23, v32, v37

    .line 296
    const/16 v37, 0x9

    aget v23, v32, v37

    .line 297
    const/16 v37, 0x9

    const/16 v38, 0x13

    aget v38, v32, v38

    aput v38, v32, v37

    .line 298
    const/16 v37, 0x13

    aput v23, v32, v37

    .line 300
    .end local v23    # "temp":F
    :cond_7
    if-eqz v19, :cond_8

    .line 301
    packed-switch v19, :pswitch_data_0

    .line 347
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x14

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_6

    .line 303
    :pswitch_0
    const/16 v37, 0x4

    aget v25, v32, v37

    .line 304
    .local v25, "tempV":F
    const/16 v37, 0x4

    const/16 v38, 0x9

    aget v38, v32, v38

    aput v38, v32, v37

    .line 305
    const/16 v37, 0x9

    const/16 v38, 0xe

    aget v38, v32, v38

    aput v38, v32, v37

    .line 306
    const/16 v37, 0xe

    const/16 v38, 0x13

    aget v38, v32, v38

    aput v38, v32, v37

    .line 307
    const/16 v37, 0x13

    aput v25, v32, v37

    .line 309
    const/16 v37, 0x3

    aget v24, v32, v37

    .line 310
    .local v24, "tempU":F
    const/16 v37, 0x3

    const/16 v38, 0x8

    aget v38, v32, v38

    aput v38, v32, v37

    .line 311
    const/16 v37, 0x8

    const/16 v38, 0xd

    aget v38, v32, v38

    aput v38, v32, v37

    .line 312
    const/16 v37, 0xd

    const/16 v38, 0x12

    aget v38, v32, v38

    aput v38, v32, v37

    .line 313
    const/16 v37, 0x12

    aput v24, v32, v37

    goto :goto_7

    .line 317
    .end local v24    # "tempU":F
    .end local v25    # "tempV":F
    :pswitch_1
    const/16 v37, 0x3

    aget v24, v32, v37

    .line 318
    .restart local v24    # "tempU":F
    const/16 v37, 0x3

    const/16 v38, 0xd

    aget v38, v32, v38

    aput v38, v32, v37

    .line 319
    const/16 v37, 0xd

    aput v24, v32, v37

    .line 320
    const/16 v37, 0x8

    aget v24, v32, v37

    .line 321
    const/16 v37, 0x8

    const/16 v38, 0x12

    aget v38, v32, v38

    aput v38, v32, v37

    .line 322
    const/16 v37, 0x12

    aput v24, v32, v37

    .line 323
    const/16 v37, 0x4

    aget v25, v32, v37

    .line 324
    .restart local v25    # "tempV":F
    const/16 v37, 0x4

    const/16 v38, 0xe

    aget v38, v32, v38

    aput v38, v32, v37

    .line 325
    const/16 v37, 0xe

    aput v25, v32, v37

    .line 326
    const/16 v37, 0x9

    aget v25, v32, v37

    .line 327
    const/16 v37, 0x9

    const/16 v38, 0x13

    aget v38, v32, v38

    aput v38, v32, v37

    .line 328
    const/16 v37, 0x13

    aput v25, v32, v37

    goto/16 :goto_7

    .line 332
    .end local v24    # "tempU":F
    .end local v25    # "tempV":F
    :pswitch_2
    const/16 v37, 0x4

    aget v25, v32, v37

    .line 333
    .restart local v25    # "tempV":F
    const/16 v37, 0x4

    const/16 v38, 0x13

    aget v38, v32, v38

    aput v38, v32, v37

    .line 334
    const/16 v37, 0x13

    const/16 v38, 0xe

    aget v38, v32, v38

    aput v38, v32, v37

    .line 335
    const/16 v37, 0xe

    const/16 v38, 0x9

    aget v38, v32, v38

    aput v38, v32, v37

    .line 336
    const/16 v37, 0x9

    aput v25, v32, v37

    .line 338
    const/16 v37, 0x3

    aget v24, v32, v37

    .line 339
    .restart local v24    # "tempU":F
    const/16 v37, 0x3

    const/16 v38, 0x12

    aget v38, v32, v38

    aput v38, v32, v37

    .line 340
    const/16 v37, 0x12

    const/16 v38, 0xd

    aget v38, v32, v38

    aput v38, v32, v37

    .line 341
    const/16 v37, 0xd

    const/16 v38, 0x8

    aget v38, v32, v38

    aput v38, v32, v37

    .line 342
    const/16 v37, 0x8

    aput v24, v32, v37

    goto/16 :goto_7

    .line 232
    .end local v5    # "adjustX":F
    .end local v6    # "adjustY":F
    .end local v7    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v12    # "flipX":Z
    .end local v13    # "flipY":Z
    .end local v18    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v19    # "rotations":I
    .end local v24    # "tempU":F
    .end local v25    # "tempV":F
    .end local v26    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v27    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v28    # "u1":F
    .end local v29    # "u2":F
    .end local v30    # "v1":F
    .end local v31    # "v2":F
    .end local v33    # "x1":F
    .end local v34    # "x2":F
    .end local v35    # "y1":F
    .end local v36    # "y2":F
    :cond_9
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_4

    .line 350
    .end local v8    # "col":I
    :cond_a
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBlending(Z)V
    .locals 0
    .param p1, "blending"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    .line 435
    return-void
.end method

.method public setMaxTileSize(FF)V
    .locals 0
    .param p1, "maxPixelWidth"    # F
    .param p2, "maxPixelHeight"    # F

    .prologue
    .line 429
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    .line 430
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    .line 431
    return-void
.end method

.method public setOverCache(F)V
    .locals 0
    .param p1, "overCache"    # F

    .prologue
    .line 417
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    .line 418
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 7
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x3727c5ac    # 1.0E-5f

    .line 87
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 88
    iget v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 89
    .local v1, "width":F
    iget v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 90
    .local v0, "height":F
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 92
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_3

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 96
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 97
    :cond_4
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .locals 4
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3727c5ac    # 1.0E-5f

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 104
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v0, v1

    add-float/2addr p4, v0

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 108
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 112
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    .line 113
    :cond_4
    return-void
.end method
