.class public Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
.super Ljava/lang/Object;
.source "MeshBuilder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;


# static fields
.field private static indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

.field private static final matrices4Array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field private static final matrices4Pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field private static final tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private static final tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final vTmp:Lcom/badlogic/gdx/math/Vector3;

.field private static final vectorArray:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field private static final vectorPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private colOffset:I

.field private colSize:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private cpOffset:I

.field private hasColor:Z

.field private hasUVTransform:Z

.field private indices:Lcom/badlogic/gdx/utils/ShortArray;

.field private istart:I

.field private lastIndex:S

.field private final matTmp1:Lcom/badlogic/gdx/math/Matrix4;

.field private norOffset:I

.field private final normalTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

.field private parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field private posOffset:I

.field private posSize:I

.field private final positionTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private primitiveType:I

.field private stride:I

.field private final tempC1:Lcom/badlogic/gdx/graphics/Color;

.field private final tempV1:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV2:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV3:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV4:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV5:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV6:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV7:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV8:Lcom/badlogic/gdx/math/Vector3;

.field private final tmpNormal:Lcom/badlogic/gdx/math/Vector3;

.field private uOffset:F

.field private uScale:F

.field private uvOffset:I

.field private vOffset:F

.field private vScale:F

.field private final vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp8:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private vertex:[F

.field private vertexTransformationEnabled:Z

.field private vertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private vindex:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorPool:Lcom/badlogic/gdx/utils/Pool;

    .line 272
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    .line 273
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Pool:Lcom/badlogic/gdx/utils/Pool;

    .line 280
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    .line 453
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    .line 1241
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp8:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV3:Lcom/badlogic/gdx/math/Vector3;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV4:Lcom/badlogic/gdx/math/Vector3;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV5:Lcom/badlogic/gdx/math/Vector3;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV6:Lcom/badlogic/gdx/math/Vector3;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV7:Lcom/badlogic/gdx/math/Vector3;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV8:Lcom/badlogic/gdx/math/Vector3;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 101
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 103
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 104
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    .line 108
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 109
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 112
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 113
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 446
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    .line 511
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private addMesh([F[SII)V
    .locals 5
    .param p1, "vertices"    # [F
    .param p2, "indices"    # [S
    .param p3, "indexOffset"    # I
    .param p4, "numIndices"    # I

    .prologue
    .line 1244
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez v3, :cond_1

    .line 1245
    new-instance v3, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v3, p4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    sput-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 1250
    :goto_0
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 1251
    array-length v3, p1

    if-ge v3, p4, :cond_2

    array-length v3, p1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 1252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p4, :cond_3

    .line 1253
    aget-short v2, p2, v1

    .line 1254
    .local v2, "sidx":I
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v0

    .line 1255
    .local v0, "didx":I
    if-gez v0, :cond_0

    .line 1256
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v3, v2

    invoke-direct {p0, p1, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 1257
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    invoke-virtual {v3, v2, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 1259
    :cond_0
    int-to-short v3, v0

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    .line 1252
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1247
    .end local v0    # "didx":I
    .end local v1    # "i":I
    .end local v2    # "sidx":I
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 1248
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v3, p4}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    goto :goto_0

    :cond_2
    move v3, p4

    .line 1251
    goto :goto_1

    .line 1261
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method private final addVertex([FI)V
    .locals 7
    .param p1, "values"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x3

    .line 484
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 485
    .local v0, "o":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    .line 486
    iget-short v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    iput-short v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    .line 488
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V

    .line 490
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 493
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-eqz v1, :cond_1

    .line 494
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v2, v0

    aget v3, v1, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 496
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget v3, v1, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 497
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    aget v3, v1, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 498
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    if-le v1, v5, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x3

    aget v3, v1, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 505
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v6, v0

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 507
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 509
    :cond_2
    return-void

    .line 499
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-ltz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr v5, v0

    aget v4, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorPool:Lcom/badlogic/gdx/utils/Pool;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 304
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 305
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Pool:Lcom/badlogic/gdx/utils/Pool;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 306
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 307
    return-void
.end method

.method public static createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 14
    .param p0, "usage"    # J

    .prologue
    const-wide/16 v12, 0x2

    const-wide/16 v6, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    .line 119
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 120
    .local v1, "attrs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    and-long v4, p0, v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x1

    const-string v5, "a_position"

    invoke-direct {v3, v4, v10, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 122
    :cond_0
    and-long v4, p0, v12

    cmp-long v3, v4, v12

    if-nez v3, :cond_1

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_color"

    invoke-direct {v3, v9, v8, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 123
    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v4, p0

    const-wide/16 v6, 0x4

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 124
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_color"

    invoke-direct {v3, v8, v8, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 125
    :cond_2
    const-wide/16 v4, 0x8

    and-long/2addr v4, p0

    const-wide/16 v6, 0x8

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 126
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v4, 0x8

    const-string v5, "a_normal"

    invoke-direct {v3, v4, v10, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 127
    :cond_3
    const-wide/16 v4, 0x10

    and-long/2addr v4, p0

    const-wide/16 v6, 0x10

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 128
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v4, 0x10

    const-string v5, "a_texCoord0"

    invoke-direct {v3, v4, v9, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 129
    :cond_4
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v0, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 130
    .local v0, "attributes":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 131
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v3, v0, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_5
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-object v3
.end method

.method private endpart()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 192
    :cond_0
    return-void
.end method

.method private tmp()Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .prologue
    .line 293
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 294
    .local v0, "result":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 295
    return-object v0
.end method

.method private tmp(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method private tmp(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 283
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 284
    .local v0, "result":Lcom/badlogic/gdx/math/Vector3;
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 285
    return-object v0
.end method

.method private tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 289
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method private static final transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V
    .locals 4
    .param p0, "values"    # [F
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "transform"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    const/4 v3, 0x0

    .line 470
    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 471
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 472
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 473
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    .line 474
    add-int/lit8 v0, p1, 0x2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    .line 481
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 476
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 477
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 478
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    goto :goto_0

    .line 480
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {v0, v1, v3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    goto :goto_0
.end method

.method private static final transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V
    .locals 4
    .param p0, "values"    # [F
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 457
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 458
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 459
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    .line 460
    add-int/lit8 v0, p1, 0x2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    .line 467
    :goto_0
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 462
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 463
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 464
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    goto :goto_0

    .line 466
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {v0, v1, v3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 2
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;

    .prologue
    .line 1212
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    .line 1213
    return-void
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V
    .locals 4
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "indexOffset"    # I
    .param p3, "numIndices"    # I

    .prologue
    const/4 v3, 0x0

    .line 1223
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Vertex attributes do not match"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1224
    :cond_0
    if-gtz p3, :cond_1

    .line 1239
    :goto_0
    return-void

    .line 1227
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v0, v1, v2

    .line 1228
    .local v0, "numFloats":I
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 1229
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    .line 1230
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iput v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 1231
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 1233
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 1234
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 1235
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iput p3, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 1236
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p1, p2, p3, v1, v3}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 1238
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-direct {p0, v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh([F[SII)V

    goto :goto_0
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .locals 3
    .param p1, "meshpart"    # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .prologue
    .line 1217
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Primitive type doesn\'t match"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    .line 1219
    return-void
.end method

.method public arrow(FFFFFFFFI)V
    .locals 24
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "capLength"    # F
    .param p8, "stemThickness"    # F
    .param p9, "divisions"    # I

    .prologue
    .line 1167
    invoke-direct/range {p0 .. p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    .local v4, "begin":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 1168
    .local v8, "end":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v11

    .line 1169
    .local v11, "length":F
    mul-float v6, v11, p7

    .line 1170
    .local v6, "coneHeight":F
    const/high16 v19, 0x40000000    # 2.0f

    float-to-double v0, v6

    move-wide/from16 v20, v0

    const-wide v22, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v5, v19, v20

    .line 1171
    .local v5, "coneDiameter":F
    sub-float v13, v11, v6

    .line 1172
    .local v13, "stemLength":F
    mul-float v12, v5, p8

    .line 1174
    .local v12, "stemDiameter":F
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    .line 1175
    .local v16, "up":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    sget-object v20, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v19 .. v20}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    .line 1176
    .local v9, "forward":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->isZero()Z

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 1177
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    .line 1179
    .local v10, "left":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    .line 1182
    .local v7, "direction":Lcom/badlogic/gdx/math/Vector3;
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v17

    .line 1183
    .local v17, "userTransform":Lcom/badlogic/gdx/math/Matrix4;
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v15

    .line 1184
    .local v15, "transform":Lcom/badlogic/gdx/math/Matrix4;
    iget-object v0, v15, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    move-object/from16 v18, v0

    .line 1185
    .local v18, "val":[F
    const/16 v19, 0x0

    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1186
    const/16 v19, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1187
    const/16 v19, 0x8

    iget v0, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1188
    const/16 v19, 0x1

    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1189
    const/16 v19, 0x5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1190
    const/16 v19, 0x9

    iget v0, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1191
    const/16 v19, 0x2

    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1192
    const/16 v19, 0x6

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1193
    const/16 v19, 0xa

    iget v0, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1194
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v14

    .line 1197
    .local v14, "temp":Lcom/badlogic/gdx/math/Matrix4;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1198
    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1199
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v12, v13, v12, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFI)V

    .line 1202
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1203
    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1204
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v5, v6, v5, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFI)V

    .line 1206
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cleanup()V

    .line 1208
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "attributes"    # J

    .prologue
    .line 139
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    .line 140
    return-void
.end method

.method public begin(JI)V
    .locals 1
    .param p1, "attributes"    # J
    .param p3, "primitiveType"    # I

    .prologue
    .line 151
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    .line 152
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1
    .param p1, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .prologue
    .line 144
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    .line 145
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V
    .locals 5
    .param p1, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;
    .param p2, "primitiveType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Call end() first"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 158
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 159
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 161
    iput-short v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    .line 162
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    .line 163
    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 164
    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    .line 165
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    .line 166
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 167
    .local v0, "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v0, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Cannot build mesh without position attribute"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    .line 169
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    .line 170
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 171
    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    .line 172
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 173
    if-nez v0, :cond_3

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    .line 174
    if-nez v0, :cond_4

    move v1, v3

    :goto_2
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    .line 175
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 176
    if-nez v0, :cond_5

    move v1, v2

    :goto_3
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    .line 177
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 178
    if-nez v0, :cond_6

    :goto_4
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    .line 179
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 180
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 181
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 182
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 183
    return-void

    .line 171
    :cond_2
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 173
    :cond_3
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 174
    :cond_4
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    goto :goto_2

    .line 176
    :cond_5
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    goto :goto_3

    .line 178
    :cond_6
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v2, v1, 0x4

    goto :goto_4
.end method

.method public box(FFF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F

    .prologue
    .line 801
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 802
    return-void
.end method

.method public box(FFFFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "depth"    # F

    .prologue
    .line 806
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->trn(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 807
    return-void
.end method

.method public box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 11
    .param p1, "corner000"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "corner010"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "corner100"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p4, "corner110"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p5, "corner001"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p6, "corner011"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p7, "corner101"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p8, "corner111"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .prologue
    .line 739
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 740
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    .line 741
    .local v2, "i000":S
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v8

    .line 742
    .local v8, "i100":S
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    .line 743
    .local v6, "i110":S
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v4

    .line 744
    .local v4, "i010":S
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v3

    .line 745
    .local v3, "i001":S
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v9

    .line 746
    .local v9, "i101":S
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v7

    .line 747
    .local v7, "i111":S
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v5

    .line 749
    .local v5, "i011":S
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 750
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 751
    invoke-virtual {p0, v2, v8, v6, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 752
    invoke-virtual {p0, v9, v3, v5, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    move-object v1, p0

    .line 753
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    .line 767
    :goto_0
    return-void

    .line 754
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v1, :cond_1

    .line 755
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    .line 756
    invoke-virtual {p0, v2, v8, v6, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 757
    invoke-virtual {p0, v9, v3, v5, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    goto :goto_0

    .line 759
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    .line 760
    invoke-virtual {p0, v2, v8, v6, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 761
    invoke-virtual {p0, v9, v3, v5, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 762
    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 763
    invoke-virtual {p0, v9, v7, v6, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 764
    invoke-virtual {p0, v9, v8, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 765
    invoke-virtual {p0, v6, v7, v5, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    goto :goto_0
.end method

.method public box(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 9
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, -0x41000000    # -0.5f

    .line 793
    invoke-direct {p0, v7, v7, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-direct {p0, v7, v8, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-direct {p0, v8, v7, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-direct {p0, v8, v8, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-direct {p0, v7, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-direct {p0, v7, v8, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-direct {p0, v8, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-direct {p0, v8, v8, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 796
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cleanup()V

    .line 797
    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 13
    .param p1, "corner000"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "corner010"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "corner100"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "corner110"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "corner001"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "corner011"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "corner101"    # Lcom/badlogic/gdx/math/Vector3;
    .param p8, "corner111"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 772
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-gez v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v4, v5, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v5, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v1, v0, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v1, v0, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp8:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v1, v0, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 789
    :goto_0
    return-void

    .line 778
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(I)V

    .line 779
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .local v6, "nor":Lcom/badlogic/gdx/math/Vector3;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    .line 780
    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 781
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 782
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p7

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    .line 783
    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 784
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    move-object v7, p0

    move-object v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 785
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p6

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, p2

    move-object v5, p1

    .line 786
    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 787
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    goto/16 :goto_0
.end method

.method public capsule(FFI)V
    .locals 13
    .param p1, "radius"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I

    .prologue
    .line 1157
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Height must be at least twice the radius"

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, v0, p1

    .line 1159
    .local v1, "d":F
    sub-float v2, p2, v1

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    move-object v0, p0

    move v3, v1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFIFFZ)V

    .line 1160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v4, p2, v1

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    const/high16 v12, 0x42b40000    # 90.0f

    move-object v2, p0

    move v4, v1

    move v5, v1

    move v6, v1

    move/from16 v7, p3

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 1161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, 0x0

    const/high16 v3, -0x41000000    # -0.5f

    sub-float v4, p2, v1

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, 0x43340000    # 180.0f

    move-object v2, p0

    move v4, v1

    move v5, v1

    move v6, v1

    move/from16 v7, p3

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 1162
    return-void
.end method

.method public circle(FIFFFFFF)V
    .locals 11
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F

    .prologue
    .line 812
    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFF)V

    .line 813
    return-void
.end method

.method public circle(FIFFFFFFFF)V
    .locals 12
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F
    .param p9, "angleFrom"    # F
    .param p10, "angleTo"    # F

    .prologue
    .line 837
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v2, p1, v0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFF)V

    .line 838
    return-void
.end method

.method public circle(FIFFFFFFFFFFFF)V
    .locals 17
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F
    .param p9, "tangentX"    # F
    .param p10, "tangentY"    # F
    .param p11, "tangentZ"    # F
    .param p12, "binormalX"    # F
    .param p13, "binormalY"    # F
    .param p14, "binormalZ"    # F

    .prologue
    .line 830
    const/4 v15, 0x0

    const/high16 v16, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    .line 832
    return-void
.end method

.method public circle(FIFFFFFFFFFFFFFF)V
    .locals 20
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F
    .param p9, "tangentX"    # F
    .param p10, "tangentY"    # F
    .param p11, "tangentZ"    # F
    .param p12, "binormalX"    # F
    .param p13, "binormalY"    # F
    .param p14, "binormalZ"    # F
    .param p15, "angleFrom"    # F
    .param p16, "angleTo"    # F

    .prologue
    .line 856
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    .line 858
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 817
    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFF)V

    .line 818
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 11
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "angleFrom"    # F
    .param p6, "angleTo"    # F

    .prologue
    .line 842
    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFF)V

    .line 843
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 16
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "binormal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 823
    move-object/from16 v0, p3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p3

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p5

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p5

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p6

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p6

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFF)V

    .line 825
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 18
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "binormal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "angleFrom"    # F
    .param p8, "angleTo"    # F

    .prologue
    .line 848
    move-object/from16 v0, p3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p3

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p5

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p5

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p6

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p6

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v16, p7

    move/from16 v17, p8

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    .line 850
    return-void
.end method

.method public cone(FFFI)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I

    .prologue
    .line 1056
    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFIFF)V

    .line 1057
    return-void
.end method

.method public cone(FFFIFF)V
    .locals 38
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "angleFrom"    # F
    .param p6, "angleTo"    # F

    .prologue
    .line 1062
    add-int/lit8 v4, p4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangles(II)V

    .line 1064
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v31, p1, v4

    .line 1065
    .local v31, "hw":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v30, p2, v4

    .line 1066
    .local v30, "hh":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v29, p3, v4

    .line 1067
    .local v29, "hd":F
    const v4, 0x3c8efa35

    mul-float v25, v4, p5

    .line 1068
    .local v25, "ao":F
    const v4, 0x3c8efa35

    sub-float v5, p6, p5

    mul-float/2addr v4, v5

    move/from16 v0, p4

    int-to-float v5, v0

    div-float v35, v4, v5

    .line 1069
    .local v35, "step":F
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, p4

    int-to-float v5, v0

    div-float v37, v4, v5

    .line 1070
    .local v37, "us":F
    const/16 v36, 0x0

    .line 1071
    .local v36, "u":F
    const/16 v24, 0x0

    .line 1072
    .local v24, "angle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v27

    .line 1073
    .local v27, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 1074
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v5, v0, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v28

    .line 1075
    .local v28, "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v26

    .line 1076
    .local v26, "base":S
    const/16 v34, 0x0

    .line 1077
    .local v34, "i2":S
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, p4

    if-gt v0, v1, :cond_1

    .line 1078
    move/from16 v0, v32

    int-to-float v4, v0

    mul-float v4, v4, v35

    add-float v24, v25, v4

    .line 1079
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v32

    int-to-float v5, v0

    mul-float v5, v5, v37

    sub-float v36, v4, v5

    .line 1080
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    mul-float v5, v5, v31

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    mul-float v7, v7, v29

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 1081
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1082
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v0, v30

    neg-float v5, v0

    iput v5, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 1083
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1084
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v33

    .line 1085
    .local v33, "i1":S
    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    .line 1086
    :cond_0
    move/from16 v34, v33

    .line 1077
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 1088
    .end local v33    # "i1":S
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v0, v30

    neg-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, 0x0

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v4, 0x43340000    # 180.0f

    sub-float v22, v4, p6

    const/high16 v4, 0x43340000    # 180.0f

    sub-float v23, v4, p5

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v23}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    .line 1089
    return-void
.end method

.method public cylinder(FFFI)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I

    .prologue
    .line 1005
    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFIFF)V

    .line 1006
    return-void
.end method

.method public cylinder(FFFIFF)V
    .locals 8
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "angleFrom"    # F
    .param p6, "angleTo"    # F

    .prologue
    .line 1010
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFIFFZ)V

    .line 1011
    return-void
.end method

.method public cylinder(FFFIFFZ)V
    .locals 47
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "angleFrom"    # F
    .param p6, "angleTo"    # F
    .param p7, "close"    # Z

    .prologue
    .line 1016
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v38, p1, v5

    .line 1017
    .local v38, "hw":F
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v12, p2, v5

    .line 1018
    .local v12, "hh":F
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v37, p3, v5

    .line 1019
    .local v37, "hd":F
    const v5, 0x3c8efa35

    mul-float v34, v5, p5

    .line 1020
    .local v34, "ao":F
    const v5, 0x3c8efa35

    sub-float v6, p6, p5

    mul-float/2addr v5, v6

    move/from16 v0, p4

    int-to-float v6, v0

    div-float v44, v5, v6

    .line 1021
    .local v44, "step":F
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p4

    int-to-float v6, v0

    div-float v46, v5, v6

    .line 1022
    .local v46, "us":F
    const/16 v45, 0x0

    .line 1023
    .local v45, "u":F
    const/16 v33, 0x0

    .line 1024
    .local v33, "angle":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v35

    .line 1025
    .local v35, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v5, 0x1

    move-object/from16 v0, v35

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    move-object/from16 v0, v35

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    move-object/from16 v0, v35

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 1026
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v36

    .line 1027
    .local v36, "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    move-object/from16 v0, v36

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    move-object/from16 v0, v36

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 1028
    const/16 v42, 0x0

    .local v42, "i3":S
    const/16 v43, 0x0

    .line 1030
    .local v43, "i4":S
    add-int/lit8 v5, p4, 0x1

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    .line 1031
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_0
    move/from16 v0, v39

    move/from16 v1, p4

    if-gt v0, v1, :cond_1

    .line 1032
    move/from16 v0, v39

    int-to-float v5, v0

    mul-float v5, v5, v44

    add-float v33, v34, v5

    .line 1033
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, v39

    int-to-float v6, v0

    mul-float v6, v6, v46

    sub-float v45, v5, v6

    .line 1034
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v33 .. v33}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v6

    mul-float v6, v6, v38

    const/4 v7, 0x0

    invoke-static/range {v33 .. v33}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v8

    mul-float v8, v8, v37

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 1035
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1036
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    neg-float v6, v12

    iput v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 1037
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1038
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 1039
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 1040
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    iput v12, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 1041
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/4 v6, 0x0

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1042
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v41

    .line 1043
    .local v41, "i2":S
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v40

    .line 1044
    .local v40, "i1":S
    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 1045
    :cond_0
    move/from16 v43, v41

    .line 1046
    move/from16 v42, v40

    .line 1031
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 1048
    .end local v40    # "i1":S
    .end local v41    # "i2":S
    :cond_1
    if-eqz p7, :cond_2

    .line 1049
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v10, p4

    move/from16 v23, p5

    move/from16 v24, p6

    invoke-virtual/range {v5 .. v24}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    .line 1050
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    neg-float v0, v12

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, -0x40800000    # -1.0f

    const/16 v24, 0x0

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v5, 0x43340000    # 180.0f

    sub-float v31, v5, p6

    const/high16 v5, 0x43340000    # 180.0f

    sub-float v32, v5, p5

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p3

    move/from16 v18, p4

    invoke-virtual/range {v13 .. v32}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    .line 1052
    :cond_2
    return-void
.end method

.method public ellipse(FFFFIFFFFFF)V
    .locals 14
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "centerX"    # F
    .param p7, "centerY"    # F
    .param p8, "centerZ"    # F
    .param p9, "normalX"    # F
    .param p10, "normalY"    # F
    .param p11, "normalZ"    # F

    .prologue
    .line 923
    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    .line 924
    return-void
.end method

.method public ellipse(FFFFIFFFFFFFF)V
    .locals 23
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "centerX"    # F
    .param p7, "centerY"    # F
    .param p8, "centerZ"    # F
    .param p9, "normalX"    # F
    .param p10, "normalY"    # F
    .param p11, "normalZ"    # F
    .param p12, "angleFrom"    # F
    .param p13, "angleTo"    # F

    .prologue
    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v0, p9

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v0, p9

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 932
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move/from16 v0, p9

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v20, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v21, p12

    move/from16 v22, p13

    invoke-virtual/range {v3 .. v22}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    .line 935
    return-void
.end method

.method public ellipse(FFFFIFFFFFFFFFFFFFF)V
    .locals 28
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "centerX"    # F
    .param p7, "centerY"    # F
    .param p8, "centerZ"    # F
    .param p9, "normalX"    # F
    .param p10, "normalY"    # F
    .param p11, "normalZ"    # F
    .param p12, "tangentX"    # F
    .param p13, "tangentY"    # F
    .param p14, "tangentZ"    # F
    .param p15, "binormalX"    # F
    .param p16, "binormalY"    # F
    .param p17, "binormalZ"    # F
    .param p18, "angleFrom"    # F
    .param p19, "angleTo"    # F

    .prologue
    .line 941
    const/16 v23, 0x0

    cmpg-float v23, p3, v23

    if-lez v23, :cond_0

    const/16 v23, 0x0

    cmpg-float v23, p4, v23

    if-gtz v23, :cond_4

    .line 942
    :cond_0
    add-int/lit8 v23, p5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangles(II)V

    .line 953
    :cond_1
    :goto_0
    const v23, 0x3c8efa35

    mul-float v5, v23, p18

    .line 954
    .local v5, "ao":F
    const v23, 0x3c8efa35

    sub-float v24, p19, p18

    mul-float v23, v23, v24

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v14, v23, v24

    .line 955
    .local v14, "step":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p12

    move/from16 v2, p13

    move/from16 v3, p14

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v23

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v24, v24, p1

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    .line 956
    .local v15, "sxEx":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p15

    move/from16 v2, p16

    move/from16 v3, p17

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v23

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v24, v24, p2

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    .line 957
    .local v17, "syEx":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p12

    move/from16 v2, p13

    move/from16 v3, p14

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v23

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v24, v24, p3

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    .line 958
    .local v16, "sxIn":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV4:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p15

    move/from16 v2, p16

    move/from16 v3, p17

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v23

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v24, v24, p4

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v18

    .line 959
    .local v18, "syIn":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    .line 960
    .local v8, "currIn":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    move/from16 v0, v23

    iput-boolean v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    move/from16 v0, v23

    iput-boolean v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 961
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    const/high16 v25, 0x3f000000    # 0.5f

    invoke-virtual/range {v23 .. v25}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 962
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 963
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    .line 965
    .local v7, "currEx":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    move/from16 v0, v23

    iput-boolean v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    move/from16 v0, v23

    iput-boolean v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 966
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    const/high16 v25, 0x3f000000    # 0.5f

    invoke-virtual/range {v23 .. v25}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 967
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 968
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 969
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    .line 970
    .local v6, "center":S
    const/4 v4, 0x0

    .line 971
    .local v4, "angle":F
    const/high16 v23, 0x3f000000    # 0.5f

    div-float v24, p3, p1

    mul-float v19, v23, v24

    .line 972
    .local v19, "us":F
    const/high16 v23, 0x3f000000    # 0.5f

    div-float v24, p4, p2

    mul-float v20, v23, v24

    .line 973
    .local v20, "vs":F
    const/4 v11, 0x0

    .local v11, "i2":S
    const/4 v12, 0x0

    .local v12, "i3":S
    const/4 v13, 0x0

    .line 974
    .local v13, "i4":S
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, p5

    if-gt v9, v0, :cond_a

    .line 975
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v14

    add-float v4, v5, v23

    .line 976
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v21

    .line 977
    .local v21, "x":F
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v22

    .line 978
    .local v22, "y":F
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v23

    iget v0, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v22

    add-float v24, v24, v25

    iget v0, v15, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v22

    add-float v25, v25, v26

    iget v0, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v26, v0

    mul-float v26, v26, v21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v27, v0

    mul-float v27, v27, v22

    add-float v26, v26, v27

    invoke-virtual/range {v23 .. v26}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 980
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v25, v25, v21

    add-float v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v26, v26, v22

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 981
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v10

    .line 983
    .local v10, "i1":S
    const/16 v23, 0x0

    cmpg-float v23, p3, v23

    if-lez v23, :cond_2

    const/16 v23, 0x0

    cmpg-float v23, p4, v23

    if-gtz v23, :cond_6

    .line 984
    :cond_2
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    .line 985
    :cond_3
    move v11, v10

    .line 974
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 943
    .end local v4    # "angle":F
    .end local v5    # "ao":F
    .end local v6    # "center":S
    .end local v7    # "currEx":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v8    # "currIn":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v9    # "i":I
    .end local v10    # "i1":S
    .end local v11    # "i2":S
    .end local v12    # "i3":S
    .end local v13    # "i4":S
    .end local v14    # "step":F
    .end local v15    # "sxEx":Lcom/badlogic/gdx/math/Vector3;
    .end local v16    # "sxIn":Lcom/badlogic/gdx/math/Vector3;
    .end local v17    # "syEx":Lcom/badlogic/gdx/math/Vector3;
    .end local v18    # "syIn":Lcom/badlogic/gdx/math/Vector3;
    .end local v19    # "us":F
    .end local v20    # "vs":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_4
    cmpl-float v23, p3, p1

    if-nez v23, :cond_5

    cmpl-float v23, p4, p2

    if-nez v23, :cond_5

    .line 944
    add-int/lit8 v23, p5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 945
    add-int/lit8 v23, p5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 947
    new-instance v23, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v24, "Incorrect primitive type : expect GL_LINES because innerWidth == width && innerHeight == height"

    invoke-direct/range {v23 .. v24}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 950
    :cond_5
    add-int/lit8 v23, p5, 0x1

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v24, p5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    goto/16 :goto_0

    .line 986
    .restart local v4    # "angle":F
    .restart local v5    # "ao":F
    .restart local v6    # "center":S
    .restart local v7    # "currEx":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v8    # "currIn":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v9    # "i":I
    .restart local v10    # "i1":S
    .restart local v11    # "i2":S
    .restart local v12    # "i3":S
    .restart local v13    # "i4":S
    .restart local v14    # "step":F
    .restart local v15    # "sxEx":Lcom/badlogic/gdx/math/Vector3;
    .restart local v16    # "sxIn":Lcom/badlogic/gdx/math/Vector3;
    .restart local v17    # "syEx":Lcom/badlogic/gdx/math/Vector3;
    .restart local v18    # "syIn":Lcom/badlogic/gdx/math/Vector3;
    .restart local v19    # "us":F
    .restart local v20    # "vs":F
    .restart local v21    # "x":F
    .restart local v22    # "y":F
    :cond_6
    cmpl-float v23, p3, p1

    if-nez v23, :cond_8

    cmpl-float v23, p4, p2

    if-nez v23, :cond_8

    .line 987
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    .line 988
    :cond_7
    move v11, v10

    goto :goto_2

    .line 990
    :cond_8
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v23

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v22

    add-float v24, v24, v25

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v22

    add-float v25, v25, v26

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v26, v0

    mul-float v26, v26, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v27, v0

    mul-float v27, v27, v22

    add-float v26, v26, v27

    invoke-virtual/range {v23 .. v26}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 992
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v25, v19, v21

    add-float v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v26, v20, v22

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 993
    move v11, v10

    .line 994
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v10

    .line 996
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v13, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 997
    :cond_9
    move v13, v11

    .line 998
    move v12, v10

    goto/16 :goto_2

    .line 1001
    .end local v10    # "i1":S
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_a
    return-void
.end method

.method public ellipse(FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 15
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 916
    move-object/from16 v0, p6

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p6

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p6

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p7

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p7

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v13, 0x0

    const/high16 v14, 0x43b40000    # 360.0f

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    .line 918
    return-void
.end method

.method public ellipse(FFIFFFFFF)V
    .locals 12
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F

    .prologue
    .line 863
    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFF)V

    .line 864
    return-void
.end method

.method public ellipse(FFIFFFFFFFF)V
    .locals 14
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F
    .param p10, "angleFrom"    # F
    .param p11, "angleTo"    # F

    .prologue
    .line 889
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    .line 890
    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFF)V
    .locals 18
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F
    .param p10, "tangentX"    # F
    .param p11, "tangentY"    # F
    .param p12, "tangentZ"    # F
    .param p13, "binormalX"    # F
    .param p14, "binormalY"    # F
    .param p15, "binormalZ"    # F

    .prologue
    .line 882
    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v17}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFFFFFFFF)V

    .line 884
    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFFFF)V
    .locals 20
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F
    .param p10, "tangentX"    # F
    .param p11, "tangentY"    # F
    .param p12, "tangentZ"    # F
    .param p13, "binormalX"    # F
    .param p14, "binormalY"    # F
    .param p15, "binormalZ"    # F
    .param p16, "angleFrom"    # F
    .param p17, "angleTo"    # F

    .prologue
    .line 909
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    .line 911
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 10
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 868
    iget v4, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, p5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, p5, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFF)V

    .line 869
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 15
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "angleFrom"    # F
    .param p7, "angleTo"    # F

    .prologue
    .line 895
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p5

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p5

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p3

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v1 .. v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    .line 896
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 17
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "binormal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 874
    move-object/from16 v0, p4

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p4

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p5

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p5

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p5

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p6

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p6

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p6

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p7

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p7

    iget v15, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p7

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v16, v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v16}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFFFFFF)V

    .line 876
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 21
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "binormal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p8, "angleFrom"    # F
    .param p9, "angleTo"    # F

    .prologue
    .line 901
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p5

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p5

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p6

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p6

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p7

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p3

    move/from16 v19, p8

    move/from16 v20, p9

    invoke-virtual/range {v1 .. v20}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    .line 903
    return-void
.end method

.method public end()Lcom/badlogic/gdx/graphics/Mesh;
    .locals 5

    .prologue
    .line 242
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 5
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 218
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Call begin() first"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Mesh attributes don\'t match"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v3, :cond_2

    .line 221
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mesh can\'t hold enough vertices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge v2, v3, :cond_3

    .line 224
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mesh can\'t hold enough indices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {p1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 227
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 229
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 230
    .local v1, "p":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_0

    .line 231
    .end local v1    # "p":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 233
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 234
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 237
    return-object p1
.end method

.method public ensureCapacity(II)V
    .locals 0
    .param p1, "numVertices"    # I
    .param p2, "numIndices"    # I

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 384
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 385
    return-void
.end method

.method public ensureIndices(I)V
    .locals 1
    .param p1, "numIndices"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 376
    return-void
.end method

.method public ensureRectangleIndices(I)V
    .locals 2
    .param p1, "numRectangles"    # I

    .prologue
    .line 420
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_0

    .line 421
    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 423
    mul-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    .line 426
    :cond_1
    mul-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0
.end method

.method public ensureRectangles(I)V
    .locals 1
    .param p1, "numRectangles"    # I

    .prologue
    .line 443
    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    .line 444
    return-void
.end method

.method public ensureRectangles(II)V
    .locals 0
    .param p1, "numVertices"    # I
    .param p2, "numRectangles"    # I

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 435
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    .line 436
    return-void
.end method

.method public ensureTriangleIndices(I)V
    .locals 2
    .param p1, "numTriangles"    # I

    .prologue
    .line 391
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 392
    mul-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 397
    :goto_0
    return-void

    .line 393
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_2

    .line 394
    :cond_1
    mul-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    .line 396
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primtive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureTriangles(I)V
    .locals 1
    .param p1, "numTriangles"    # I

    .prologue
    .line 413
    mul-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangles(II)V

    .line 414
    return-void
.end method

.method public ensureTriangles(II)V
    .locals 0
    .param p1, "numVertices"    # I
    .param p2, "numTriangles"    # I

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 405
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    .line 406
    return-void
.end method

.method public ensureVertices(I)V
    .locals 2
    .param p1, "numVertices"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    array-length v1, v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    .line 369
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getMeshPart()Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public index(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 565
    return-void
.end method

.method public index(SS)V
    .locals 1
    .param p1, "value1"    # S
    .param p2, "value2"    # S

    .prologue
    .line 569
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 572
    return-void
.end method

.method public index(SSS)V
    .locals 1
    .param p1, "value1"    # S
    .param p2, "value2"    # S
    .param p3, "value3"    # S

    .prologue
    .line 576
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 578
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 580
    return-void
.end method

.method public index(SSSS)V
    .locals 1
    .param p1, "value1"    # S
    .param p2, "value2"    # S
    .param p3, "value3"    # S
    .param p4, "value4"    # S

    .prologue
    .line 584
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 587
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 589
    return-void
.end method

.method public index(SSSSSS)V
    .locals 1
    .param p1, "value1"    # S
    .param p2, "value2"    # S
    .param p3, "value3"    # S
    .param p4, "value4"    # S
    .param p5, "value5"    # S
    .param p6, "value6"    # S

    .prologue
    .line 593
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 597
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 600
    return-void
.end method

.method public index(SSSSSSSS)V
    .locals 1
    .param p1, "value1"    # S
    .param p2, "value2"    # S
    .param p3, "value3"    # S
    .param p4, "value4"    # S
    .param p5, "value5"    # S
    .param p6, "value6"    # S
    .param p7, "value7"    # S
    .param p8, "value8"    # S

    .prologue
    .line 605
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p7}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p8}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 614
    return-void
.end method

.method public isVertexTransformationEnabled()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return v0
.end method

.method public lastIndex()S
    .locals 1

    .prologue
    .line 450
    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return v0
.end method

.method public line(FFFFFF)V
    .locals 3
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 636
    return-void
.end method

.method public line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 2
    .param p1, "p1"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "p2"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .prologue
    .line 624
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 625
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    .line 626
    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p1, "p1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "c1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "p2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "c2"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p1, v2, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v1, p3, v2, p4, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 641
    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "p1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "p2"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p1, v2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v1, p2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 631
    return-void
.end method

.method public line(SS)V
    .locals 2
    .param p1, "index1"    # S
    .param p2, "index2"    # S

    .prologue
    .line 618
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primitive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SS)V

    .line 620
    return-void
.end method

.method public part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "primitiveType"    # I

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 200
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 206
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 207
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0
.end method

.method public patch(FFFFFFFFFFFFFFFII)V
    .locals 10
    .param p1, "x00"    # F
    .param p2, "y00"    # F
    .param p3, "z00"    # F
    .param p4, "x10"    # F
    .param p5, "y10"    # F
    .param p6, "z10"    # F
    .param p7, "x11"    # F
    .param p8, "y11"    # F
    .param p9, "z11"    # F
    .param p10, "x01"    # F
    .param p11, "y01"    # F
    .param p12, "z01"    # F
    .param p13, "normalX"    # F
    .param p14, "normalY"    # F
    .param p15, "normalZ"    # F
    .param p16, "divisionsU"    # I
    .param p17, "divisionsV"    # I

    .prologue
    .line 730
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, p4, p5, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p10

    move/from16 v1, p11

    move/from16 v2, p12

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    move-object v3, p0

    move/from16 v8, p16

    move/from16 v9, p17

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    .line 734
    return-void
.end method

.method public patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V
    .locals 8
    .param p1, "corner00"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "corner10"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "corner11"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p4, "corner01"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p5, "divisionsU"    # I
    .param p6, "divisionsV"    # I

    .prologue
    const/4 v4, 0x1

    .line 705
    if-lt p5, v4, :cond_0

    if-ge p6, v4, :cond_1

    .line 706
    :cond_0
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "divisionsU and divisionV must be > 0, u,v: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 708
    :cond_1
    add-int/lit8 v4, p6, 0x1

    add-int/lit8 v5, p5, 0x1

    mul-int/2addr v4, v5

    mul-int v5, p6, p5

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    .line 709
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-gt v2, p5, :cond_4

    .line 710
    int-to-float v4, v2

    int-to-float v5, p5

    div-float v0, v4, v5

    .line 711
    .local v0, "alphaU":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;F)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 712
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v4, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;F)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 713
    const/4 v3, 0x0

    .local v3, "v":I
    :goto_1
    if-gt v3, p6, :cond_3

    .line 714
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    int-to-float v6, v3

    int-to-float v7, p6

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;F)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    .line 715
    .local v1, "idx":S
    if-lez v2, :cond_2

    if-lez v3, :cond_2

    sub-int v4, v1, p6

    add-int/lit8 v4, v4, -0x2

    int-to-short v4, v4

    add-int/lit8 v5, v1, -0x1

    int-to-short v5, v5

    sub-int v6, v1, p6

    add-int/lit8 v6, v6, -0x1

    int-to-short v6, v6

    invoke-virtual {p0, v4, v5, v1, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 713
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 709
    .end local v1    # "idx":S
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "alphaU":F
    .end local v3    # "v":I
    :cond_4
    return-void
.end method

.method public patch(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V
    .locals 7
    .param p1, "corner00"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "corner10"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "corner11"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "corner01"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "divisionsU"    # I
    .param p7, "divisionsV"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 723
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p1, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p3, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p4, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move-object v0, p0

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    .line 726
    return-void
.end method

.method public rect(FFFFFFFFFFFFFFF)V
    .locals 11
    .param p1, "x00"    # F
    .param p2, "y00"    # F
    .param p3, "z00"    # F
    .param p4, "x10"    # F
    .param p5, "y10"    # F
    .param p6, "z10"    # F
    .param p7, "x11"    # F
    .param p8, "y11"    # F
    .param p9, "z11"    # F
    .param p10, "x01"    # F
    .param p11, "y01"    # F
    .param p12, "z01"    # F
    .param p13, "normalX"    # F
    .param p14, "normalY"    # F
    .param p15, "normalZ"    # F

    .prologue
    .line 696
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v4, p4, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v5, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v5, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    move/from16 v0, p10

    move/from16 v1, p11

    move/from16 v2, p12

    invoke-virtual {v6, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 700
    return-void
.end method

.method public rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 4
    .param p1, "corner00"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "corner10"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "corner11"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p4, "corner01"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .prologue
    .line 683
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 684
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 685
    return-void
.end method

.method public rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 6
    .param p1, "corner00"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "corner10"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "corner11"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "corner01"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p1, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v1, p2, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p3, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p4, p5, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 691
    return-void
.end method

.method public rect(SSSS)V
    .locals 9
    .param p1, "corner00"    # S
    .param p2, "corner10"    # S
    .param p3, "corner11"    # S
    .param p4, "corner01"    # S

    .prologue
    .line 671
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p1

    .line 672
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    .line 679
    :goto_0
    return-void

    .line 673
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move v7, p4

    move v8, p1

    .line 674
    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    goto :goto_0

    .line 675
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_2

    .line 676
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSS)V

    goto :goto_0

    .line 678
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primitive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColor(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    .line 313
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .end local p1    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 318
    return-void

    .line 317
    .restart local p1    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUVRange(FFFF)V
    .locals 2
    .param p1, "u1"    # F
    .param p2, "v1"    # F
    .param p3, "u2"    # F
    .param p4, "v2"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 322
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    .line 323
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    .line 324
    sub-float v0, p3, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    .line 325
    sub-float v0, p4, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 326
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 327
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 4
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 331
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-nez v0, :cond_1

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    .line 333
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    .line 336
    :goto_1
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(FFFF)V

    goto :goto_1
.end method

.method public setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v1, 0x1

    .line 345
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    if-ne v0, v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->inv()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->transpose()Lcom/badlogic/gdx/math/Matrix3;

    .line 352
    :goto_1
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_1
.end method

.method public setVertexTransformationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 362
    return-void
.end method

.method public sphere(FFFII)V
    .locals 10
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I

    .prologue
    const/4 v6, 0x0

    .line 1093
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v9, 0x43340000    # 180.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(FFFIIFFFF)V

    .line 1094
    return-void
.end method

.method public sphere(FFFIIFFFF)V
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "angleUFrom"    # F
    .param p7, "angleUTo"    # F
    .param p8, "angleVFrom"    # F
    .param p9, "angleVTo"    # F

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 1105
    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .locals 11
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "depth"    # F
    .param p5, "divisionsU"    # I
    .param p6, "divisionsV"    # I

    .prologue
    .line 1098
    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/high16 v10, 0x43340000    # 180.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 1099
    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .locals 31
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "depth"    # F
    .param p5, "divisionsU"    # I
    .param p6, "divisionsV"    # I
    .param p7, "angleUFrom"    # F
    .param p8, "angleUTo"    # F
    .param p9, "angleVFrom"    # F
    .param p10, "angleVTo"    # F

    .prologue
    .line 1111
    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v13, p2, v26

    .line 1112
    .local v13, "hw":F
    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v12, p3, v26

    .line 1113
    .local v12, "hh":F
    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v11, p4, v26

    .line 1114
    .local v11, "hd":F
    const v26, 0x3c8efa35

    mul-float v7, v26, p7

    .line 1115
    .local v7, "auo":F
    const v26, 0x3c8efa35

    sub-float v27, p8, p7

    mul-float v26, v26, v27

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v18, v26, v27

    .line 1116
    .local v18, "stepU":F
    const v26, 0x3c8efa35

    mul-float v8, v26, p9

    .line 1117
    .local v8, "avo":F
    const v26, 0x3c8efa35

    sub-float v27, p10, p9

    mul-float v26, v26, v27

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v19, v26, v27

    .line 1118
    .local v19, "stepV":F
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v23, v26, v27

    .line 1119
    .local v23, "us":F
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v25, v26, v27

    .line 1120
    .local v25, "vs":F
    const/16 v22, 0x0

    .line 1121
    .local v22, "u":F
    const/16 v24, 0x0

    .line 1122
    .local v24, "v":F
    const/4 v5, 0x0

    .line 1123
    .local v5, "angleU":F
    const/4 v6, 0x0

    .line 1124
    .local v6, "angleV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    .line 1125
    .local v9, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/16 v26, 0x1

    move/from16 v0, v26

    iput-boolean v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    move/from16 v0, v26

    iput-boolean v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    move/from16 v0, v26

    iput-boolean v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 1127
    add-int/lit8 v17, p5, 0x3

    .line 1128
    .local v17, "s":I
    sget-object v26, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 1129
    sget-object v26, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    mul-int/lit8 v27, p5, 0x2

    invoke-virtual/range {v26 .. v27}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 1130
    sget-object v26, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    move/from16 v0, v17

    move-object/from16 v1, v26

    iput v0, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 1131
    const/16 v21, 0x0

    .line 1133
    .local v21, "tempOffset":I
    add-int/lit8 v26, p6, 0x1

    add-int/lit8 v27, p5, 0x1

    mul-int v26, v26, v27

    mul-int v27, p6, p5

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    .line 1134
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_0
    move/from16 v0, p6

    if-gt v15, v0, :cond_2

    .line 1135
    int-to-float v0, v15

    move/from16 v26, v0

    mul-float v26, v26, v19

    add-float v6, v8, v26

    .line 1136
    int-to-float v0, v15

    move/from16 v26, v0

    mul-float v24, v25, v26

    .line 1137
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v20

    .line 1138
    .local v20, "t":F
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v26

    mul-float v10, v26, v12

    .line 1139
    .local v10, "h":F
    const/4 v14, 0x0

    .local v14, "iu":I
    :goto_1
    move/from16 v0, p5

    if-gt v14, v0, :cond_1

    .line 1140
    int-to-float v0, v14

    move/from16 v26, v0

    mul-float v26, v26, v18

    add-float v5, v7, v26

    .line 1141
    const/high16 v26, 0x3f800000    # 1.0f

    int-to-float v0, v14

    move/from16 v27, v0

    mul-float v27, v27, v23

    sub-float v22, v26, v27

    .line 1142
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v26, v0

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v27

    mul-float v27, v27, v13

    mul-float v27, v27, v20

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v28

    mul-float v28, v28, v11

    mul-float v28, v28, v20

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v10, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 1143
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v26, v0

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1144
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1145
    sget-object v26, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->set(IS)V

    .line 1146
    add-int v16, v21, v17

    .line 1147
    .local v16, "o":I
    if-lez v15, :cond_0

    if-lez v14, :cond_0

    .line 1148
    sget-object v26, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v26

    sget-object v27, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v28, v16, -0x1

    rem-int v28, v28, v17

    invoke-virtual/range {v27 .. v28}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v27

    sget-object v28, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v29, p5, 0x2

    sub-int v29, v16, v29

    rem-int v29, v29, v17

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v28

    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v30, p5, 0x1

    sub-int v30, v16, v30

    rem-int v30, v30, v17

    invoke-virtual/range {v29 .. v30}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 1150
    :cond_0
    add-int/lit8 v26, v21, 0x1

    sget-object v27, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    move/from16 v27, v0

    rem-int v21, v26, v27

    .line 1139
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1134
    .end local v16    # "o":I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 1153
    .end local v10    # "h":F
    .end local v14    # "iu":I
    .end local v20    # "t":F
    :cond_2
    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 3
    .param p1, "p1"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "p2"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "p3"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .prologue
    .line 655
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 656
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    .line 657
    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p1, "p1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "c1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "p2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "c2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "p3"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "c3"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p1, v3, p2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v1, p3, v3, p4, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p5, v3, p6, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 667
    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .param p1, "p1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "p2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "p3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p1, v3, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v1, p2, v3, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 662
    return-void
.end method

.method public triangle(SSS)V
    .locals 7
    .param p1, "index1"    # S
    .param p2, "index2"    # S
    .param p3, "index3"    # S

    .prologue
    .line 645
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_1

    .line 646
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSS)V

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p1

    .line 648
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_0

    .line 650
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primitive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S
    .locals 5
    .param p1, "info"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    :goto_0
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    :goto_1
    iget-boolean v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    :goto_2
    iget-boolean v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v4, :cond_0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S

    move-result v0

    return v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v3, v1

    goto :goto_2
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S
    .locals 3
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "nor"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "col"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "uv"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 515
    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    const/16 v1, 0x7fff

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Too many vertices used"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 518
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 519
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 521
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz v0, :cond_4

    .line 522
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 528
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz v0, :cond_8

    .line 529
    if-nez p3, :cond_5

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v2, v0, v1

    .line 532
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v2, v0, v1

    .line 533
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/lit8 v1, v1, 0x3

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput v2, v0, v1

    .line 539
    :cond_6
    :goto_0
    if-eqz p4, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz v0, :cond_7

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    iget v2, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 544
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 545
    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return v0

    .line 534
    :cond_8
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-lez v0, :cond_6

    .line 535
    if-nez p3, :cond_9

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 536
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public varargs vertex([F)S
    .locals 4
    .param p1, "values"    # [F

    .prologue
    .line 550
    array-length v2, p1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    sub-int v1, v2, v3

    .line 551
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 552
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 551
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 553
    :cond_0
    iget-short v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return v2
.end method
