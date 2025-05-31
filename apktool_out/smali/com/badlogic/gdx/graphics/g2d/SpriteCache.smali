.class public Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
.super Ljava/lang/Object;
.source "SpriteCache.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    }
.end annotation


# static fields
.field private static final tempVertices:[F


# instance fields
.field private caches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;",
            ">;"
        }
    .end annotation
.end field

.field private color:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final counts:Lcom/badlogic/gdx/utils/IntArray;

.field private currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field private final textures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x1e

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V
    .locals 15
    .param p1, "size"    # I
    .param p2, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p3, "useIndices"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 75
    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 76
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    .line 78
    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 82
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 83
    new-instance v5, Lcom/badlogic/gdx/utils/IntArray;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    .line 85
    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    .line 86
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 88
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 91
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 94
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 114
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 116
    if-eqz p3, :cond_0

    const/16 v5, 0x1554

    move/from16 v0, p1

    if-le v0, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t have more than 5460 sprites per batch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v7, 0x1

    if-eqz p3, :cond_1

    const/4 v5, 0x4

    :goto_0
    mul-int v8, p1, v5

    if-eqz p3, :cond_2

    mul-int/lit8 v5, p1, 0x6

    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v10, 0x0

    new-instance v11, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v12, 0x1

    const/4 v13, 0x2

    const-string v14, "a_position"

    invoke-direct {v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v12, 0x4

    const/4 v13, 0x4

    const-string v14, "a_color"

    invoke-direct {v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v12, 0x10

    const/4 v13, 0x2

    const-string v14, "a_texCoord0"

    invoke-direct {v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8, v5, v9}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 121
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/Mesh;->setAutoBind(Z)V

    .line 123
    if-eqz p3, :cond_4

    .line 124
    mul-int/lit8 v4, p1, 0x6

    .line 125
    .local v4, "length":I
    new-array v2, v4, [S

    .line 126
    .local v2, "indices":[S
    const/4 v3, 0x0

    .line 127
    .local v3, "j":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 128
    add-int/lit8 v5, v1, 0x0

    aput-short v3, v2, v5

    .line 129
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 130
    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 131
    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 132
    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v3, 0x3

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 133
    add-int/lit8 v5, v1, 0x5

    aput-short v3, v2, v5

    .line 127
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v5, v3, 0x4

    int-to-short v3, v5

    goto :goto_2

    .line 118
    .end local v1    # "i":I
    .end local v2    # "indices":[S
    .end local v3    # "j":S
    .end local v4    # "length":I
    :cond_1
    const/4 v5, 0x6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 135
    .restart local v1    # "i":I
    .restart local v2    # "indices":[S
    .restart local v3    # "j":S
    .restart local v4    # "length":I
    :cond_3
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 138
    .end local v1    # "i":I
    .end local v2    # "indices":[S
    .end local v3    # "j":S
    .end local v4    # "length":I
    :cond_4
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 139
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "useIndices"    # Z

    .prologue
    .line 106
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V

    .line 107
    return-void
.end method

.method static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 6

    .prologue
    .line 976
    const-string v2, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n"

    .line 990
    .local v2, "vertexShader":Ljava/lang/String;
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 1000
    .local v0, "fragmentShader":Ljava/lang/String;
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .local v1, "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error compiling shader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1002
    :cond_0
    return-object v1
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 10
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0xf

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 264
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v0, p2, v2

    .line 265
    .local v0, "fx2":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v1, p3, v2

    .line 267
    .local v1, "fy2":F
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p2, v2, v7

    .line 268
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x1

    aput p3, v2, v3

    .line 269
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x2

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v2, v3

    .line 270
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x3

    aput v6, v2, v3

    .line 271
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x4

    aput v5, v2, v3

    .line 273
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x5

    aput p2, v2, v3

    .line 274
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x6

    aput v1, v2, v3

    .line 275
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x7

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v2, v3

    .line 276
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x8

    aput v6, v2, v3

    .line 277
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x9

    aput v6, v2, v3

    .line 279
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xa

    aput v0, v2, v3

    .line 280
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xb

    aput v1, v2, v3

    .line 281
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xc

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v2, v3

    .line 282
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xd

    aput v5, v2, v3

    .line 283
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xe

    aput v6, v2, v3

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    if-lez v2, :cond_0

    .line 286
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v8

    .line 287
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p3, v2, v9

    .line 288
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x11

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v2, v3

    .line 289
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x12

    aput v5, v2, v3

    .line 290
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x13

    aput v5, v2, v3

    .line 291
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x14

    invoke-virtual {p0, p1, v2, v7, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 312
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v8

    .line 294
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v1, v2, v9

    .line 295
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x11

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v2, v3

    .line 296
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x12

    aput v5, v2, v3

    .line 297
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x13

    aput v6, v2, v3

    .line 299
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x14

    aput v0, v2, v3

    .line 300
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x15

    aput p3, v2, v3

    .line 301
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x16

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v2, v3

    .line 302
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x17

    aput v5, v2, v3

    .line 303
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x18

    aput v5, v2, v3

    .line 305
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x19

    aput p2, v2, v3

    .line 306
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1a

    aput p3, v2, v3

    .line 307
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1b

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v2, v3

    .line 308
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1c

    aput v6, v2, v3

    .line 309
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1d

    aput v5, v2, v3

    .line 310
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1e

    invoke-virtual {p0, p1, v2, v7, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 39
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .prologue
    .line 501
    add-float v26, p2, p4

    .line 502
    .local v26, "worldOriginX":F
    add-float v27, p3, p5

    .line 503
    .local v27, "worldOriginY":F
    move/from16 v0, p4

    neg-float v6, v0

    .line 504
    .local v6, "fx":F
    move/from16 v0, p5

    neg-float v8, v0

    .line 505
    .local v8, "fy":F
    sub-float v7, p6, p4

    .line 506
    .local v7, "fx2":F
    sub-float v9, p7, p5

    .line 509
    .local v9, "fy2":F
    const/high16 v36, 0x3f800000    # 1.0f

    cmpl-float v36, p8, v36

    if-nez v36, :cond_0

    const/high16 v36, 0x3f800000    # 1.0f

    cmpl-float v36, p9, v36

    if-eqz v36, :cond_1

    .line 510
    :cond_0
    mul-float v6, v6, p8

    .line 511
    mul-float v8, v8, p9

    .line 512
    mul-float v7, v7, p8

    .line 513
    mul-float v9, v9, p9

    .line 517
    :cond_1
    move v12, v6

    .line 518
    .local v12, "p1x":F
    move v13, v8

    .line 519
    .local v13, "p1y":F
    move v14, v6

    .line 520
    .local v14, "p2x":F
    move v15, v9

    .line 521
    .local v15, "p2y":F
    move/from16 v16, v7

    .line 522
    .local v16, "p3x":F
    move/from16 v17, v9

    .line 523
    .local v17, "p3y":F
    move/from16 v18, v7

    .line 524
    .local v18, "p4x":F
    move/from16 v19, v8

    .line 536
    .local v19, "p4y":F
    const/16 v36, 0x0

    cmpl-float v36, p10, v36

    if-eqz v36, :cond_4

    .line 537
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v5

    .line 538
    .local v5, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v20

    .line 540
    .local v20, "sin":F
    mul-float v36, v5, v12

    mul-float v37, v20, v13

    sub-float v28, v36, v37

    .line 541
    .local v28, "x1":F
    mul-float v36, v20, v12

    mul-float v37, v5, v13

    add-float v32, v36, v37

    .line 543
    .local v32, "y1":F
    mul-float v36, v5, v14

    mul-float v37, v20, v15

    sub-float v29, v36, v37

    .line 544
    .local v29, "x2":F
    mul-float v36, v20, v14

    mul-float v37, v5, v15

    add-float v33, v36, v37

    .line 546
    .local v33, "y2":F
    mul-float v36, v5, v16

    mul-float v37, v20, v17

    sub-float v30, v36, v37

    .line 547
    .local v30, "x3":F
    mul-float v36, v20, v16

    mul-float v37, v5, v17

    add-float v34, v36, v37

    .line 549
    .local v34, "y3":F
    sub-float v36, v30, v29

    add-float v31, v28, v36

    .line 550
    .local v31, "x4":F
    sub-float v36, v33, v32

    sub-float v35, v34, v36

    .line 565
    .end local v5    # "cos":F
    .end local v20    # "sin":F
    .local v35, "y4":F
    :goto_0
    add-float v28, v28, v26

    .line 566
    add-float v32, v32, v27

    .line 567
    add-float v29, v29, v26

    .line 568
    add-float v33, v33, v27

    .line 569
    add-float v30, v30, v26

    .line 570
    add-float v34, v34, v27

    .line 571
    add-float v31, v31, v26

    .line 572
    add-float v35, v35, v27

    .line 574
    const/high16 v36, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v11, v36, v37

    .line 575
    .local v11, "invTexWidth":F
    const/high16 v36, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v10, v36, v37

    .line 576
    .local v10, "invTexHeight":F
    move/from16 v0, p11

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v22, v36, v11

    .line 577
    .local v22, "u":F
    add-int v36, p12, p14

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v24, v36, v10

    .line 578
    .local v24, "v":F
    add-int v36, p11, p13

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v23, v36, v11

    .line 579
    .local v23, "u2":F
    move/from16 v0, p12

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v25, v36, v10

    .line 581
    .local v25, "v2":F
    if-eqz p15, :cond_2

    .line 582
    move/from16 v21, v22

    .line 583
    .local v21, "tmp":F
    move/from16 v22, v23

    .line 584
    move/from16 v23, v21

    .line 587
    .end local v21    # "tmp":F
    :cond_2
    if-eqz p16, :cond_3

    .line 588
    move/from16 v21, v24

    .line 589
    .restart local v21    # "tmp":F
    move/from16 v24, v25

    .line 590
    move/from16 v25, v21

    .line 593
    .end local v21    # "tmp":F
    :cond_3
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x0

    aput v28, v36, v37

    .line 594
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x1

    aput v32, v36, v37

    .line 595
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v38, v0

    aput v38, v36, v37

    .line 596
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x3

    aput v22, v36, v37

    .line 597
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x4

    aput v24, v36, v37

    .line 599
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x5

    aput v29, v36, v37

    .line 600
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x6

    aput v33, v36, v37

    .line 601
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v38, v0

    aput v38, v36, v37

    .line 602
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x8

    aput v22, v36, v37

    .line 603
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x9

    aput v25, v36, v37

    .line 605
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0xa

    aput v30, v36, v37

    .line 606
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0xb

    aput v34, v36, v37

    .line 607
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v38, v0

    aput v38, v36, v37

    .line 608
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0xd

    aput v23, v36, v37

    .line 609
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0xe

    aput v25, v36, v37

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v36

    if-lez v36, :cond_5

    .line 612
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0xf

    aput v31, v36, v37

    .line 613
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x10

    aput v35, v36, v37

    .line 614
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v38, v0

    aput v38, v36, v37

    .line 615
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x12

    aput v23, v36, v37

    .line 616
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x13

    aput v24, v36, v37

    .line 617
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x0

    const/16 v38, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 638
    :goto_1
    return-void

    .line 552
    .end local v10    # "invTexHeight":F
    .end local v11    # "invTexWidth":F
    .end local v22    # "u":F
    .end local v23    # "u2":F
    .end local v24    # "v":F
    .end local v25    # "v2":F
    .end local v28    # "x1":F
    .end local v29    # "x2":F
    .end local v30    # "x3":F
    .end local v31    # "x4":F
    .end local v32    # "y1":F
    .end local v33    # "y2":F
    .end local v34    # "y3":F
    .end local v35    # "y4":F
    :cond_4
    move/from16 v28, v12

    .line 553
    .restart local v28    # "x1":F
    move/from16 v32, v13

    .line 555
    .restart local v32    # "y1":F
    move/from16 v29, v14

    .line 556
    .restart local v29    # "x2":F
    move/from16 v33, v15

    .line 558
    .restart local v33    # "y2":F
    move/from16 v30, v16

    .line 559
    .restart local v30    # "x3":F
    move/from16 v34, v17

    .line 561
    .restart local v34    # "y3":F
    move/from16 v31, v18

    .line 562
    .restart local v31    # "x4":F
    move/from16 v35, v19

    .restart local v35    # "y4":F
    goto/16 :goto_0

    .line 619
    .restart local v10    # "invTexHeight":F
    .restart local v11    # "invTexWidth":F
    .restart local v22    # "u":F
    .restart local v23    # "u2":F
    .restart local v24    # "v":F
    .restart local v25    # "v2":F
    :cond_5
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0xf

    aput v30, v36, v37

    .line 620
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x10

    aput v34, v36, v37

    .line 621
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v38, v0

    aput v38, v36, v37

    .line 622
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x12

    aput v23, v36, v37

    .line 623
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x13

    aput v25, v36, v37

    .line 625
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x14

    aput v31, v36, v37

    .line 626
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x15

    aput v35, v36, v37

    .line 627
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v38, v0

    aput v38, v36, v37

    .line 628
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x17

    aput v23, v36, v37

    .line 629
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x18

    aput v24, v36, v37

    .line 631
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x19

    aput v28, v36, v37

    .line 632
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x1a

    aput v32, v36, v37

    .line 633
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v38, v0

    aput v38, v36, v37

    .line 634
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x1c

    aput v22, v36, v37

    .line 635
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x1d

    aput v24, v36, v37

    .line 636
    sget-object v36, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v37, 0x0

    const/16 v38, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_1
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 13
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "flipX"    # Z
    .param p11, "flipY"    # Z

    .prologue
    .line 429
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 430
    .local v4, "invTexWidth":F
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v3, v10, v11

    .line 431
    .local v3, "invTexHeight":F
    move/from16 v0, p6

    int-to-float v10, v0

    mul-float v6, v10, v4

    .line 432
    .local v6, "u":F
    add-int v10, p7, p9

    int-to-float v10, v10

    mul-float v8, v10, v3

    .line 433
    .local v8, "v":F
    add-int v10, p6, p8

    int-to-float v10, v10

    mul-float v7, v10, v4

    .line 434
    .local v7, "u2":F
    move/from16 v0, p7

    int-to-float v10, v0

    mul-float v9, v10, v3

    .line 435
    .local v9, "v2":F
    add-float v1, p2, p4

    .line 436
    .local v1, "fx2":F
    add-float v2, p3, p5

    .line 438
    .local v2, "fy2":F
    if-eqz p10, :cond_0

    .line 439
    move v5, v6

    .line 440
    .local v5, "tmp":F
    move v6, v7

    .line 441
    move v7, v5

    .line 443
    .end local v5    # "tmp":F
    :cond_0
    if-eqz p11, :cond_1

    .line 444
    move v5, v8

    .line 445
    .restart local v5    # "tmp":F
    move v8, v9

    .line 446
    move v9, v5

    .line 449
    .end local v5    # "tmp":F
    :cond_1
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x0

    aput p2, v10, v11

    .line 450
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x1

    aput p3, v10, v11

    .line 451
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x2

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v12, v10, v11

    .line 452
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x3

    aput v6, v10, v11

    .line 453
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x4

    aput v8, v10, v11

    .line 455
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x5

    aput p2, v10, v11

    .line 456
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x6

    aput v2, v10, v11

    .line 457
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x7

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v12, v10, v11

    .line 458
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x8

    aput v6, v10, v11

    .line 459
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x9

    aput v9, v10, v11

    .line 461
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0xa

    aput v1, v10, v11

    .line 462
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0xb

    aput v2, v10, v11

    .line 463
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0xc

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v12, v10, v11

    .line 464
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0xd

    aput v7, v10, v11

    .line 465
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0xe

    aput v9, v10, v11

    .line 467
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v10

    if-lez v10, :cond_2

    .line 468
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0xf

    aput v1, v10, v11

    .line 469
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x10

    aput p3, v10, v11

    .line 470
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x11

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v12, v10, v11

    .line 471
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x12

    aput v7, v10, v11

    .line 472
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x13

    aput v8, v10, v11

    .line 473
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x0

    const/16 v12, 0x14

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 494
    :goto_0
    return-void

    .line 475
    :cond_2
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0xf

    aput v1, v10, v11

    .line 476
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x10

    aput v2, v10, v11

    .line 477
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x11

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v12, v10, v11

    .line 478
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x12

    aput v7, v10, v11

    .line 479
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x13

    aput v9, v10, v11

    .line 481
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x14

    aput v1, v10, v11

    .line 482
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x15

    aput p3, v10, v11

    .line 483
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x16

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v12, v10, v11

    .line 484
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x17

    aput v7, v10, v11

    .line 485
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x18

    aput v8, v10, v11

    .line 487
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x19

    aput p2, v10, v11

    .line 488
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x1a

    aput p3, v10, v11

    .line 489
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x1b

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v12, v10, v11

    .line 490
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x1c

    aput v6, v10, v11

    .line 491
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x1d

    aput v8, v10, v11

    .line 492
    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v11, 0x0

    const/16 v12, 0x1e

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIFFFFF)V
    .locals 5
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "u2"    # F
    .param p9, "v2"    # F
    .param p10, "color"    # F

    .prologue
    .line 317
    int-to-float v2, p4

    add-float v0, p2, v2

    .line 318
    .local v0, "fx2":F
    int-to-float v2, p5

    add-float v1, p3, v2

    .line 320
    .local v1, "fy2":F
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x0

    aput p2, v2, v3

    .line 321
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x1

    aput p3, v2, v3

    .line 322
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x2

    aput p10, v2, v3

    .line 323
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x3

    aput p6, v2, v3

    .line 324
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x4

    aput p7, v2, v3

    .line 326
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x5

    aput p2, v2, v3

    .line 327
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x6

    aput v1, v2, v3

    .line 328
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x7

    aput p10, v2, v3

    .line 329
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x8

    aput p6, v2, v3

    .line 330
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x9

    aput p9, v2, v3

    .line 332
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xa

    aput v0, v2, v3

    .line 333
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xb

    aput v1, v2, v3

    .line 334
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xc

    aput p10, v2, v3

    .line 335
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xd

    aput p8, v2, v3

    .line 336
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xe

    aput p9, v2, v3

    .line 338
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    if-lez v2, :cond_0

    .line 339
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xf

    aput v0, v2, v3

    .line 340
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x10

    aput p3, v2, v3

    .line 341
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x11

    aput p10, v2, v3

    .line 342
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x12

    aput p8, v2, v3

    .line 343
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x13

    aput p7, v2, v3

    .line 344
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 365
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0xf

    aput v0, v2, v3

    .line 347
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x10

    aput v1, v2, v3

    .line 348
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x11

    aput p10, v2, v3

    .line 349
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x12

    aput p8, v2, v3

    .line 350
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x13

    aput p9, v2, v3

    .line 352
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x14

    aput v0, v2, v3

    .line 353
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x15

    aput p3, v2, v3

    .line 354
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x16

    aput p10, v2, v3

    .line 355
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x17

    aput p8, v2, v3

    .line 356
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x18

    aput p7, v2, v3

    .line 358
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x19

    aput p2, v2, v3

    .line 359
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1a

    aput p3, v2, v3

    .line 360
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1b

    aput p10, v2, v3

    .line 361
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1c

    aput p6, v2, v3

    .line 362
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1d

    aput p7, v2, v3

    .line 363
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 12
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .prologue
    .line 369
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 370
    .local v4, "invTexWidth":F
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 371
    .local v3, "invTexHeight":F
    move/from16 v0, p4

    int-to-float v9, v0

    mul-float v5, v9, v4

    .line 372
    .local v5, "u":F
    add-int v9, p5, p7

    int-to-float v9, v9

    mul-float v7, v9, v3

    .line 373
    .local v7, "v":F
    add-int v9, p4, p6

    int-to-float v9, v9

    mul-float v6, v9, v4

    .line 374
    .local v6, "u2":F
    move/from16 v0, p5

    int-to-float v9, v0

    mul-float v8, v9, v3

    .line 375
    .local v8, "v2":F
    move/from16 v0, p6

    int-to-float v9, v0

    add-float v1, p2, v9

    .line 376
    .local v1, "fx2":F
    move/from16 v0, p7

    int-to-float v9, v0

    add-float v2, p3, v9

    .line 378
    .local v2, "fy2":F
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x0

    aput p2, v9, v10

    .line 379
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x1

    aput p3, v9, v10

    .line 380
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x2

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v9, v10

    .line 381
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x3

    aput v5, v9, v10

    .line 382
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x4

    aput v7, v9, v10

    .line 384
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x5

    aput p2, v9, v10

    .line 385
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x6

    aput v2, v9, v10

    .line 386
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x7

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v9, v10

    .line 387
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x8

    aput v5, v9, v10

    .line 388
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x9

    aput v8, v9, v10

    .line 390
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xa

    aput v1, v9, v10

    .line 391
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xb

    aput v2, v9, v10

    .line 392
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xc

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v9, v10

    .line 393
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xd

    aput v6, v9, v10

    .line 394
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xe

    aput v8, v9, v10

    .line 396
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v9

    if-lez v9, :cond_0

    .line 397
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xf

    aput v1, v9, v10

    .line 398
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x10

    aput p3, v9, v10

    .line 399
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x11

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v9, v10

    .line 400
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x12

    aput v6, v9, v10

    .line 401
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x13

    aput v7, v9, v10

    .line 402
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x0

    const/16 v11, 0x14

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 423
    :goto_0
    return-void

    .line 404
    :cond_0
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xf

    aput v1, v9, v10

    .line 405
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x10

    aput v2, v9, v10

    .line 406
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x11

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v9, v10

    .line 407
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x12

    aput v6, v9, v10

    .line 408
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x13

    aput v8, v9, v10

    .line 410
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x14

    aput v1, v9, v10

    .line 411
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x15

    aput p3, v9, v10

    .line 412
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x16

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v9, v10

    .line 413
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x17

    aput v6, v9, v10

    .line 414
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x18

    aput v7, v9, v10

    .line 416
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x19

    aput p2, v9, v10

    .line 417
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1a

    aput p3, v9, v10

    .line 418
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1b

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v9, v10

    .line 419
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1c

    aput v5, v9, v10

    .line 420
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1d

    aput v7, v9, v10

    .line 421
    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x0

    const/16 v11, 0x1e

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 5
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "vertices"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 248
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "beginCache must be called before add."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x4

    .line 251
    .local v2, "verticesPerImage":I
    :goto_0
    mul-int/lit8 v3, v2, 0x5

    div-int v3, p4, v3

    mul-int/lit8 v0, v3, 0x6

    .line 252
    .local v0, "count":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v3, -0x1

    .line 253
    .local v1, "lastIndex":I
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_3

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 255
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 260
    return-void

    .line 250
    .end local v0    # "count":I
    .end local v1    # "lastIndex":I
    .end local v2    # "verticesPerImage":I
    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    .line 257
    .restart local v0    # "count":I
    .restart local v1    # "lastIndex":I
    .restart local v2    # "verticesPerImage":I
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->incr(II)V

    goto :goto_1
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 7
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0xf

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 833
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    if-lez v1, :cond_0

    .line 834
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 844
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v0

    .line 839
    .local v0, "spriteVertices":[F
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    const/16 v1, 0xa

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 841
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-static {v0, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v2, 0x19

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1e

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 6
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 642
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 643
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 10
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 647
    add-float v0, p2, p4

    .line 648
    .local v0, "fx2":F
    add-float v1, p3, p5

    .line 649
    .local v1, "fy2":F
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 650
    .local v2, "u":F
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 651
    .local v4, "v":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 652
    .local v3, "u2":F
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 654
    .local v5, "v2":F
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x0

    aput p2, v6, v7

    .line 655
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x1

    aput p3, v6, v7

    .line 656
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x2

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v8, v6, v7

    .line 657
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x3

    aput v2, v6, v7

    .line 658
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x4

    aput v4, v6, v7

    .line 660
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x5

    aput p2, v6, v7

    .line 661
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x6

    aput v1, v6, v7

    .line 662
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x7

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v8, v6, v7

    .line 663
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x8

    aput v2, v6, v7

    .line 664
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x9

    aput v5, v6, v7

    .line 666
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xa

    aput v0, v6, v7

    .line 667
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xb

    aput v1, v6, v7

    .line 668
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xc

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v8, v6, v7

    .line 669
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xd

    aput v3, v6, v7

    .line 670
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xe

    aput v5, v6, v7

    .line 672
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    if-lez v6, :cond_0

    .line 673
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xf

    aput v0, v6, v7

    .line 674
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x10

    aput p3, v6, v7

    .line 675
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x11

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v8, v6, v7

    .line 676
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x12

    aput v3, v6, v7

    .line 677
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x13

    aput v4, v6, v7

    .line 678
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 699
    :goto_0
    return-void

    .line 680
    :cond_0
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xf

    aput v0, v6, v7

    .line 681
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x10

    aput v1, v6, v7

    .line 682
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x11

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v8, v6, v7

    .line 683
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x12

    aput v3, v6, v7

    .line 684
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x13

    aput v5, v6, v7

    .line 686
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x14

    aput v0, v6, v7

    .line 687
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x15

    aput p3, v6, v7

    .line 688
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x16

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v8, v6, v7

    .line 689
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x17

    aput v3, v6, v7

    .line 690
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x18

    aput v4, v6, v7

    .line 692
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x19

    aput p2, v6, v7

    .line 693
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1a

    aput p3, v6, v7

    .line 694
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1b

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v8, v6, v7

    .line 695
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1c

    aput v2, v6, v7

    .line 696
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1d

    aput v4, v6, v7

    .line 697
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 37
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .prologue
    .line 706
    add-float v23, p2, p4

    .line 707
    .local v23, "worldOriginX":F
    add-float v24, p3, p5

    .line 708
    .local v24, "worldOriginY":F
    move/from16 v0, p4

    neg-float v6, v0

    .line 709
    .local v6, "fx":F
    move/from16 v0, p5

    neg-float v8, v0

    .line 710
    .local v8, "fy":F
    sub-float v7, p6, p4

    .line 711
    .local v7, "fx2":F
    sub-float v9, p7, p5

    .line 714
    .local v9, "fy2":F
    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v33, p8, v33

    if-nez v33, :cond_0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v33, p9, v33

    if-eqz v33, :cond_1

    .line 715
    :cond_0
    mul-float v6, v6, p8

    .line 716
    mul-float v8, v8, p9

    .line 717
    mul-float v7, v7, p8

    .line 718
    mul-float v9, v9, p9

    .line 722
    :cond_1
    move v10, v6

    .line 723
    .local v10, "p1x":F
    move v11, v8

    .line 724
    .local v11, "p1y":F
    move v12, v6

    .line 725
    .local v12, "p2x":F
    move v13, v9

    .line 726
    .local v13, "p2y":F
    move v14, v7

    .line 727
    .local v14, "p3x":F
    move v15, v9

    .line 728
    .local v15, "p3y":F
    move/from16 v16, v7

    .line 729
    .local v16, "p4x":F
    move/from16 v17, v8

    .line 741
    .local v17, "p4y":F
    const/16 v33, 0x0

    cmpl-float v33, p10, v33

    if-eqz v33, :cond_2

    .line 742
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v5

    .line 743
    .local v5, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v18

    .line 745
    .local v18, "sin":F
    mul-float v33, v5, v10

    mul-float v34, v18, v11

    sub-float v25, v33, v34

    .line 746
    .local v25, "x1":F
    mul-float v33, v18, v10

    mul-float v34, v5, v11

    add-float v29, v33, v34

    .line 748
    .local v29, "y1":F
    mul-float v33, v5, v12

    mul-float v34, v18, v13

    sub-float v26, v33, v34

    .line 749
    .local v26, "x2":F
    mul-float v33, v18, v12

    mul-float v34, v5, v13

    add-float v30, v33, v34

    .line 751
    .local v30, "y2":F
    mul-float v33, v5, v14

    mul-float v34, v18, v15

    sub-float v27, v33, v34

    .line 752
    .local v27, "x3":F
    mul-float v33, v18, v14

    mul-float v34, v5, v15

    add-float v31, v33, v34

    .line 754
    .local v31, "y3":F
    sub-float v33, v27, v26

    add-float v28, v25, v33

    .line 755
    .local v28, "x4":F
    sub-float v33, v30, v29

    sub-float v32, v31, v33

    .line 770
    .end local v5    # "cos":F
    .end local v18    # "sin":F
    .local v32, "y4":F
    :goto_0
    add-float v25, v25, v23

    .line 771
    add-float v29, v29, v24

    .line 772
    add-float v26, v26, v23

    .line 773
    add-float v30, v30, v24

    .line 774
    add-float v27, v27, v23

    .line 775
    add-float v31, v31, v24

    .line 776
    add-float v28, v28, v23

    .line 777
    add-float v32, v32, v24

    .line 779
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v19, v0

    .line 780
    .local v19, "u":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v21, v0

    .line 781
    .local v21, "v":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v20, v0

    .line 782
    .local v20, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v22, v0

    .line 784
    .local v22, "v2":F
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x0

    aput v25, v33, v34

    .line 785
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x1

    aput v29, v33, v34

    .line 786
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v35, v0

    aput v35, v33, v34

    .line 787
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x3

    aput v19, v33, v34

    .line 788
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x4

    aput v21, v33, v34

    .line 790
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x5

    aput v26, v33, v34

    .line 791
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x6

    aput v30, v33, v34

    .line 792
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v35, v0

    aput v35, v33, v34

    .line 793
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x8

    aput v19, v33, v34

    .line 794
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x9

    aput v22, v33, v34

    .line 796
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0xa

    aput v27, v33, v34

    .line 797
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0xb

    aput v31, v33, v34

    .line 798
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v35, v0

    aput v35, v33, v34

    .line 799
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0xd

    aput v20, v33, v34

    .line 800
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0xe

    aput v22, v33, v34

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v33

    if-lez v33, :cond_3

    .line 803
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0xf

    aput v28, v33, v34

    .line 804
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x10

    aput v32, v33, v34

    .line 805
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v35, v0

    aput v35, v33, v34

    .line 806
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x12

    aput v20, v33, v34

    .line 807
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x13

    aput v21, v33, v34

    .line 808
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v33, v0

    sget-object v34, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v35, 0x0

    const/16 v36, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 829
    :goto_1
    return-void

    .line 757
    .end local v19    # "u":F
    .end local v20    # "u2":F
    .end local v21    # "v":F
    .end local v22    # "v2":F
    .end local v25    # "x1":F
    .end local v26    # "x2":F
    .end local v27    # "x3":F
    .end local v28    # "x4":F
    .end local v29    # "y1":F
    .end local v30    # "y2":F
    .end local v31    # "y3":F
    .end local v32    # "y4":F
    :cond_2
    move/from16 v25, v10

    .line 758
    .restart local v25    # "x1":F
    move/from16 v29, v11

    .line 760
    .restart local v29    # "y1":F
    move/from16 v26, v12

    .line 761
    .restart local v26    # "x2":F
    move/from16 v30, v13

    .line 763
    .restart local v30    # "y2":F
    move/from16 v27, v14

    .line 764
    .restart local v27    # "x3":F
    move/from16 v31, v15

    .line 766
    .restart local v31    # "y3":F
    move/from16 v28, v16

    .line 767
    .restart local v28    # "x4":F
    move/from16 v32, v17

    .restart local v32    # "y4":F
    goto/16 :goto_0

    .line 810
    .restart local v19    # "u":F
    .restart local v20    # "u2":F
    .restart local v21    # "v":F
    .restart local v22    # "v2":F
    :cond_3
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0xf

    aput v27, v33, v34

    .line 811
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x10

    aput v31, v33, v34

    .line 812
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v35, v0

    aput v35, v33, v34

    .line 813
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x12

    aput v20, v33, v34

    .line 814
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x13

    aput v22, v33, v34

    .line 816
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x14

    aput v28, v33, v34

    .line 817
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x15

    aput v32, v33, v34

    .line 818
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v35, v0

    aput v35, v33, v34

    .line 819
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x17

    aput v20, v33, v34

    .line 820
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x18

    aput v21, v33, v34

    .line 822
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x19

    aput v25, v33, v34

    .line 823
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x1a

    aput v29, v33, v34

    .line 824
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    move/from16 v35, v0

    aput v35, v33, v34

    .line 825
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x1c

    aput v19, v33, v34

    .line 826
    sget-object v33, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v34, 0x1d

    aput v21, v33, v34

    .line 827
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v33, v0

    sget-object v34, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v35, 0x0

    const/16 v36, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto/16 :goto_1
.end method

.method public begin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 848
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_0
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 850
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 852
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 854
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 856
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_proj"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 857
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_trans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 858
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projTrans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 860
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 867
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    .line 868
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 863
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projectionViewMatrix"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 864
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 865
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0
.end method

.method public beginCache()V
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "endCache must be called before begin."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x4

    .line 172
    .local v0, "verticesPerImage":I
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;-><init>(II)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 173
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->compact()Ljava/nio/FloatBuffer;

    .line 175
    return-void

    .line 171
    .end local v0    # "verticesPerImage":I
    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public beginCache(I)V
    .locals 3
    .param p1, "cacheID"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "endCache must be called before begin."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 184
    .local v0, "oldCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 185
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 190
    .end local v0    # "oldCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 189
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 242
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 940
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 941
    :cond_0
    return-void
.end method

.method public draw(I)V
    .locals 11
    .param p1, "cacheID"    # I

    .prologue
    const/4 v8, 0x4

    .line 886
    iget-boolean v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v9, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "SpriteCache.begin must be called before draw."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 888
    :cond_0
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 889
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v9

    if-lez v9, :cond_1

    move v7, v8

    .line 890
    .local v7, "verticesPerImage":I
    :goto_0
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    mul-int/lit8 v10, v7, 0x5

    div-int/2addr v9, v10

    mul-int/lit8 v4, v9, 0x6

    .line 891
    .local v4, "offset":I
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 892
    .local v6, "textures":[Lcom/badlogic/gdx/graphics/Texture;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 893
    .local v2, "counts":[I
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 894
    .local v5, "textureCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 895
    aget v1, v2, v3

    .line 896
    .local v1, "count":I
    aget-object v9, v6, v3

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 897
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v9, :cond_2

    .line 898
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v10, v8, v4, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 901
    :goto_2
    add-int/2addr v4, v1

    .line 894
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 889
    .end local v1    # "count":I
    .end local v2    # "counts":[I
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .end local v5    # "textureCount":I
    .end local v6    # "textures":[Lcom/badlogic/gdx/graphics/Texture;
    .end local v7    # "verticesPerImage":I
    :cond_1
    const/4 v7, 0x6

    goto :goto_0

    .line 900
    .restart local v1    # "count":I
    .restart local v2    # "counts":[I
    .restart local v3    # "i":I
    .restart local v4    # "offset":I
    .restart local v5    # "textureCount":I
    .restart local v6    # "textures":[Lcom/badlogic/gdx/graphics/Texture;
    .restart local v7    # "verticesPerImage":I
    :cond_2
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v10, v8, v4, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_2

    .line 903
    .end local v1    # "count":I
    :cond_3
    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 904
    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 905
    return-void
.end method

.method public draw(III)V
    .locals 9
    .param p1, "cacheID"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v8, 0x4

    .line 911
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "SpriteCache.begin must be called before draw."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 913
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 914
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    mul-int/lit8 v6, p2, 0x6

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    add-int p2, v6, v7

    .line 915
    mul-int/lit8 p3, p3, 0x6

    .line 916
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 917
    .local v5, "textures":[Lcom/badlogic/gdx/graphics/Texture;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 918
    .local v2, "counts":[I
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 919
    .local v4, "textureCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 920
    aget-object v6, v5, v3

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 921
    aget v1, v2, v3

    .line 922
    .local v1, "count":I
    if-le v1, p3, :cond_1

    .line 923
    move v3, v4

    .line 924
    move v1, p3

    .line 927
    :goto_1
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v6, :cond_2

    .line 928
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v7, v8, p2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 931
    :goto_2
    add-int/2addr p2, v1

    .line 919
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 926
    :cond_1
    sub-int/2addr p3, v1

    goto :goto_1

    .line 930
    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v7, v8, p2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_2

    .line 933
    .end local v1    # "count":I
    :cond_3
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 934
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 935
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 872
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "begin must be called before end."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 873
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    .line 875
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 876
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 877
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 878
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 882
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0
.end method

.method public endCache()I
    .locals 9

    .prologue
    .line 194
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "beginCache must be called before endCache."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 196
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->position()I

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    sub-int v1, v6, v7

    .line 197
    .local v1, "cacheCount":I
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    if-nez v6, :cond_2

    .line 199
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    .line 200
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 201
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    const-class v7, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 202
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 203
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, v6, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 204
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    aput v7, v6, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 231
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 232
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 233
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 235
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->id:I

    return v6

    .line 209
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_2
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    if-le v1, v6, :cond_3

    .line 210
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "If a cache is not the last created, it cannot be redefined with more entries than when it was first created: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " max)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 215
    :cond_3
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 217
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    array-length v6, v6

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v6, v7, :cond_4

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v6, v6, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 218
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .restart local v4    # "n":I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 219
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Texture;

    aput-object v6, v7, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 221
    :cond_5
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    array-length v6, v6

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v6, v7, :cond_6

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 222
    :cond_6
    const/4 v2, 0x0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    :goto_3
    if-ge v2, v4, :cond_7

    .line 223
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    aput v7, v6, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 225
    :cond_7
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 226
    .local v5, "vertices":Ljava/nio/FloatBuffer;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 228
    .local v3, "lastCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget v6, v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 159
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    .line 160
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 161
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 162
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 163
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 164
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 165
    return-object v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public setColor(F)V
    .locals 0
    .param p1, "color"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    .line 156
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 148
    mul-float v1, v3, p4

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, v3, p3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, v3, p2

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float v2, v3, p1

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 149
    .local v0, "intBits":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    .line 150
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    .line 144
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set the matrix within begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 950
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 0
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1016
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set the matrix within begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 959
    return-void
.end method
