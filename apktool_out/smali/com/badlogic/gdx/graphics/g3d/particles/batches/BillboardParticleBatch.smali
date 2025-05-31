.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;
.super Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;
.source "BillboardParticleBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;,
        Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;",
        ">;"
    }
.end annotation


# static fields
.field private static final CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private static final CPU_COLOR_OFFSET:I

.field private static final CPU_POSITION_OFFSET:I

.field private static final CPU_UV_OFFSET:I

.field private static final CPU_VERTEX_SIZE:I

.field private static final GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private static final GPU_COLOR_OFFSET:I

.field private static final GPU_POSITION_OFFSET:I

.field private static final GPU_SIZE_ROTATION_OFFSET:I

.field private static final GPU_UV_OFFSET:I

.field private static final GPU_VERTEX_SIZE:I

.field private static final MAX_PARTICLES_PER_MESH:I = 0x1fff

.field private static final MAX_VERTICES_PER_MESH:I = 0x7ffc

.field protected static final TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V2:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V3:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V4:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V5:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V6:Lcom/badlogic/gdx/math/Vector3;

.field protected static final directionUsage:I = 0x400

.field protected static final sizeAndRotationUsage:I = 0x200


# instance fields
.field private currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private currentVertexSize:I

.field private indices:[S

.field protected mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field private renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

.field private renderables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

.field protected texture:Lcom/badlogic/gdx/graphics/Texture;

.field protected useGPU:Z

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V4:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V5:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-array v1, v8, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_position"

    invoke-direct {v3, v6, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_texCoord0"

    invoke-direct {v2, v9, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_color"

    invoke-direct {v2, v5, v8, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x200

    const-string v4, "a_sizeAndRotation"

    invoke-direct {v2, v3, v8, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-array v1, v7, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_position"

    invoke-direct {v3, v6, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_texCoord0"

    invoke-direct {v2, v9, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_color"

    invoke-direct {v2, v5, v8, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 61
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_POSITION_OFFSET:I

    .line 62
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_UV_OFFSET:I

    .line 63
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_SIZE_ROTATION_OFFSET:I

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_COLOR_OFFSET:I

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_VERTEX_SIZE:I

    .line 78
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    .line 79
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_UV_OFFSET:I

    .line 80
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_COLOR_OFFSET:I

    .line 81
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_VERTEX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 127
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V

    .line 128
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V
    .locals 2
    .param p1, "mode"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .param p2, "useGPU"    # Z
    .param p3, "capacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;-><init>(Ljava/lang/Class;)V

    .line 108
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    .line 110
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    .line 111
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    .line 119
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocIndices()V

    .line 120
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->initRenderData()V

    .line 121
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->ensureCapacity(I)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setUseGpu(Z)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    .line 124
    return-void
.end method

.method private allocIndices()V
    .locals 6

    .prologue
    .line 154
    const v1, 0xbffa

    .line 155
    .local v1, "indicesCount":I
    new-array v3, v1, [S

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "vertex":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 157
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    int-to-short v4, v2

    aput-short v4, v3, v0

    .line 158
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 159
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    add-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 160
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    add-int/lit8 v4, v0, 0x3

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 161
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    add-int/lit8 v4, v0, 0x4

    add-int/lit8 v5, v2, 0x3

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 162
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    add-int/lit8 v4, v0, 0x5

    int-to-short v5, v2

    aput-short v5, v3, v4

    .line 156
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method private allocRenderables(I)V
    .locals 6
    .param p1, "capacity"    # I

    .prologue
    .line 168
    div-int/lit16 v4, p1, 0x1fff

    int-to-float v4, v4

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v3

    .line 169
    .local v3, "meshCount":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->getFree()I

    move-result v0

    .line 170
    .local v0, "free":I
    if-ge v0, v3, :cond_0

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    sub-int v2, v3, v0

    .local v2, "left":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 172
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->free(Ljava/lang/Object;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    .end local v2    # "left":I
    :cond_0
    return-void
.end method

.method private allocShader()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderable()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    .line 185
    .local v0, "newRenderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->free(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method private clearRenderablesPool()V
    .locals 5

    .prologue
    .line 190
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->getFree()I

    move-result v0

    .local v0, "free":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 193
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 196
    return-void
.end method

.method private fillVerticesGPU([I)V
    .locals 56
    .param p1, "particlesOffset"    # [I

    .prologue
    .line 349
    const/16 v54, 0x0

    .line 350
    .local v54, "tp":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .local v44, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    .line 351
    .local v43, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v53, v0

    .line 352
    .local v53, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v48, v0

    .line 353
    .local v48, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v46, v0

    .line 354
    .local v46, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v41, v0

    .line 355
    .local v41, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v50, v0

    .line 356
    .local v50, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/16 v45, 0x0

    .local v45, "p":I
    move-object/from16 v0, v43

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v40, v0

    .local v40, "c":I
    :goto_0
    move/from16 v0, v45

    move/from16 v1, v40

    if-ge v0, v1, :cond_0

    .line 357
    aget v2, p1, v54

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v2, v9

    mul-int/lit8 v3, v2, 0x4

    .line 358
    .local v3, "baseOffset":I
    move-object/from16 v0, v53

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v0, v53

    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v9, v9, v45

    aget v52, v2, v9

    .line 359
    .local v52, "scale":F
    move-object/from16 v0, v48

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v49, v45, v2

    .line 360
    .local v49, "regionOffset":I
    move-object/from16 v0, v46

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v47, v45, v2

    .line 361
    .local v47, "positionOffset":I
    move-object/from16 v0, v41

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v42, v45, v2

    .line 362
    .local v42, "colorOffset":I
    move-object/from16 v0, v50

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v51, v45, v2

    .line 363
    .local v51, "rotationOffset":I
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v47, 0x0

    aget v4, v2, v9

    .line 364
    .local v4, "px":F
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v47, 0x1

    aget v5, v2, v9

    .line 365
    .local v5, "py":F
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v47, 0x2

    aget v6, v2, v9

    .line 366
    .local v6, "pz":F
    move-object/from16 v0, v48

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v49, 0x0

    aget v7, v2, v9

    .line 367
    .local v7, "u":F
    move-object/from16 v0, v48

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v49, 0x1

    aget v55, v2, v9

    .line 368
    .local v55, "v":F
    move-object/from16 v0, v48

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v49, 0x2

    aget v22, v2, v9

    .line 369
    .local v22, "u2":F
    move-object/from16 v0, v48

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v49, 0x3

    aget v8, v2, v9

    .line 370
    .local v8, "v2":F
    move-object/from16 v0, v48

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v49, 0x4

    aget v2, v2, v9

    mul-float v24, v2, v52

    .line 371
    .local v24, "sx":F
    move-object/from16 v0, v48

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v49, 0x5

    aget v2, v2, v9

    mul-float v33, v2, v52

    .line 372
    .local v33, "sy":F
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v42, 0x0

    aget v13, v2, v9

    .line 373
    .local v13, "r":F
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v42, 0x1

    aget v14, v2, v9

    .line 374
    .local v14, "g":F
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v42, 0x2

    aget v15, v2, v9

    .line 375
    .local v15, "b":F
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v42, 0x3

    aget v16, v2, v9

    .line 376
    .local v16, "a":F
    move-object/from16 v0, v50

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v51, 0x0

    aget v11, v2, v9

    .line 377
    .local v11, "cosRotation":F
    move-object/from16 v0, v50

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v51, 0x1

    aget v12, v2, v9

    .line 380
    .local v12, "sinRotation":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move/from16 v0, v24

    neg-float v9, v0

    move/from16 v0, v33

    neg-float v10, v0

    invoke-static/range {v2 .. v16}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 381
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v3, v2

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v17, v0

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v23, v8

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v16

    invoke-static/range {v17 .. v31}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 383
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v3, v2

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v23, v55

    move/from16 v25, v33

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v16

    invoke-static/range {v17 .. v31}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 385
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v3, v2

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v25, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v55

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    move/from16 v39, v16

    invoke-static/range {v25 .. v39}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 387
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v2, v3

    .line 356
    add-int/lit8 v45, v45, 0x1

    add-int/lit8 v54, v54, 0x1

    goto/16 :goto_0

    .line 390
    .end local v3    # "baseOffset":I
    .end local v4    # "px":F
    .end local v5    # "py":F
    .end local v6    # "pz":F
    .end local v7    # "u":F
    .end local v8    # "v2":F
    .end local v11    # "cosRotation":F
    .end local v12    # "sinRotation":F
    .end local v13    # "r":F
    .end local v14    # "g":F
    .end local v15    # "b":F
    .end local v16    # "a":F
    .end local v22    # "u2":F
    .end local v24    # "sx":F
    .end local v33    # "sy":F
    .end local v40    # "c":I
    .end local v41    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v42    # "colorOffset":I
    .end local v43    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v45    # "p":I
    .end local v46    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v47    # "positionOffset":I
    .end local v48    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v49    # "regionOffset":I
    .end local v50    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v51    # "rotationOffset":I
    .end local v52    # "scale":F
    .end local v53    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v55    # "v":F
    :cond_1
    return-void
.end method

.method private fillVerticesToScreenCPU([I)V
    .locals 51
    .param p1, "particlesOffset"    # [I

    .prologue
    .line 570
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v31

    .line 571
    .local v31, "look":Lcom/badlogic/gdx/math/Vector3;
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V4:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v40

    .line 572
    .local v40, "right":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v49, v0

    .line 574
    .local v49, "up":Lcom/badlogic/gdx/math/Vector3;
    const/16 v48, 0x0

    .line 575
    .local v48, "tp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    .line 576
    .local v29, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v44, v0

    .line 577
    .local v44, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v38, v0

    .line 578
    .local v38, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v33, v0

    .line 579
    .local v33, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    .line 580
    .local v26, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v41, v0

    .line 582
    .local v41, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/16 v32, 0x0

    .local v32, "p":I
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v25, v0

    .local v25, "c":I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 583
    aget v3, p1, v48

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v3, v5

    mul-int/lit8 v4, v3, 0x4

    .line 584
    .local v4, "baseOffset":I
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v0, v44

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v5, v5, v32

    aget v43, v3, v5

    .line 585
    .local v43, "scale":F
    move-object/from16 v0, v38

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v39, v32, v3

    .line 586
    .local v39, "regionOffset":I
    move-object/from16 v0, v33

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v34, v32, v3

    .line 587
    .local v34, "positionOffset":I
    move-object/from16 v0, v26

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v27, v32, v3

    .line 588
    .local v27, "colorOffset":I
    move-object/from16 v0, v41

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v42, v32, v3

    .line 589
    .local v42, "rotationOffset":I
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v34, 0x0

    aget v35, v3, v5

    .line 590
    .local v35, "px":F
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v34, 0x1

    aget v36, v3, v5

    .line 591
    .local v36, "py":F
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v34, 0x2

    aget v37, v3, v5

    .line 592
    .local v37, "pz":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x0

    aget v6, v3, v5

    .line 593
    .local v6, "u":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x1

    aget v50, v3, v5

    .line 594
    .local v50, "v":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x2

    aget v15, v3, v5

    .line 595
    .local v15, "u2":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x3

    aget v7, v3, v5

    .line 596
    .local v7, "v2":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x4

    aget v3, v3, v5

    mul-float v46, v3, v43

    .line 597
    .local v46, "sx":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x5

    aget v3, v3, v5

    mul-float v47, v3, v43

    .line 598
    .local v47, "sy":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x0

    aget v8, v3, v5

    .line 599
    .local v8, "r":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x1

    aget v9, v3, v5

    .line 600
    .local v9, "g":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x2

    aget v10, v3, v5

    .line 601
    .local v10, "b":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x3

    aget v11, v3, v5

    .line 602
    .local v11, "a":F
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v42, 0x0

    aget v28, v3, v5

    .line 603
    .local v28, "cosRotation":F
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v42, 0x1

    aget v45, v3, v5

    .line 604
    .local v45, "sinRotation":F
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 605
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 607
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v28, v3

    if-eqz v3, :cond_1

    .line 608
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v45

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v12, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v14, v14

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    invoke-virtual {v5, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v5, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 610
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 611
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 612
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    add-float v14, v14, v16

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v50

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 614
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v16, v0

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v5, v5

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v12

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v12, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v13, v14

    invoke-virtual {v3, v5, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v18

    move/from16 v17, v4

    move/from16 v19, v6

    move/from16 v20, v50

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-static/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 582
    :goto_1
    add-int/lit8 v32, v32, 0x1

    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0

    .line 618
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v12, v13

    add-float v12, v12, v35

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    add-float v13, v13, v36

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v14, v14

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    add-float v14, v14, v37

    invoke-virtual {v5, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 619
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v13

    add-float v5, v5, v35

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    add-float v13, v13, v36

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    add-float v14, v14, v37

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 621
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 622
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v13

    add-float v5, v5, v35

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    add-float v13, v13, v36

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    add-float v14, v14, v16

    add-float v14, v14, v37

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v50

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 623
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v16, v0

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v5, v5

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v12

    add-float v5, v5, v35

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v12, v13

    add-float v12, v12, v36

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v13, v14

    add-float v13, v13, v37

    invoke-virtual {v3, v5, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v18

    move/from16 v17, v4

    move/from16 v19, v6

    move/from16 v20, v50

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-static/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    goto/16 :goto_1

    .line 628
    .end local v4    # "baseOffset":I
    .end local v6    # "u":F
    .end local v7    # "v2":F
    .end local v8    # "r":F
    .end local v9    # "g":F
    .end local v10    # "b":F
    .end local v11    # "a":F
    .end local v15    # "u2":F
    .end local v25    # "c":I
    .end local v26    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v27    # "colorOffset":I
    .end local v28    # "cosRotation":F
    .end local v29    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v32    # "p":I
    .end local v33    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v34    # "positionOffset":I
    .end local v35    # "px":F
    .end local v36    # "py":F
    .end local v37    # "pz":F
    .end local v38    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v39    # "regionOffset":I
    .end local v41    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v42    # "rotationOffset":I
    .end local v43    # "scale":F
    .end local v44    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v45    # "sinRotation":F
    .end local v46    # "sx":F
    .end local v47    # "sy":F
    .end local v50    # "v":F
    :cond_2
    return-void
.end method

.method private fillVerticesToViewPointCPU([I)V
    .locals 51
    .param p1, "particlesOffset"    # [I

    .prologue
    .line 510
    const/16 v48, 0x0

    .line 511
    .local v48, "tp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    .line 512
    .local v29, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v44, v0

    .line 513
    .local v44, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v38, v0

    .line 514
    .local v38, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v33, v0

    .line 515
    .local v33, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    .line 516
    .local v26, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v41, v0

    .line 518
    .local v41, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/16 v32, 0x0

    .local v32, "p":I
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v25, v0

    .local v25, "c":I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 519
    aget v3, p1, v48

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v3, v5

    mul-int/lit8 v4, v3, 0x4

    .line 520
    .local v4, "baseOffset":I
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v0, v44

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v5, v5, v32

    aget v43, v3, v5

    .line 521
    .local v43, "scale":F
    move-object/from16 v0, v38

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v39, v32, v3

    .line 522
    .local v39, "regionOffset":I
    move-object/from16 v0, v33

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v34, v32, v3

    .line 523
    .local v34, "positionOffset":I
    move-object/from16 v0, v26

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v27, v32, v3

    .line 524
    .local v27, "colorOffset":I
    move-object/from16 v0, v41

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v42, v32, v3

    .line 525
    .local v42, "rotationOffset":I
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v34, 0x0

    aget v35, v3, v5

    .line 526
    .local v35, "px":F
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v34, 0x1

    aget v36, v3, v5

    .line 527
    .local v36, "py":F
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v34, 0x2

    aget v37, v3, v5

    .line 528
    .local v37, "pz":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x0

    aget v6, v3, v5

    .line 529
    .local v6, "u":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x1

    aget v50, v3, v5

    .line 530
    .local v50, "v":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x2

    aget v15, v3, v5

    .line 531
    .local v15, "u2":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x3

    aget v7, v3, v5

    .line 532
    .local v7, "v2":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x4

    aget v3, v3, v5

    mul-float v46, v3, v43

    .line 533
    .local v46, "sx":F
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v39, 0x5

    aget v3, v3, v5

    mul-float v47, v3, v43

    .line 534
    .local v47, "sy":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x0

    aget v8, v3, v5

    .line 535
    .local v8, "r":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x1

    aget v9, v3, v5

    .line 536
    .local v9, "g":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x2

    aget v10, v3, v5

    .line 537
    .local v10, "b":F
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v27, 0x3

    aget v11, v3, v5

    .line 538
    .local v11, "a":F
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v42, 0x0

    aget v28, v3, v5

    .line 539
    .local v28, "cosRotation":F
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v42, 0x1

    aget v45, v3, v5

    .line 540
    .local v45, "sinRotation":F
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v31

    .line 541
    .local v31, "look":Lcom/badlogic/gdx/math/Vector3;
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v40

    .line 542
    .local v40, "right":Lcom/badlogic/gdx/math/Vector3;
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v49

    .line 543
    .local v49, "up":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 544
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 546
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v28, v3

    if-eqz v3, :cond_1

    .line 547
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v45

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v12, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v14, v14

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    invoke-virtual {v5, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v5, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 549
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 550
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 551
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    add-float v14, v14, v16

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v50

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 553
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v16, v0

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v5, v5

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v12

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v12, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v13, v14

    invoke-virtual {v3, v5, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v18

    move/from16 v17, v4

    move/from16 v19, v6

    move/from16 v20, v50

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-static/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 518
    :goto_1
    add-int/lit8 v32, v32, 0x1

    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0

    .line 557
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v12, v13

    add-float v12, v12, v35

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    add-float v13, v13, v36

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v14, v14

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    add-float v14, v14, v37

    invoke-virtual {v5, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 558
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v13

    add-float v5, v5, v35

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    add-float v13, v13, v36

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    add-float v14, v14, v37

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 560
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v13

    add-float v5, v5, v35

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    add-float v13, v13, v36

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    add-float v14, v14, v16

    add-float v14, v14, v37

    invoke-virtual {v3, v5, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v4

    move/from16 v16, v50

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 562
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v4, v3

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v16, v0

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v5, v5

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v5, v12

    add-float v5, v5, v35

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v12, v13

    add-float v12, v12, v36

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v13, v14

    add-float v13, v13, v37

    invoke-virtual {v3, v5, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v18

    move/from16 v17, v4

    move/from16 v19, v6

    move/from16 v20, v50

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-static/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    goto/16 :goto_1

    .line 567
    .end local v4    # "baseOffset":I
    .end local v6    # "u":F
    .end local v7    # "v2":F
    .end local v8    # "r":F
    .end local v9    # "g":F
    .end local v10    # "b":F
    .end local v11    # "a":F
    .end local v15    # "u2":F
    .end local v25    # "c":I
    .end local v26    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v27    # "colorOffset":I
    .end local v28    # "cosRotation":F
    .end local v29    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v31    # "look":Lcom/badlogic/gdx/math/Vector3;
    .end local v32    # "p":I
    .end local v33    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v34    # "positionOffset":I
    .end local v35    # "px":F
    .end local v36    # "py":F
    .end local v37    # "pz":F
    .end local v38    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v39    # "regionOffset":I
    .end local v40    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v41    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v42    # "rotationOffset":I
    .end local v43    # "scale":F
    .end local v44    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v45    # "sinRotation":F
    .end local v46    # "sx":F
    .end local v47    # "sy":F
    .end local v49    # "up":Lcom/badlogic/gdx/math/Vector3;
    .end local v50    # "v":F
    :cond_2
    return-void
.end method

.method private getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .locals 3
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 177
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V

    .line 179
    .local v0, "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    :goto_0
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    .line 180
    return-object v0

    .line 177
    .end local v0    # "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    goto :goto_0
.end method

.method private initRenderData()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setVertexData()V

    .line 224
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->clearRenderablesPool()V

    .line 225
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocShader()V

    .line 226
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->resetCapacity()V

    .line 227
    return-void
.end method

.method private static putVertex([FIFFFFFFFFFFFFF)V
    .locals 1
    .param p0, "vertices"    # [F
    .param p1, "offset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "u"    # F
    .param p6, "v"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F
    .param p9, "cosRotation"    # F
    .param p10, "sinRotation"    # F
    .param p11, "r"    # F
    .param p12, "g"    # F
    .param p13, "b"    # F
    .param p14, "a"    # F

    .prologue
    .line 285
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    aput p2, p0, v0

    .line 286
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    .line 287
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    aput p4, p0, v0

    .line 289
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_UV_OFFSET:I

    add-int/2addr v0, p1

    aput p5, p0, v0

    .line 290
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_UV_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p6, p0, v0

    .line 292
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_SIZE_ROTATION_OFFSET:I

    add-int/2addr v0, p1

    aput p7, p0, v0

    .line 293
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_SIZE_ROTATION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p8, p0, v0

    .line 294
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_SIZE_ROTATION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    aput p9, p0, v0

    .line 295
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_SIZE_ROTATION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p10, p0, v0

    .line 297
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    aput p11, p0, v0

    .line 298
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p12, p0, v0

    .line 299
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    aput p13, p0, v0

    .line 300
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p14, p0, v0

    .line 301
    return-void
.end method

.method private static putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V
    .locals 2
    .param p0, "vertices"    # [F
    .param p1, "offset"    # I
    .param p2, "p"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "u"    # F
    .param p4, "v"    # F
    .param p5, "r"    # F
    .param p6, "g"    # F
    .param p7, "b"    # F
    .param p8, "a"    # F

    .prologue
    .line 335
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p0, v0

    .line 336
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    .line 337
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    .line 339
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_UV_OFFSET:I

    add-int/2addr v0, p1

    aput p3, p0, v0

    .line 340
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_UV_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p4, p0, v0

    .line 342
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    aput p5, p0, v0

    .line 343
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p6, p0, v0

    .line 344
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    aput p7, p0, v0

    .line 345
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_COLOR_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p8, p0, v0

    .line 346
    return-void
.end method


# virtual methods
.method public allocParticlesData(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    .line 137
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderables(I)V

    .line 138
    return-void
.end method

.method protected allocRenderable()Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;-><init>()V

    .line 142
    .local v0, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    const/4 v1, 0x4

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->primitiveType:I

    .line 143
    iput v6, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartOffset:I

    .line 144
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/16 v4, 0x303

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    const/16 v4, 0x203

    invoke-direct {v3, v4, v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IZ)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 147
    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    const/16 v2, 0x7ffc

    const v3, 0xbffa

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v1, v6, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 148
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 149
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 150
    return-object v0
.end method

.method public begin()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->begin()V

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 279
    return-void
.end method

.method protected flush([I)V
    .locals 8
    .param p1, "offsets"    # [I

    .prologue
    .line 634
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v4, :cond_1

    .line 636
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->fillVerticesGPU([I)V

    .line 650
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 651
    .local v0, "addedVertexCount":I
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->bufferedParticlesCount:I

    mul-int/lit8 v3, v4, 0x4

    .line 652
    .local v3, "vCount":I
    const/4 v2, 0x0

    .local v2, "v":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 653
    sub-int v4, v3, v2

    const/16 v5, 0x7ffc

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 654
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 655
    .local v1, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    div-int/lit8 v4, v0, 0x4

    mul-int/lit8 v4, v4, 0x6

    iput v4, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartSize:I

    .line 656
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v6, v2

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 657
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 652
    add-int/2addr v2, v0

    goto :goto_1

    .line 641
    .end local v0    # "addedVertexCount":I
    .end local v1    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v2    # "v":I
    .end local v3    # "vCount":I
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v4, v5, :cond_2

    .line 642
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->fillVerticesToScreenCPU([I)V

    goto :goto_0

    .line 643
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v4, v5, :cond_0

    .line 644
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->fillVerticesToViewPointCPU([I)V

    goto :goto_0

    .line 659
    .restart local v0    # "addedVertexCount":I
    .restart local v2    # "v":I
    .restart local v3    # "vCount":I
    :cond_3
    return-void
.end method

.method public getAlignMode()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
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
    .line 663
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 664
    .local v1, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g3d/Renderable;->set(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 665
    .end local v1    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_0
    return-void
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public isUseGPU()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 676
    const-string v2, "billboardBatch"

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v1

    .line 677
    .local v1, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 679
    const-string v2, "cfg"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;

    .line 680
    .local v0, "cfg":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->useGPU:Z

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setUseGpu(Z)V

    .line 681
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    .line 683
    .end local v0    # "cfg":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;
    :cond_0
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 669
    const-string v1, "billboardBatch"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 670
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    const-string v1, "cfg"

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;

    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;-><init>(ZLcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    .line 672
    return-void
.end method

.method public setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-eq p1, v0, :cond_0

    .line 233
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 234
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->initRenderData()V

    .line 236
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->bufferedParticlesCount:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderables(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 8
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 260
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 261
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 262
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->getFree()I

    move-result v1

    .local v1, "free":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 263
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 264
    .local v3, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .line 265
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p1, v4, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .end local v3    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 268
    return-void
.end method

.method public setUseGpu(Z)V
    .locals 1
    .param p1, "useGPU"    # Z

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eq v0, p1, :cond_0

    .line 249
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    .line 250
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->initRenderData()V

    .line 251
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->bufferedParticlesCount:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderables(I)V

    .line 253
    :cond_0
    return-void
.end method

.method public setVertexData()V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 202
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_VERTEX_SIZE:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 216
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_VERTEX_SIZE:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    goto :goto_0
.end method
