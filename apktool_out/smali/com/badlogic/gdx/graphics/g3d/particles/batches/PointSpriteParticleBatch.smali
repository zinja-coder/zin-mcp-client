.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;
.super Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;
.source "PointSpriteParticleBatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;",
        ">;"
    }
.end annotation


# static fields
.field protected static final CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field protected static final CPU_COLOR_OFFSET:I

.field protected static final CPU_POSITION_OFFSET:I

.field protected static final CPU_REGION_OFFSET:I

.field protected static final CPU_SIZE_AND_ROTATION_OFFSET:I

.field protected static final CPU_VERTEX_SIZE:I

.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;

.field private static pointSpritesEnabled:Z = false

.field protected static final sizeAndRotationUsage:I = 0x200


# instance fields
.field renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 32
    sput-boolean v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->pointSpritesEnabled:Z

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-array v1, v8, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_position"

    invoke-direct {v2, v5, v7, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_color"

    invoke-direct {v2, v6, v8, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x10

    const-string v4, "a_region"

    invoke-direct {v2, v3, v8, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x200

    const-string v4, "a_sizeAndRotation"

    invoke-direct {v2, v3, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 40
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    .line 41
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_POSITION_OFFSET:I

    .line 42
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_COLOR_OFFSET:I

    .line 43
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_REGION_OFFSET:I

    .line 44
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_SIZE_AND_ROTATION_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "capacity"    # I

    .prologue
    .line 62
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;-><init>(Ljava/lang/Class;)V

    .line 64
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->pointSpritesEnabled:Z

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->enablePointSprites()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->allocRenderable()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->ensureCapacity(I)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Point:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;)V

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    .line 71
    return-void
.end method

.method private static enablePointSprites()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8642

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 48
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    .line 49
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8861

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 51
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->pointSpritesEnabled:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected allocParticlesData(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v1, v3, p1, v3, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 79
    return-void
.end method

.method protected allocRenderable()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iput v6, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->primitiveType:I

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iput v6, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartOffset:I

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/16 v4, 0x303

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    aput-object v0, v3, v6

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    const/16 v4, 0x203

    invoke-direct {v0, v4, v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IZ)V

    aput-object v0, v3, v7

    const/4 v4, 0x2

    const/4 v0, 0x0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 88
    return-void
.end method

.method protected flush([I)V
    .locals 20
    .param p1, "offsets"    # [I

    .prologue
    .line 102
    const/4 v14, 0x0

    .line 103
    .local v14, "tp":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    .line 104
    .local v3, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;
    iget-object v13, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 105
    .local v13, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v9, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 106
    .local v9, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 107
    .local v7, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 108
    .local v1, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v11, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 110
    .local v11, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_0
    iget-object v15, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v6, v15, :cond_0

    .line 111
    aget v15, p1, v14

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    mul-int v5, v15, v16

    .line 112
    .local v5, "offset":I
    iget v15, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v10, v6, v15

    .line 113
    .local v10, "regionOffset":I
    iget v15, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v8, v6, v15

    .line 114
    .local v8, "positionOffset":I
    iget v15, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v2, v6, v15

    .line 115
    .local v2, "colorOffset":I
    iget v15, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v12, v6, v15

    .line 117
    .local v12, "rotationOffset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_POSITION_OFFSET:I

    add-int v16, v16, v5

    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x0

    aget v17, v17, v18

    aput v17, v15, v16

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_POSITION_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x1

    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_POSITION_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x2

    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x2

    aget v17, v17, v18

    aput v17, v15, v16

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_COLOR_OFFSET:I

    add-int v16, v16, v5

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x0

    aget v17, v17, v18

    aput v17, v15, v16

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_COLOR_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x1

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_COLOR_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x2

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x2

    aget v17, v17, v18

    aput v17, v15, v16

    .line 123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_COLOR_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x3

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x3

    aget v17, v17, v18

    aput v17, v15, v16

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_SIZE_AND_ROTATION_OFFSET:I

    add-int v16, v16, v5

    iget-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    iget v0, v13, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v18, v0

    mul-int v18, v18, v6

    aget v17, v17, v18

    aput v17, v15, v16

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_SIZE_AND_ROTATION_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x1

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v12, 0x0

    aget v17, v17, v18

    aput v17, v15, v16

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_SIZE_AND_ROTATION_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x2

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v12, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_REGION_OFFSET:I

    add-int v16, v16, v5

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x0

    aget v17, v17, v18

    aput v17, v15, v16

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_REGION_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x1

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_REGION_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x2

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x2

    aget v17, v17, v18

    aput v17, v15, v16

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_REGION_OFFSET:I

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0x3

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x3

    aget v17, v17, v18

    aput v17, v15, v16

    .line 110
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 134
    .end local v1    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v2    # "colorOffset":I
    .end local v3    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;
    .end local v5    # "offset":I
    .end local v6    # "p":I
    .end local v7    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v8    # "positionOffset":I
    .end local v9    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v10    # "regionOffset":I
    .end local v11    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v12    # "rotationOffset":I
    .end local v13    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->bufferedParticlesCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartSize:I

    .line 135
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->bufferedParticlesCount:I

    move/from16 v18, v0

    sget v19, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    mul-int v18, v18, v19

    invoke-virtual/range {v15 .. v18}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 136
    return-void
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->bufferedParticlesCount:I

    if-lez v0, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Renderable;->set(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 142
    :cond_0
    return-void
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .line 97
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    return-object v1
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 152
    const-string v1, "pointSpriteBatch"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 153
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 155
    :cond_0
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 146
    const-string v1, "pointSpriteBatch"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 147
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    .line 148
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 4
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .line 92
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 93
    return-void
.end method
