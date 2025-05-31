.class public Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "IsometricTiledMapRenderer.java"


# instance fields
.field private bottomLeft:Lcom/badlogic/gdx/math/Vector2;

.field private bottomRight:Lcom/badlogic/gdx/math/Vector2;

.field private invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

.field private isoTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private screenPos:Lcom/badlogic/gdx/math/Vector3;

.field private topLeft:Lcom/badlogic/gdx/math/Vector2;

.field private topRight:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 55
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "unitScale"    # F
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 60
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 65
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v6, v6, v7, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    .line 75
    return-void
.end method

.method private translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 38
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 87
    .local v2, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v33, v0

    iget v0, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v34, v0

    iget v0, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v35, v0

    iget v0, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v37

    mul-float v36, v36, v37

    invoke-static/range {v33 .. v36}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v7

    .line 89
    .local v7, "color":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    move/from16 v34, v0

    mul-float v22, v33, v34

    .line 90
    .local v22, "tileWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    move/from16 v34, v0

    mul-float v21, v33, v34

    .line 91
    .local v21, "tileHeight":F
    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v11, v22, v33

    .line 92
    .local v11, "halfTileWidth":F
    const/high16 v33, 0x3f000000    # 0.5f

    mul-float v10, v21, v33

    .line 96
    .local v10, "halfTileHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v35, v0

    add-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v36, v0

    add-float v35, v35, v36

    invoke-virtual/range {v33 .. v35}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v35, v0

    add-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v36, v0

    add-float v35, v35, v36

    invoke-virtual/range {v33 .. v35}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v33, v0

    div-float v33, v33, v22

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int/lit8 v15, v33, -0x2

    .line 106
    .local v15, "row1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v33, v0

    div-float v33, v33, v22

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x2

    .line 108
    .local v16, "row2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v33, v0

    div-float v33, v33, v22

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int/lit8 v5, v33, -0x2

    .line 109
    .local v5, "col1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v33, v0

    div-float v33, v33, v22

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int/lit8 v6, v33, 0x2

    .line 111
    .local v6, "col2":I
    move/from16 v14, v16

    .local v14, "row":I
    :goto_0
    if-lt v14, v15, :cond_6

    .line 112
    move v4, v5

    .local v4, "col":I
    :goto_1
    if-gt v4, v6, :cond_5

    .line 113
    int-to-float v0, v4

    move/from16 v33, v0

    mul-float v33, v33, v11

    int-to-float v0, v14

    move/from16 v34, v0

    mul-float v34, v34, v11

    add-float v27, v33, v34

    .line 114
    .local v27, "x":F
    int-to-float v0, v14

    move/from16 v33, v0

    mul-float v33, v33, v10

    int-to-float v0, v4

    move/from16 v34, v0

    mul-float v34, v34, v10

    sub-float v30, v33, v34

    .line 116
    .local v30, "y":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v3

    .line 117
    .local v3, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v20

    .line 120
    .local v20, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v20, :cond_0

    .line 121
    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v8

    .line 122
    .local v8, "flipX":Z
    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v9

    .line 123
    .local v9, "flipY":Z
    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v13

    .line 125
    .local v13, "rotations":I
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 127
    .local v12, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v28, v27, v33

    .line 128
    .local v28, "x1":F
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v31, v30, v33

    .line 129
    .local v31, "y1":F
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v29, v28, v33

    .line 130
    .local v29, "x2":F
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v31, v33

    .line 132
    .local v32, "y2":F
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v23

    .line 133
    .local v23, "u1":F
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v25

    .line 134
    .local v25, "v1":F
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v24

    .line 135
    .local v24, "u2":F
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v26

    .line 137
    .local v26, "v2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput v28, v33, v34

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aput v31, v33, v34

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x2

    aput v7, v33, v34

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aput v23, v33, v34

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    aput v25, v33, v34

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x5

    aput v28, v33, v34

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x6

    aput v32, v33, v34

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x7

    aput v7, v33, v34

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x8

    aput v23, v33, v34

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x9

    aput v26, v33, v34

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xa

    aput v29, v33, v34

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xb

    aput v32, v33, v34

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xc

    aput v7, v33, v34

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xd

    aput v24, v33, v34

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xe

    aput v26, v33, v34

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xf

    aput v29, v33, v34

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x10

    aput v31, v33, v34

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x11

    aput v7, v33, v34

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aput v24, v33, v34

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x13

    aput v25, v33, v34

    .line 161
    if-eqz v8, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget v17, v33, v34

    .line 163
    .local v17, "temp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    aget v35, v35, v36

    aput v35, v33, v34

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xd

    aput v17, v33, v34

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x8

    aget v17, v33, v34

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aget v35, v35, v36

    aput v35, v33, v34

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aput v17, v33, v34

    .line 169
    .end local v17    # "temp":F
    :cond_2
    if-eqz v9, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    aget v17, v33, v34

    .line 171
    .restart local v17    # "temp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    aget v35, v35, v36

    aput v35, v33, v34

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xe

    aput v17, v33, v34

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x9

    aget v17, v33, v34

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aget v35, v35, v36

    aput v35, v33, v34

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x13

    aput v17, v33, v34

    .line 177
    .end local v17    # "temp":F
    :cond_3
    if-eqz v13, :cond_4

    .line 178
    packed-switch v13, :pswitch_data_0

    .line 224
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-object/from16 v33, v0

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x14

    invoke-interface/range {v33 .. v37}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_2

    .line 180
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    aget v19, v33, v34

    .line 181
    .local v19, "tempV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    aget v35, v35, v36

    aput v35, v33, v34

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    aget v35, v35, v36

    aput v35, v33, v34

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aget v35, v35, v36

    aput v35, v33, v34

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x13

    aput v19, v33, v34

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget v18, v33, v34

    .line 187
    .local v18, "tempU":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    aget v35, v35, v36

    aput v35, v33, v34

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    aget v35, v35, v36

    aput v35, v33, v34

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aget v35, v35, v36

    aput v35, v33, v34

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aput v18, v33, v34

    goto/16 :goto_3

    .line 194
    .end local v18    # "tempU":F
    .end local v19    # "tempV":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget v18, v33, v34

    .line 195
    .restart local v18    # "tempU":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    aget v35, v35, v36

    aput v35, v33, v34

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xd

    aput v18, v33, v34

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x8

    aget v18, v33, v34

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aget v35, v35, v36

    aput v35, v33, v34

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aput v18, v33, v34

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    aget v19, v33, v34

    .line 201
    .restart local v19    # "tempV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    aget v35, v35, v36

    aput v35, v33, v34

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xe

    aput v19, v33, v34

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x9

    aget v19, v33, v34

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aget v35, v35, v36

    aput v35, v33, v34

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x13

    aput v19, v33, v34

    goto/16 :goto_3

    .line 209
    .end local v18    # "tempU":F
    .end local v19    # "tempV":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    aget v19, v33, v34

    .line 210
    .restart local v19    # "tempV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x13

    aget v35, v35, v36

    aput v35, v33, v34

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xe

    aget v35, v35, v36

    aput v35, v33, v34

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x9

    aget v35, v35, v36

    aput v35, v33, v34

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x9

    aput v19, v33, v34

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget v18, v33, v34

    .line 216
    .restart local v18    # "tempU":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x12

    aget v35, v35, v36

    aput v35, v33, v34

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0xd

    aget v35, v35, v36

    aput v35, v33, v34

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v35, v0

    const/16 v36, 0x8

    aget v35, v35, v36

    aput v35, v33, v34

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move-object/from16 v33, v0

    const/16 v34, 0x8

    aput v18, v33, v34

    goto/16 :goto_3

    .line 111
    .end local v3    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v8    # "flipX":Z
    .end local v9    # "flipY":Z
    .end local v12    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v13    # "rotations":I
    .end local v18    # "tempU":F
    .end local v19    # "tempV":F
    .end local v20    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v23    # "u1":F
    .end local v24    # "u2":F
    .end local v25    # "v1":F
    .end local v26    # "v2":F
    .end local v27    # "x":F
    .end local v28    # "x1":F
    .end local v29    # "x2":F
    .end local v30    # "y":F
    .end local v31    # "y1":F
    .end local v32    # "y2":F
    :cond_5
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 228
    .end local v4    # "col":I
    :cond_6
    return-void

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
