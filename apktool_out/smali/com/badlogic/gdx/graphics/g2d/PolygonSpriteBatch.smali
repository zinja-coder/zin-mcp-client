.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;
.super Ljava/lang/Object;
.source "PolygonSpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/Batch;


# instance fields
.field private blendDstFunc:I

.field private blendSrcFunc:I

.field private blendingDisabled:Z

.field color:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private invTexHeight:F

.field private invTexWidth:F

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxTrianglesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private triangleIndex:I

.field private final triangles:[S

.field private vertexIndex:I

.field private final vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 103
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 12
    .param p1, "size"    # I
    .param p2, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    .line 69
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 71
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 74
    const/16 v0, 0x302

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    .line 75
    const/16 v0, 0x303

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    .line 81
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 85
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 88
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 91
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    .line 115
    const/16 v0, 0x2aa8

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t have more than 10920 triangles per batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    mul-int/lit8 v4, p1, 0x3

    const/4 v3, 0x3

    new-array v5, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v6, "a_position"

    invoke-direct {v3, v10, v11, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v5, v2

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v6, 0x4

    const/4 v7, 0x4

    const-string v8, "a_color"

    invoke-direct {v3, v6, v7, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v5, v10

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v6, 0x10

    const-string v7, "a_texCoord0"

    invoke-direct {v3, v6, v11, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v5, v11

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 121
    mul-int/lit8 v0, p1, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 122
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 124
    if-nez p2, :cond_1

    .line 125
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 126
    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v9, v9, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 131
    return-void

    .line 128
    :cond_1
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_0
.end method

.method private setupMatrices()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1264
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1265
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projTrans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1267
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 1272
    :goto_0
    return-void

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projTrans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1275
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1276
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1277
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    .line 1278
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    .line 1279
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 138
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    .line 146
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_0
.end method

.method public disableBlending()V
    .locals 1

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    .line 1207
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1236
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 1237
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 679
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 680
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 684
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 686
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 687
    .local v9, "triangles":[S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 689
    .local v14, "vertices":[F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p1

    if-eq v0, v15, :cond_2

    .line 690
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 694
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 695
    .local v7, "triangleIndex":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v6, v15, 0x5

    .line 696
    .local v6, "startVertex":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .local v8, "triangleIndex":I
    int-to-short v15, v6

    aput-short v15, v9, v7

    .line 697
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x1

    int-to-short v15, v15

    aput-short v15, v9, v8

    .line 698
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x2

    int-to-short v15, v15

    aput-short v15, v9, v7

    .line 699
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x2

    int-to-short v15, v15

    aput-short v15, v9, v8

    .line 700
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x3

    int-to-short v15, v15

    aput-short v15, v9, v7

    .line 701
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    int-to-short v15, v6

    aput-short v15, v9, v8

    .line 702
    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 704
    add-float v2, p2, p4

    .line 705
    .local v2, "fx2":F
    add-float v3, p3, p5

    .line 706
    .local v3, "fy2":F
    const/4 v10, 0x0

    .line 707
    .local v10, "u":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 708
    .local v12, "v":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 709
    .local v11, "u2":F
    const/4 v13, 0x0

    .line 711
    .local v13, "v2":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 712
    .local v1, "color":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 713
    .local v4, "idx":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .local v5, "idx":I
    aput p2, v14, v4

    .line 714
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v14, v5

    .line 715
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v14, v4

    .line 716
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    const/4 v15, 0x0

    aput v15, v14, v5

    .line 717
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v14, v4

    .line 719
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p2, v14, v5

    .line 720
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v3, v14, v4

    .line 721
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v14, v5

    .line 722
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    const/4 v15, 0x0

    aput v15, v14, v4

    .line 723
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    const/4 v15, 0x0

    aput v15, v14, v5

    .line 725
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v14, v4

    .line 726
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v3, v14, v5

    .line 727
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v14, v4

    .line 728
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v14, v5

    .line 729
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    const/4 v15, 0x0

    aput v15, v14, v4

    .line 731
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v14, v5

    .line 732
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput p3, v14, v4

    .line 733
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v14, v5

    .line 734
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v14, v4

    .line 735
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v14, v5

    .line 736
    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 737
    return-void

    .line 691
    .end local v1    # "color":F
    .end local v2    # "fx2":F
    .end local v3    # "fy2":F
    .end local v4    # "idx":I
    .end local v6    # "startVertex":I
    .end local v7    # "triangleIndex":I
    .end local v10    # "u":F
    .end local v11    # "u2":F
    .end local v12    # "v":F
    .end local v13    # "v2":F
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v15, v15, 0x6

    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v15, v15, 0x14

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 692
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 12
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "u2"    # F
    .param p9, "v2"    # F

    .prologue
    .line 626
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 628
    :cond_0
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 629
    .local v8, "triangles":[S
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 631
    .local v9, "vertices":[F
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v10, :cond_2

    .line 632
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 636
    :cond_1
    :goto_0
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 637
    .local v6, "triangleIndex":I
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v5, v10, 0x5

    .line 638
    .local v5, "startVertex":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "triangleIndex":I
    .local v7, "triangleIndex":I
    int-to-short v10, v5

    aput-short v10, v8, v6

    .line 639
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v10, v5, 0x1

    int-to-short v10, v10

    aput-short v10, v8, v7

    .line 640
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v10, v5, 0x2

    int-to-short v10, v10

    aput-short v10, v8, v6

    .line 641
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    add-int/lit8 v10, v5, 0x2

    int-to-short v10, v10

    aput-short v10, v8, v7

    .line 642
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v10, v5, 0x3

    int-to-short v10, v10

    aput-short v10, v8, v6

    .line 643
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v6    # "triangleIndex":I
    int-to-short v10, v5

    aput-short v10, v8, v7

    .line 644
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 646
    add-float v1, p2, p4

    .line 647
    .local v1, "fx2":F
    add-float v2, p3, p5

    .line 649
    .local v2, "fy2":F
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 650
    .local v0, "color":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 651
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aput p2, v9, v3

    .line 652
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p3, v9, v4

    .line 653
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v9, v3

    .line 654
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p6, v9, v4

    .line 655
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p7, v9, v3

    .line 657
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p2, v9, v4

    .line 658
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v9, v3

    .line 659
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v9, v4

    .line 660
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p6, v9, v3

    .line 661
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p9, v9, v4

    .line 663
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v9, v3

    .line 664
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v9, v4

    .line 665
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v9, v3

    .line 666
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p8, v9, v4

    .line 667
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p9, v9, v3

    .line 669
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v1, v9, v4

    .line 670
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v9, v3

    .line 671
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v9, v4

    .line 672
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p8, v9, v3

    .line 673
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p7, v9, v4

    .line 674
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 675
    return-void

    .line 633
    .end local v0    # "color":F
    .end local v1    # "fx2":F
    .end local v2    # "fy2":F
    .end local v3    # "idx":I
    .end local v5    # "startVertex":I
    .end local v6    # "triangleIndex":I
    :cond_2
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v10, v10, 0x6

    array-length v11, v8

    if-gt v10, v11, :cond_3

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v10, v10, 0x14

    array-length v11, v9

    if-le v10, v11, :cond_1

    .line 634
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 41
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
    .line 358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v39, v0

    if-nez v39, :cond_0

    new-instance v39, Ljava/lang/IllegalStateException;

    const-string v40, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    move-object/from16 v23, v0

    .line 361
    .local v23, "triangles":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    .line 363
    .local v28, "vertices":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v39, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    .line 364
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 368
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v21, v0

    .line 369
    .local v21, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v39, v0

    div-int/lit8 v19, v39, 0x5

    .line 370
    .local v19, "startVertex":I
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .local v22, "triangleIndex":I
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v21

    .line 371
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x1

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v22

    .line 372
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .restart local v22    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x2

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v21

    .line 373
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x2

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v22

    .line 374
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .restart local v22    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x3

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v21

    .line 375
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v22

    .line 376
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 379
    add-float v29, p2, p4

    .line 380
    .local v29, "worldOriginX":F
    add-float v30, p3, p5

    .line 381
    .local v30, "worldOriginY":F
    move/from16 v0, p4

    neg-float v4, v0

    .line 382
    .local v4, "fx":F
    move/from16 v0, p5

    neg-float v6, v0

    .line 383
    .local v6, "fy":F
    sub-float v5, p6, p4

    .line 384
    .local v5, "fx2":F
    sub-float v7, p7, p5

    .line 387
    .local v7, "fy2":F
    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v39, p8, v39

    if-nez v39, :cond_2

    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v39, p9, v39

    if-eqz v39, :cond_3

    .line 388
    :cond_2
    mul-float v4, v4, p8

    .line 389
    mul-float v6, v6, p9

    .line 390
    mul-float v5, v5, p8

    .line 391
    mul-float v7, v7, p9

    .line 395
    :cond_3
    move v10, v4

    .line 396
    .local v10, "p1x":F
    move v11, v6

    .line 397
    .local v11, "p1y":F
    move v12, v4

    .line 398
    .local v12, "p2x":F
    move v13, v7

    .line 399
    .local v13, "p2y":F
    move v14, v5

    .line 400
    .local v14, "p3x":F
    move v15, v7

    .line 401
    .local v15, "p3y":F
    move/from16 v16, v5

    .line 402
    .local v16, "p4x":F
    move/from16 v17, v6

    .line 414
    .local v17, "p4y":F
    const/16 v39, 0x0

    cmpl-float v39, p10, v39

    if-eqz v39, :cond_8

    .line 415
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .line 416
    .local v3, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v18

    .line 418
    .local v18, "sin":F
    mul-float v39, v3, v10

    mul-float v40, v18, v11

    sub-float v31, v39, v40

    .line 419
    .local v31, "x1":F
    mul-float v39, v18, v10

    mul-float v40, v3, v11

    add-float v35, v39, v40

    .line 421
    .local v35, "y1":F
    mul-float v39, v3, v12

    mul-float v40, v18, v13

    sub-float v32, v39, v40

    .line 422
    .local v32, "x2":F
    mul-float v39, v18, v12

    mul-float v40, v3, v13

    add-float v36, v39, v40

    .line 424
    .local v36, "y2":F
    mul-float v39, v3, v14

    mul-float v40, v18, v15

    sub-float v33, v39, v40

    .line 425
    .local v33, "x3":F
    mul-float v39, v18, v14

    mul-float v40, v3, v15

    add-float v37, v39, v40

    .line 427
    .local v37, "y3":F
    sub-float v39, v33, v32

    add-float v34, v31, v39

    .line 428
    .local v34, "x4":F
    sub-float v39, v36, v35

    sub-float v38, v37, v39

    .line 443
    .end local v3    # "cos":F
    .end local v18    # "sin":F
    .local v38, "y4":F
    :goto_1
    add-float v31, v31, v29

    .line 444
    add-float v35, v35, v30

    .line 445
    add-float v32, v32, v29

    .line 446
    add-float v36, v36, v30

    .line 447
    add-float v33, v33, v29

    .line 448
    add-float v37, v37, v30

    .line 449
    add-float v34, v34, v29

    .line 450
    add-float v38, v38, v30

    .line 452
    move/from16 v0, p11

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    move/from16 v40, v0

    mul-float v24, v39, v40

    .line 453
    .local v24, "u":F
    add-int v39, p12, p14

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    move/from16 v40, v0

    mul-float v26, v39, v40

    .line 454
    .local v26, "v":F
    add-int v39, p11, p13

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    move/from16 v40, v0

    mul-float v25, v39, v40

    .line 455
    .local v25, "u2":F
    move/from16 v0, p12

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    move/from16 v40, v0

    mul-float v27, v39, v40

    .line 457
    .local v27, "v2":F
    if-eqz p15, :cond_4

    .line 458
    move/from16 v20, v24

    .line 459
    .local v20, "tmp":F
    move/from16 v24, v25

    .line 460
    move/from16 v25, v20

    .line 463
    .end local v20    # "tmp":F
    :cond_4
    if-eqz p16, :cond_5

    .line 464
    move/from16 v20, v26

    .line 465
    .restart local v20    # "tmp":F
    move/from16 v26, v27

    .line 466
    move/from16 v27, v20

    .line 469
    .end local v20    # "tmp":F
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 470
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 471
    .local v8, "idx":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    aput v31, v28, v8

    .line 472
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v35, v28, v9

    .line 473
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v28, v8

    .line 474
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v24, v28, v9

    .line 475
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v26, v28, v8

    .line 477
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v32, v28, v9

    .line 478
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v36, v28, v8

    .line 479
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v28, v9

    .line 480
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v24, v28, v8

    .line 481
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v27, v28, v9

    .line 483
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v33, v28, v8

    .line 484
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v37, v28, v9

    .line 485
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v28, v8

    .line 486
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v25, v28, v9

    .line 487
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v27, v28, v8

    .line 489
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v34, v28, v9

    .line 490
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v38, v28, v8

    .line 491
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v28, v9

    .line 492
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v25, v28, v8

    .line 493
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v26, v28, v9

    .line 494
    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 495
    return-void

    .line 365
    .end local v2    # "color":F
    .end local v4    # "fx":F
    .end local v5    # "fx2":F
    .end local v6    # "fy":F
    .end local v7    # "fy2":F
    .end local v8    # "idx":I
    .end local v10    # "p1x":F
    .end local v11    # "p1y":F
    .end local v12    # "p2x":F
    .end local v13    # "p2y":F
    .end local v14    # "p3x":F
    .end local v15    # "p3y":F
    .end local v16    # "p4x":F
    .end local v17    # "p4y":F
    .end local v19    # "startVertex":I
    .end local v21    # "triangleIndex":I
    .end local v24    # "u":F
    .end local v25    # "u2":F
    .end local v26    # "v":F
    .end local v27    # "v2":F
    .end local v29    # "worldOriginX":F
    .end local v30    # "worldOriginY":F
    .end local v31    # "x1":F
    .end local v32    # "x2":F
    .end local v33    # "x3":F
    .end local v34    # "x4":F
    .end local v35    # "y1":F
    .end local v36    # "y2":F
    .end local v37    # "y3":F
    .end local v38    # "y4":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x6

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x14

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_1

    .line 366
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0

    .line 430
    .restart local v4    # "fx":F
    .restart local v5    # "fx2":F
    .restart local v6    # "fy":F
    .restart local v7    # "fy2":F
    .restart local v10    # "p1x":F
    .restart local v11    # "p1y":F
    .restart local v12    # "p2x":F
    .restart local v13    # "p2y":F
    .restart local v14    # "p3x":F
    .restart local v15    # "p3y":F
    .restart local v16    # "p4x":F
    .restart local v17    # "p4y":F
    .restart local v19    # "startVertex":I
    .restart local v21    # "triangleIndex":I
    .restart local v29    # "worldOriginX":F
    .restart local v30    # "worldOriginY":F
    :cond_8
    move/from16 v31, v10

    .line 431
    .restart local v31    # "x1":F
    move/from16 v35, v11

    .line 433
    .restart local v35    # "y1":F
    move/from16 v32, v12

    .line 434
    .restart local v32    # "x2":F
    move/from16 v36, v13

    .line 436
    .restart local v36    # "y2":F
    move/from16 v33, v14

    .line 437
    .restart local v33    # "x3":F
    move/from16 v37, v15

    .line 439
    .restart local v37    # "y3":F
    move/from16 v34, v16

    .line 440
    .restart local v34    # "x4":F
    move/from16 v38, v17

    .restart local v38    # "y4":F
    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 19
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
    .line 500
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 502
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 503
    .local v11, "triangles":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v16, v0

    .line 505
    .local v16, "vertices":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 506
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 510
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 511
    .local v9, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v17, v0

    div-int/lit8 v7, v17, 0x5

    .line 512
    .local v7, "startVertex":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "triangleIndex":I
    .local v10, "triangleIndex":I
    int-to-short v0, v7

    move/from16 v17, v0

    aput-short v17, v11, v9

    .line 513
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v10

    .line 514
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v9

    .line 515
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v10

    .line 516
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x3

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v9

    .line 517
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    int-to-short v0, v7

    move/from16 v17, v0

    aput-short v17, v11, v10

    .line 518
    move-object/from16 v0, p0

    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 520
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    move/from16 v18, v0

    mul-float v12, v17, v18

    .line 521
    .local v12, "u":F
    add-int v17, p7, p9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    move/from16 v18, v0

    mul-float v14, v17, v18

    .line 522
    .local v14, "v":F
    add-int v17, p6, p8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    move/from16 v18, v0

    mul-float v13, v17, v18

    .line 523
    .local v13, "u2":F
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    move/from16 v18, v0

    mul-float v15, v17, v18

    .line 524
    .local v15, "v2":F
    add-float v3, p2, p4

    .line 525
    .local v3, "fx2":F
    add-float v4, p3, p5

    .line 527
    .local v4, "fy2":F
    if-eqz p10, :cond_2

    .line 528
    move v8, v12

    .line 529
    .local v8, "tmp":F
    move v12, v13

    .line 530
    move v13, v8

    .line 533
    .end local v8    # "tmp":F
    :cond_2
    if-eqz p11, :cond_3

    .line 534
    move v8, v14

    .line 535
    .restart local v8    # "tmp":F
    move v14, v15

    .line 536
    move v15, v8

    .line 539
    .end local v8    # "tmp":F
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 540
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 541
    .local v5, "idx":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .local v6, "idx":I
    aput p2, v16, v5

    .line 542
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput p3, v16, v6

    .line 543
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v2, v16, v5

    .line 544
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v12, v16, v6

    .line 545
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v14, v16, v5

    .line 547
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput p2, v16, v6

    .line 548
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v4, v16, v5

    .line 549
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v16, v6

    .line 550
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v12, v16, v5

    .line 551
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v15, v16, v6

    .line 553
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v3, v16, v5

    .line 554
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v4, v16, v6

    .line 555
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v2, v16, v5

    .line 556
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v13, v16, v6

    .line 557
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v15, v16, v5

    .line 559
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v3, v16, v6

    .line 560
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput p3, v16, v5

    .line 561
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v16, v6

    .line 562
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v13, v16, v5

    .line 563
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v14, v16, v6

    .line 564
    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 565
    return-void

    .line 507
    .end local v2    # "color":F
    .end local v3    # "fx2":F
    .end local v4    # "fy2":F
    .end local v5    # "idx":I
    .end local v7    # "startVertex":I
    .end local v9    # "triangleIndex":I
    .end local v12    # "u":F
    .end local v13    # "u2":F
    .end local v14    # "v":F
    .end local v15    # "v2":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x6

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x14

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 508
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .prologue
    .line 569
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 571
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 572
    .local v9, "triangles":[S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 574
    .local v14, "vertices":[F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p1

    if-eq v0, v15, :cond_2

    .line 575
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 579
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 580
    .local v7, "triangleIndex":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v6, v15, 0x5

    .line 581
    .local v6, "startVertex":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .local v8, "triangleIndex":I
    int-to-short v15, v6

    aput-short v15, v9, v7

    .line 582
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x1

    int-to-short v15, v15

    aput-short v15, v9, v8

    .line 583
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x2

    int-to-short v15, v15

    aput-short v15, v9, v7

    .line 584
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x2

    int-to-short v15, v15

    aput-short v15, v9, v8

    .line 585
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v15, v6, 0x3

    int-to-short v15, v15

    aput-short v15, v9, v7

    .line 586
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    int-to-short v15, v6

    aput-short v15, v9, v8

    .line 587
    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 589
    move/from16 v0, p4

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    move/from16 v16, v0

    mul-float v10, v15, v16

    .line 590
    .local v10, "u":F
    add-int v15, p5, p7

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    move/from16 v16, v0

    mul-float v12, v15, v16

    .line 591
    .local v12, "v":F
    add-int v15, p4, p6

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    move/from16 v16, v0

    mul-float v11, v15, v16

    .line 592
    .local v11, "u2":F
    move/from16 v0, p5

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    move/from16 v16, v0

    mul-float v13, v15, v16

    .line 593
    .local v13, "v2":F
    move/from16 v0, p6

    int-to-float v15, v0

    add-float v2, p2, v15

    .line 594
    .local v2, "fx2":F
    move/from16 v0, p7

    int-to-float v15, v0

    add-float v3, p3, v15

    .line 596
    .local v3, "fy2":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 597
    .local v1, "color":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 598
    .local v4, "idx":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .local v5, "idx":I
    aput p2, v14, v4

    .line 599
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v14, v5

    .line 600
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v14, v4

    .line 601
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v10, v14, v5

    .line 602
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v12, v14, v4

    .line 604
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p2, v14, v5

    .line 605
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v3, v14, v4

    .line 606
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v14, v5

    .line 607
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v10, v14, v4

    .line 608
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v13, v14, v5

    .line 610
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v14, v4

    .line 611
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v3, v14, v5

    .line 612
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v14, v4

    .line 613
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v11, v14, v5

    .line 614
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v13, v14, v4

    .line 616
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v14, v5

    .line 617
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput p3, v14, v4

    .line 618
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v14, v5

    .line 619
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v11, v14, v4

    .line 620
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v12, v14, v5

    .line 621
    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 622
    return-void

    .line 576
    .end local v1    # "color":F
    .end local v2    # "fx2":F
    .end local v3    # "fy2":F
    .end local v4    # "idx":I
    .end local v6    # "startVertex":I
    .end local v7    # "triangleIndex":I
    .end local v10    # "u":F
    .end local v11    # "u2":F
    .end local v12    # "v":F
    .end local v13    # "v2":F
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v15, v15, 0x6

    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v15, v15, 0x14

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 577
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 9
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 741
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 743
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 744
    .local v3, "triangles":[S
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 746
    .local v6, "vertices":[F
    div-int/lit8 v7, p4, 0x14

    mul-int/lit8 v1, v7, 0x6

    .line 747
    .local v1, "triangleCount":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v7, :cond_2

    .line 748
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 752
    :cond_1
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 753
    .local v5, "vertexIndex":I
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 754
    .local v2, "triangleIndex":I
    div-int/lit8 v7, v5, 0x5

    int-to-short v4, v7

    .line 755
    .local v4, "vertex":S
    add-int v0, v2, v1

    .local v0, "n":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 756
    aput-short v4, v3, v2

    .line 757
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v4, 0x1

    int-to-short v8, v8

    aput-short v8, v3, v7

    .line 758
    add-int/lit8 v7, v2, 0x2

    add-int/lit8 v8, v4, 0x2

    int-to-short v8, v8

    aput-short v8, v3, v7

    .line 759
    add-int/lit8 v7, v2, 0x3

    add-int/lit8 v8, v4, 0x2

    int-to-short v8, v8

    aput-short v8, v3, v7

    .line 760
    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v8, v4, 0x3

    int-to-short v8, v8

    aput-short v8, v3, v7

    .line 761
    add-int/lit8 v7, v2, 0x5

    aput-short v4, v3, v7

    .line 755
    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v7, v4, 0x4

    int-to-short v4, v7

    goto :goto_1

    .line 749
    .end local v0    # "n":I
    .end local v2    # "triangleIndex":I
    .end local v4    # "vertex":S
    .end local v5    # "vertexIndex":I
    :cond_2
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v7, v1

    array-length v8, v3

    if-gt v7, v8, :cond_3

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v7, p4

    array-length v8, v6

    if-le v7, v8, :cond_1

    .line 750
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto :goto_0

    .line 763
    .restart local v0    # "n":I
    .restart local v2    # "triangleIndex":I
    .restart local v4    # "vertex":S
    .restart local v5    # "vertexIndex":I
    :cond_4
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 765
    invoke-static {p2, p3, v6, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v7, p4

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 767
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V
    .locals 10
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "polygonVertices"    # [F
    .param p3, "verticesOffset"    # I
    .param p4, "verticesCount"    # I
    .param p5, "polygonTriangles"    # [S
    .param p6, "trianglesOffset"    # I
    .param p7, "trianglesCount"    # I

    .prologue
    .line 333
    iget-boolean v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 335
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 336
    .local v5, "triangles":[S
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 338
    .local v7, "vertices":[F
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v8, :cond_2

    .line 339
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 343
    :cond_1
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 344
    .local v3, "triangleIndex":I
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 345
    .local v6, "vertexIndex":I
    div-int/lit8 v2, v6, 0x5

    .line 347
    .local v2, "startVertex":I
    move/from16 v0, p6

    .local v0, "i":I
    add-int v1, v0, p7

    .local v1, "n":I
    move v4, v3

    .end local v3    # "triangleIndex":I
    .local v4, "triangleIndex":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 348
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "triangleIndex":I
    .restart local v3    # "triangleIndex":I
    aget-short v8, p5, v0

    add-int/2addr v8, v2

    int-to-short v8, v8

    aput-short v8, v5, v4

    .line 347
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "triangleIndex":I
    .restart local v4    # "triangleIndex":I
    goto :goto_1

    .line 340
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "startVertex":I
    .end local v4    # "triangleIndex":I
    .end local v6    # "vertexIndex":I
    :cond_2
    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int v8, v8, p7

    array-length v9, v5

    if-gt v8, v9, :cond_3

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v8, p4

    array-length v9, v7

    if-le v8, v9, :cond_1

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto :goto_0

    .line 349
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "startVertex":I
    .restart local v4    # "triangleIndex":I
    .restart local v6    # "vertexIndex":I
    :cond_4
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 351
    invoke-static {p2, p3, v7, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v8, p4

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 353
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FF)V
    .locals 19
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 201
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 202
    .local v13, "triangles":[S
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 203
    .local v4, "regionTriangles":[S
    array-length v5, v4

    .line 204
    .local v5, "regionTrianglesLength":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 205
    .local v6, "regionVertices":[F
    array-length v7, v6

    .line 207
    .local v7, "regionVerticesLength":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 208
    .local v9, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v9, v0, :cond_2

    .line 209
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 213
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 214
    .local v11, "triangleIndex":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 215
    .local v14, "vertexIndex":I
    div-int/lit8 v8, v14, 0x5

    .line 217
    .local v8, "startVertex":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v12, v11

    .end local v11    # "triangleIndex":I
    .local v12, "triangleIndex":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 218
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "triangleIndex":I
    .restart local v11    # "triangleIndex":I
    aget-short v17, v4, v3

    add-int v17, v17, v8

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v13, v12

    .line 217
    add-int/lit8 v3, v3, 0x1

    move v12, v11

    .end local v11    # "triangleIndex":I
    .restart local v12    # "triangleIndex":I
    goto :goto_1

    .line 210
    .end local v3    # "i":I
    .end local v8    # "startVertex":I
    .end local v12    # "triangleIndex":I
    .end local v14    # "vertexIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v17, v0

    add-int v17, v17, v5

    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 211
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto :goto_0

    .line 219
    .restart local v3    # "i":I
    .restart local v8    # "startVertex":I
    .restart local v12    # "triangleIndex":I
    .restart local v14    # "vertexIndex":I
    :cond_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v16, v0

    .line 222
    .local v16, "vertices":[F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 223
    .local v2, "color":F
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 225
    .local v10, "textureCoords":[F
    const/4 v3, 0x0

    move v15, v14

    .end local v14    # "vertexIndex":I
    .local v15, "vertexIndex":I
    :goto_2
    if-ge v3, v7, :cond_5

    .line 226
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "vertexIndex":I
    .restart local v14    # "vertexIndex":I
    aget v17, v6, v3

    add-float v17, v17, p2

    aput v17, v16, v15

    .line 227
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "vertexIndex":I
    .restart local v15    # "vertexIndex":I
    add-int/lit8 v17, v3, 0x1

    aget v17, v6, v17

    add-float v17, v17, p3

    aput v17, v16, v14

    .line 228
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "vertexIndex":I
    .restart local v14    # "vertexIndex":I
    aput v2, v16, v15

    .line 229
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "vertexIndex":I
    .restart local v15    # "vertexIndex":I
    aget v17, v10, v3

    aput v17, v16, v14

    .line 230
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "vertexIndex":I
    .restart local v14    # "vertexIndex":I
    add-int/lit8 v17, v3, 0x1

    aget v17, v10, v17

    aput v17, v16, v15

    .line 225
    add-int/lit8 v3, v3, 0x2

    move v15, v14

    .end local v14    # "vertexIndex":I
    .restart local v15    # "vertexIndex":I
    goto :goto_2

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 233
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFF)V
    .locals 23
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v22, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    move-object/from16 v17, v0

    .line 240
    .local v17, "triangles":[S
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 241
    .local v5, "regionTriangles":[S
    array-length v6, v5

    .line 242
    .local v6, "regionTrianglesLength":I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 243
    .local v7, "regionVertices":[F
    array-length v8, v7

    .line 244
    .local v8, "regionVerticesLength":I
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 246
    .local v14, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v12, v14, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 247
    .local v12, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-eq v12, v0, :cond_2

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 252
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 253
    .local v15, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v18, v0

    .line 254
    .local v18, "vertexIndex":I
    div-int/lit8 v11, v18, 0x5

    .line 256
    .local v11, "startVertex":I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v5

    .local v4, "n":I
    move/from16 v16, v15

    .end local v15    # "triangleIndex":I
    .local v16, "triangleIndex":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 257
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "triangleIndex":I
    .restart local v15    # "triangleIndex":I
    aget-short v21, v5, v3

    add-int v21, v21, v11

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v17, v16

    .line 256
    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v15

    .end local v15    # "triangleIndex":I
    .restart local v16    # "triangleIndex":I
    goto :goto_1

    .line 249
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v11    # "startVertex":I
    .end local v16    # "triangleIndex":I
    .end local v18    # "vertexIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v21, v0

    add-int v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    .line 250
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto :goto_0

    .line 258
    .restart local v3    # "i":I
    .restart local v4    # "n":I
    .restart local v11    # "startVertex":I
    .restart local v16    # "triangleIndex":I
    .restart local v18    # "vertexIndex":I
    :cond_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v20, v0

    .line 261
    .local v20, "vertices":[F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 262
    .local v2, "color":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 263
    .local v13, "textureCoords":[F
    iget v0, v14, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v9, p4, v21

    .line 264
    .local v9, "sX":F
    iget v0, v14, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, p5, v21

    .line 266
    .local v10, "sY":F
    const/4 v3, 0x0

    move/from16 v19, v18

    .end local v18    # "vertexIndex":I
    .local v19, "vertexIndex":I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 267
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "vertexIndex":I
    .restart local v18    # "vertexIndex":I
    aget v21, v7, v3

    mul-float v21, v21, v9

    add-float v21, v21, p2

    aput v21, v20, v19

    .line 268
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "vertexIndex":I
    .restart local v19    # "vertexIndex":I
    add-int/lit8 v21, v3, 0x1

    aget v21, v7, v21

    mul-float v21, v21, v10

    add-float v21, v21, p3

    aput v21, v20, v18

    .line 269
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "vertexIndex":I
    .restart local v18    # "vertexIndex":I
    aput v2, v20, v19

    .line 270
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "vertexIndex":I
    .restart local v19    # "vertexIndex":I
    aget v21, v13, v3

    aput v21, v20, v18

    .line 271
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "vertexIndex":I
    .restart local v18    # "vertexIndex":I
    add-int/lit8 v21, v3, 0x1

    aget v21, v13, v21

    aput v21, v20, v19

    .line 266
    add-int/lit8 v3, v3, 0x2

    move/from16 v19, v18

    .end local v18    # "vertexIndex":I
    .restart local v19    # "vertexIndex":I
    goto :goto_2

    .line 273
    :cond_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 274
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFFFFFFF)V
    .locals 28
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
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
    .line 282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    move-object/from16 v20, v0

    .line 285
    .local v20, "triangles":[S
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 286
    .local v7, "regionTriangles":[S
    array-length v8, v7

    .line 287
    .local v8, "regionTrianglesLength":I
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 288
    .local v9, "regionVertices":[F
    array-length v10, v9

    .line 289
    .local v10, "regionVerticesLength":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v17, v0

    .line 291
    .local v17, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 292
    .local v15, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    if-eq v15, v0, :cond_2

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 297
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v18, v0

    .line 298
    .local v18, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v21, v0

    .line 299
    .local v21, "vertexIndex":I
    div-int/lit8 v14, v21, 0x5

    .line 301
    .local v14, "startVertex":I
    const/4 v6, 0x0

    .local v6, "i":I
    move/from16 v19, v18

    .end local v18    # "triangleIndex":I
    .local v19, "triangleIndex":I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 302
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "triangleIndex":I
    .restart local v18    # "triangleIndex":I
    aget-short v26, v7, v6

    add-int v26, v26, v14

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    aput-short v26, v20, v19

    .line 301
    add-int/lit8 v6, v6, 0x1

    move/from16 v19, v18

    .end local v18    # "triangleIndex":I
    .restart local v19    # "triangleIndex":I
    goto :goto_1

    .line 294
    .end local v6    # "i":I
    .end local v14    # "startVertex":I
    .end local v19    # "triangleIndex":I
    .end local v21    # "vertexIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v26, v0

    add-int v26, v26, v8

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v26, v0

    add-int v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 295
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto :goto_0

    .line 303
    .restart local v6    # "i":I
    .restart local v14    # "startVertex":I
    .restart local v19    # "triangleIndex":I
    .restart local v21    # "vertexIndex":I
    :cond_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v23, v0

    .line 306
    .local v23, "vertices":[F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 307
    .local v2, "color":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    move-object/from16 v16, v0

    .line 309
    .local v16, "textureCoords":[F
    add-float v24, p2, p4

    .line 310
    .local v24, "worldOriginX":F
    add-float v25, p3, p5

    .line 311
    .local v25, "worldOriginY":F
    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v11, p6, v26

    .line 312
    .local v11, "sX":F
    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v12, p7, v26

    .line 313
    .local v12, "sY":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .line 314
    .local v3, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    .line 317
    .local v13, "sin":F
    const/4 v6, 0x0

    move/from16 v22, v21

    .end local v21    # "vertexIndex":I
    .local v22, "vertexIndex":I
    :goto_2
    if-ge v6, v10, :cond_5

    .line 318
    aget v26, v9, v6

    mul-float v26, v26, v11

    sub-float v26, v26, p4

    mul-float v4, v26, p8

    .line 319
    .local v4, "fx":F
    add-int/lit8 v26, v6, 0x1

    aget v26, v9, v26

    mul-float v26, v26, v12

    sub-float v26, v26, p5

    mul-float v5, v26, p9

    .line 320
    .local v5, "fy":F
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "vertexIndex":I
    .restart local v21    # "vertexIndex":I
    mul-float v26, v3, v4

    mul-float v27, v13, v5

    sub-float v26, v26, v27

    add-float v26, v26, v24

    aput v26, v23, v22

    .line 321
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "vertexIndex":I
    .restart local v22    # "vertexIndex":I
    mul-float v26, v13, v4

    mul-float v27, v3, v5

    add-float v26, v26, v27

    add-float v26, v26, v25

    aput v26, v23, v21

    .line 322
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "vertexIndex":I
    .restart local v21    # "vertexIndex":I
    aput v2, v23, v22

    .line 323
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "vertexIndex":I
    .restart local v22    # "vertexIndex":I
    aget v26, v16, v6

    aput v26, v23, v21

    .line 324
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "vertexIndex":I
    .restart local v21    # "vertexIndex":I
    add-int/lit8 v26, v6, 0x1

    aget v26, v16, v26

    aput v26, v23, v22

    .line 317
    add-int/lit8 v6, v6, 0x2

    move/from16 v22, v21

    .end local v21    # "vertexIndex":I
    .restart local v22    # "vertexIndex":I
    goto :goto_2

    .line 326
    .end local v4    # "fx":F
    .end local v5    # "fy":F
    :cond_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 327
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 6
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 771
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

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 772
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 19
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 776
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 778
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 779
    .local v11, "triangles":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v16, v0

    .line 781
    .local v16, "vertices":[F
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 782
    .local v8, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v8, v0, :cond_2

    .line 783
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 787
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 788
    .local v9, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v17, v0

    div-int/lit8 v7, v17, 0x5

    .line 789
    .local v7, "startVertex":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "triangleIndex":I
    .local v10, "triangleIndex":I
    int-to-short v0, v7

    move/from16 v17, v0

    aput-short v17, v11, v9

    .line 790
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v10

    .line 791
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v9

    .line 792
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v10

    .line 793
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "triangleIndex":I
    .restart local v10    # "triangleIndex":I
    add-int/lit8 v17, v7, 0x3

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v11, v9

    .line 794
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "triangleIndex":I
    .restart local v9    # "triangleIndex":I
    int-to-short v0, v7

    move/from16 v17, v0

    aput-short v17, v11, v10

    .line 795
    move-object/from16 v0, p0

    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 797
    add-float v3, p2, p4

    .line 798
    .local v3, "fx2":F
    add-float v4, p3, p5

    .line 799
    .local v4, "fy2":F
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 800
    .local v12, "u":F
    move-object/from16 v0, p1

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 801
    .local v14, "v":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 802
    .local v13, "u2":F
    move-object/from16 v0, p1

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 804
    .local v15, "v2":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 805
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 806
    .local v5, "idx":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .local v6, "idx":I
    aput p2, v16, v5

    .line 807
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput p3, v16, v6

    .line 808
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v2, v16, v5

    .line 809
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v12, v16, v6

    .line 810
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v14, v16, v5

    .line 812
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput p2, v16, v6

    .line 813
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v4, v16, v5

    .line 814
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v16, v6

    .line 815
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v12, v16, v5

    .line 816
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v15, v16, v6

    .line 818
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v3, v16, v5

    .line 819
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v4, v16, v6

    .line 820
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v2, v16, v5

    .line 821
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v13, v16, v6

    .line 822
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v15, v16, v5

    .line 824
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v3, v16, v6

    .line 825
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput p3, v16, v5

    .line 826
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v16, v6

    .line 827
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .restart local v6    # "idx":I
    aput v13, v16, v5

    .line 828
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput v14, v16, v6

    .line 829
    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 830
    return-void

    .line 784
    .end local v2    # "color":F
    .end local v3    # "fx2":F
    .end local v4    # "fy2":F
    .end local v5    # "idx":I
    .end local v7    # "startVertex":I
    .end local v9    # "triangleIndex":I
    .end local v12    # "u":F
    .end local v13    # "u2":F
    .end local v14    # "v":F
    .end local v15    # "v2":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x6

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x14

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 785
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 41
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
    .line 835
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v39, v0

    if-nez v39, :cond_0

    new-instance v39, Ljava/lang/IllegalStateException;

    const-string v40, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 837
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    move-object/from16 v23, v0

    .line 838
    .local v23, "triangles":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    .line 840
    .local v28, "vertices":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v20, v0

    .line 841
    .local v20, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v39, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_4

    .line 842
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 846
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v21, v0

    .line 847
    .local v21, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v39, v0

    div-int/lit8 v19, v39, 0x5

    .line 848
    .local v19, "startVertex":I
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .local v22, "triangleIndex":I
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v21

    .line 849
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x1

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v22

    .line 850
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .restart local v22    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x2

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v21

    .line 851
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x2

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v22

    .line 852
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .restart local v22    # "triangleIndex":I
    add-int/lit8 v39, v19, 0x3

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v21

    .line 853
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v39, v0

    aput-short v39, v23, v22

    .line 854
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 857
    add-float v29, p2, p4

    .line 858
    .local v29, "worldOriginX":F
    add-float v30, p3, p5

    .line 859
    .local v30, "worldOriginY":F
    move/from16 v0, p4

    neg-float v4, v0

    .line 860
    .local v4, "fx":F
    move/from16 v0, p5

    neg-float v6, v0

    .line 861
    .local v6, "fy":F
    sub-float v5, p6, p4

    .line 862
    .local v5, "fx2":F
    sub-float v7, p7, p5

    .line 865
    .local v7, "fy2":F
    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v39, p8, v39

    if-nez v39, :cond_2

    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v39, p9, v39

    if-eqz v39, :cond_3

    .line 866
    :cond_2
    mul-float v4, v4, p8

    .line 867
    mul-float v6, v6, p9

    .line 868
    mul-float v5, v5, p8

    .line 869
    mul-float v7, v7, p9

    .line 873
    :cond_3
    move v10, v4

    .line 874
    .local v10, "p1x":F
    move v11, v6

    .line 875
    .local v11, "p1y":F
    move v12, v4

    .line 876
    .local v12, "p2x":F
    move v13, v7

    .line 877
    .local v13, "p2y":F
    move v14, v5

    .line 878
    .local v14, "p3x":F
    move v15, v7

    .line 879
    .local v15, "p3y":F
    move/from16 v16, v5

    .line 880
    .local v16, "p4x":F
    move/from16 v17, v6

    .line 892
    .local v17, "p4y":F
    const/16 v39, 0x0

    cmpl-float v39, p10, v39

    if-eqz v39, :cond_6

    .line 893
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .line 894
    .local v3, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v18

    .line 896
    .local v18, "sin":F
    mul-float v39, v3, v10

    mul-float v40, v18, v11

    sub-float v31, v39, v40

    .line 897
    .local v31, "x1":F
    mul-float v39, v18, v10

    mul-float v40, v3, v11

    add-float v35, v39, v40

    .line 899
    .local v35, "y1":F
    mul-float v39, v3, v12

    mul-float v40, v18, v13

    sub-float v32, v39, v40

    .line 900
    .local v32, "x2":F
    mul-float v39, v18, v12

    mul-float v40, v3, v13

    add-float v36, v39, v40

    .line 902
    .local v36, "y2":F
    mul-float v39, v3, v14

    mul-float v40, v18, v15

    sub-float v33, v39, v40

    .line 903
    .local v33, "x3":F
    mul-float v39, v18, v14

    mul-float v40, v3, v15

    add-float v37, v39, v40

    .line 905
    .local v37, "y3":F
    sub-float v39, v33, v32

    add-float v34, v31, v39

    .line 906
    .local v34, "x4":F
    sub-float v39, v36, v35

    sub-float v38, v37, v39

    .line 921
    .end local v3    # "cos":F
    .end local v18    # "sin":F
    .local v38, "y4":F
    :goto_1
    add-float v31, v31, v29

    .line 922
    add-float v35, v35, v30

    .line 923
    add-float v32, v32, v29

    .line 924
    add-float v36, v36, v30

    .line 925
    add-float v33, v33, v29

    .line 926
    add-float v37, v37, v30

    .line 927
    add-float v34, v34, v29

    .line 928
    add-float v38, v38, v30

    .line 930
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v24, v0

    .line 931
    .local v24, "u":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v26, v0

    .line 932
    .local v26, "v":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v25, v0

    .line 933
    .local v25, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v27, v0

    .line 935
    .local v27, "v2":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 936
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 937
    .local v8, "idx":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    aput v31, v28, v8

    .line 938
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v35, v28, v9

    .line 939
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v28, v8

    .line 940
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v24, v28, v9

    .line 941
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v26, v28, v8

    .line 943
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v32, v28, v9

    .line 944
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v36, v28, v8

    .line 945
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v28, v9

    .line 946
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v24, v28, v8

    .line 947
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v27, v28, v9

    .line 949
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v33, v28, v8

    .line 950
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v37, v28, v9

    .line 951
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v28, v8

    .line 952
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v25, v28, v9

    .line 953
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v27, v28, v8

    .line 955
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v34, v28, v9

    .line 956
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v38, v28, v8

    .line 957
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v28, v9

    .line 958
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v25, v28, v8

    .line 959
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v26, v28, v9

    .line 960
    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 961
    return-void

    .line 843
    .end local v2    # "color":F
    .end local v4    # "fx":F
    .end local v5    # "fx2":F
    .end local v6    # "fy":F
    .end local v7    # "fy2":F
    .end local v8    # "idx":I
    .end local v10    # "p1x":F
    .end local v11    # "p1y":F
    .end local v12    # "p2x":F
    .end local v13    # "p2y":F
    .end local v14    # "p3x":F
    .end local v15    # "p3y":F
    .end local v16    # "p4x":F
    .end local v17    # "p4y":F
    .end local v19    # "startVertex":I
    .end local v21    # "triangleIndex":I
    .end local v24    # "u":F
    .end local v25    # "u2":F
    .end local v26    # "v":F
    .end local v27    # "v2":F
    .end local v29    # "worldOriginX":F
    .end local v30    # "worldOriginY":F
    .end local v31    # "x1":F
    .end local v32    # "x2":F
    .end local v33    # "x3":F
    .end local v34    # "x4":F
    .end local v35    # "y1":F
    .end local v36    # "y2":F
    .end local v37    # "y3":F
    .end local v38    # "y4":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x6

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x14

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_1

    .line 844
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0

    .line 908
    .restart local v4    # "fx":F
    .restart local v5    # "fx2":F
    .restart local v6    # "fy":F
    .restart local v7    # "fy2":F
    .restart local v10    # "p1x":F
    .restart local v11    # "p1y":F
    .restart local v12    # "p2x":F
    .restart local v13    # "p2y":F
    .restart local v14    # "p3x":F
    .restart local v15    # "p3y":F
    .restart local v16    # "p4x":F
    .restart local v17    # "p4y":F
    .restart local v19    # "startVertex":I
    .restart local v21    # "triangleIndex":I
    .restart local v29    # "worldOriginX":F
    .restart local v30    # "worldOriginY":F
    :cond_6
    move/from16 v31, v10

    .line 909
    .restart local v31    # "x1":F
    move/from16 v35, v11

    .line 911
    .restart local v35    # "y1":F
    move/from16 v32, v12

    .line 912
    .restart local v32    # "x2":F
    move/from16 v36, v13

    .line 914
    .restart local v36    # "y2":F
    move/from16 v33, v14

    .line 915
    .restart local v33    # "x3":F
    move/from16 v37, v15

    .line 917
    .restart local v37    # "y3":F
    move/from16 v34, v16

    .line 918
    .restart local v34    # "x4":F
    move/from16 v38, v17

    .restart local v38    # "y4":F
    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 45
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
    .param p11, "clockwise"    # Z

    .prologue
    .line 966
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v43, v0

    if-nez v43, :cond_0

    new-instance v43, Ljava/lang/IllegalStateException;

    const-string v44, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v43 .. v44}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 968
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    move-object/from16 v23, v0

    .line 969
    .local v23, "triangles":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    move-object/from16 v32, v0

    .line 971
    .local v32, "vertices":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v20, v0

    .line 972
    .local v20, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v43, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_4

    .line 973
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 977
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v21, v0

    .line 978
    .local v21, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v43, v0

    div-int/lit8 v19, v43, 0x5

    .line 979
    .local v19, "startVertex":I
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .local v22, "triangleIndex":I
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v43, v0

    aput-short v43, v23, v21

    .line 980
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    add-int/lit8 v43, v19, 0x1

    move/from16 v0, v43

    int-to-short v0, v0

    move/from16 v43, v0

    aput-short v43, v23, v22

    .line 981
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .restart local v22    # "triangleIndex":I
    add-int/lit8 v43, v19, 0x2

    move/from16 v0, v43

    int-to-short v0, v0

    move/from16 v43, v0

    aput-short v43, v23, v21

    .line 982
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    add-int/lit8 v43, v19, 0x2

    move/from16 v0, v43

    int-to-short v0, v0

    move/from16 v43, v0

    aput-short v43, v23, v22

    .line 983
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "triangleIndex":I
    .restart local v22    # "triangleIndex":I
    add-int/lit8 v43, v19, 0x3

    move/from16 v0, v43

    int-to-short v0, v0

    move/from16 v43, v0

    aput-short v43, v23, v21

    .line 984
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "triangleIndex":I
    .restart local v21    # "triangleIndex":I
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v43, v0

    aput-short v43, v23, v22

    .line 985
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 988
    add-float v33, p2, p4

    .line 989
    .local v33, "worldOriginX":F
    add-float v34, p3, p5

    .line 990
    .local v34, "worldOriginY":F
    move/from16 v0, p4

    neg-float v4, v0

    .line 991
    .local v4, "fx":F
    move/from16 v0, p5

    neg-float v6, v0

    .line 992
    .local v6, "fy":F
    sub-float v5, p6, p4

    .line 993
    .local v5, "fx2":F
    sub-float v7, p7, p5

    .line 996
    .local v7, "fy2":F
    const/high16 v43, 0x3f800000    # 1.0f

    cmpl-float v43, p8, v43

    if-nez v43, :cond_2

    const/high16 v43, 0x3f800000    # 1.0f

    cmpl-float v43, p9, v43

    if-eqz v43, :cond_3

    .line 997
    :cond_2
    mul-float v4, v4, p8

    .line 998
    mul-float v6, v6, p9

    .line 999
    mul-float v5, v5, p8

    .line 1000
    mul-float v7, v7, p9

    .line 1004
    :cond_3
    move v10, v4

    .line 1005
    .local v10, "p1x":F
    move v11, v6

    .line 1006
    .local v11, "p1y":F
    move v12, v4

    .line 1007
    .local v12, "p2x":F
    move v13, v7

    .line 1008
    .local v13, "p2y":F
    move v14, v5

    .line 1009
    .local v14, "p3x":F
    move v15, v7

    .line 1010
    .local v15, "p3y":F
    move/from16 v16, v5

    .line 1011
    .local v16, "p4x":F
    move/from16 v17, v6

    .line 1023
    .local v17, "p4y":F
    const/16 v43, 0x0

    cmpl-float v43, p10, v43

    if-eqz v43, :cond_6

    .line 1024
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .line 1025
    .local v3, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v18

    .line 1027
    .local v18, "sin":F
    mul-float v43, v3, v10

    mul-float v44, v18, v11

    sub-float v35, v43, v44

    .line 1028
    .local v35, "x1":F
    mul-float v43, v18, v10

    mul-float v44, v3, v11

    add-float v39, v43, v44

    .line 1030
    .local v39, "y1":F
    mul-float v43, v3, v12

    mul-float v44, v18, v13

    sub-float v36, v43, v44

    .line 1031
    .local v36, "x2":F
    mul-float v43, v18, v12

    mul-float v44, v3, v13

    add-float v40, v43, v44

    .line 1033
    .local v40, "y2":F
    mul-float v43, v3, v14

    mul-float v44, v18, v15

    sub-float v37, v43, v44

    .line 1034
    .local v37, "x3":F
    mul-float v43, v18, v14

    mul-float v44, v3, v15

    add-float v41, v43, v44

    .line 1036
    .local v41, "y3":F
    sub-float v43, v37, v36

    add-float v38, v35, v43

    .line 1037
    .local v38, "x4":F
    sub-float v43, v40, v39

    sub-float v42, v41, v43

    .line 1052
    .end local v3    # "cos":F
    .end local v18    # "sin":F
    .local v42, "y4":F
    :goto_1
    add-float v35, v35, v33

    .line 1053
    add-float v39, v39, v34

    .line 1054
    add-float v36, v36, v33

    .line 1055
    add-float v40, v40, v34

    .line 1056
    add-float v37, v37, v33

    .line 1057
    add-float v41, v41, v34

    .line 1058
    add-float v38, v38, v33

    .line 1059
    add-float v42, v42, v34

    .line 1062
    if-eqz p11, :cond_7

    .line 1063
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v24, v0

    .line 1064
    .local v24, "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v28, v0

    .line 1065
    .local v28, "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v25, v0

    .line 1066
    .local v25, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v29, v0

    .line 1067
    .local v29, "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v26, v0

    .line 1068
    .local v26, "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v30, v0

    .line 1069
    .local v30, "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v27, v0

    .line 1070
    .local v27, "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v31, v0

    .line 1082
    .local v31, "v4":F
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 1083
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1084
    .local v8, "idx":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    aput v35, v32, v8

    .line 1085
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v39, v32, v9

    .line 1086
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v32, v8

    .line 1087
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v24, v32, v9

    .line 1088
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v28, v32, v8

    .line 1090
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v36, v32, v9

    .line 1091
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v40, v32, v8

    .line 1092
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v32, v9

    .line 1093
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v25, v32, v8

    .line 1094
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v29, v32, v9

    .line 1096
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v37, v32, v8

    .line 1097
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v41, v32, v9

    .line 1098
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v32, v8

    .line 1099
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v26, v32, v9

    .line 1100
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v30, v32, v8

    .line 1102
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v38, v32, v9

    .line 1103
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v42, v32, v8

    .line 1104
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v32, v9

    .line 1105
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v27, v32, v8

    .line 1106
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v31, v32, v9

    .line 1107
    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1108
    return-void

    .line 974
    .end local v2    # "color":F
    .end local v4    # "fx":F
    .end local v5    # "fx2":F
    .end local v6    # "fy":F
    .end local v7    # "fy2":F
    .end local v8    # "idx":I
    .end local v10    # "p1x":F
    .end local v11    # "p1y":F
    .end local v12    # "p2x":F
    .end local v13    # "p2y":F
    .end local v14    # "p3x":F
    .end local v15    # "p3y":F
    .end local v16    # "p4x":F
    .end local v17    # "p4y":F
    .end local v19    # "startVertex":I
    .end local v21    # "triangleIndex":I
    .end local v24    # "u1":F
    .end local v25    # "u2":F
    .end local v26    # "u3":F
    .end local v27    # "u4":F
    .end local v28    # "v1":F
    .end local v29    # "v2":F
    .end local v30    # "v3":F
    .end local v31    # "v4":F
    .end local v33    # "worldOriginX":F
    .end local v34    # "worldOriginY":F
    .end local v35    # "x1":F
    .end local v36    # "x2":F
    .end local v37    # "x3":F
    .end local v38    # "x4":F
    .end local v39    # "y1":F
    .end local v40    # "y2":F
    .end local v41    # "y3":F
    .end local v42    # "y4":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x6

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x14

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_1

    .line 975
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0

    .line 1039
    .restart local v4    # "fx":F
    .restart local v5    # "fx2":F
    .restart local v6    # "fy":F
    .restart local v7    # "fy2":F
    .restart local v10    # "p1x":F
    .restart local v11    # "p1y":F
    .restart local v12    # "p2x":F
    .restart local v13    # "p2y":F
    .restart local v14    # "p3x":F
    .restart local v15    # "p3y":F
    .restart local v16    # "p4x":F
    .restart local v17    # "p4y":F
    .restart local v19    # "startVertex":I
    .restart local v21    # "triangleIndex":I
    .restart local v33    # "worldOriginX":F
    .restart local v34    # "worldOriginY":F
    :cond_6
    move/from16 v35, v10

    .line 1040
    .restart local v35    # "x1":F
    move/from16 v39, v11

    .line 1042
    .restart local v39    # "y1":F
    move/from16 v36, v12

    .line 1043
    .restart local v36    # "x2":F
    move/from16 v40, v13

    .line 1045
    .restart local v40    # "y2":F
    move/from16 v37, v14

    .line 1046
    .restart local v37    # "x3":F
    move/from16 v41, v15

    .line 1048
    .restart local v41    # "y3":F
    move/from16 v38, v16

    .line 1049
    .restart local v38    # "x4":F
    move/from16 v42, v17

    .restart local v42    # "y4":F
    goto/16 :goto_1

    .line 1072
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v24, v0

    .line 1073
    .restart local v24    # "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v28, v0

    .line 1074
    .restart local v28    # "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v25, v0

    .line 1075
    .restart local v25    # "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v29, v0

    .line 1076
    .restart local v29    # "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v26, v0

    .line 1077
    .restart local v26    # "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v30, v0

    .line 1078
    .restart local v30    # "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v27, v0

    .line 1079
    .restart local v27    # "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v31, v0

    .restart local v31    # "v4":F
    goto/16 :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 25
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 1112
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1114
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 1115
    .local v9, "triangles":[S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 1117
    .local v14, "vertices":[F
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1118
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v6, v0, :cond_2

    .line 1119
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 1123
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1124
    .local v7, "triangleIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v23, v0

    div-int/lit8 v5, v23, 0x5

    .line 1125
    .local v5, "startVertex":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .local v8, "triangleIndex":I
    int-to-short v0, v5

    move/from16 v23, v0

    aput-short v23, v9, v7

    .line 1126
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v23, v5, 0x1

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v9, v8

    .line 1127
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v23, v5, 0x2

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v9, v7

    .line 1128
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    add-int/lit8 v23, v5, 0x2

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v9, v8

    .line 1129
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "triangleIndex":I
    .restart local v8    # "triangleIndex":I
    add-int/lit8 v23, v5, 0x3

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v9, v7

    .line 1130
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "triangleIndex":I
    .restart local v7    # "triangleIndex":I
    int-to-short v0, v5

    move/from16 v23, v0

    aput-short v23, v9, v8

    .line 1131
    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1134
    move-object/from16 v0, p4

    iget v15, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 1135
    .local v15, "x1":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v19, v0

    .line 1136
    .local v19, "y1":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v23, v0

    mul-float v23, v23, p3

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v24, v0

    add-float v16, v23, v24

    .line 1137
    .local v16, "x2":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v23, v0

    mul-float v23, v23, p3

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v24, v0

    add-float v20, v23, v24

    .line 1138
    .local v20, "y2":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v23, v0

    mul-float v23, v23, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v24, v0

    mul-float v24, v24, p3

    add-float v23, v23, v24

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v24, v0

    add-float v17, v23, v24

    .line 1139
    .local v17, "x3":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v23, v0

    mul-float v23, v23, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v24, v0

    mul-float v24, v24, p3

    add-float v23, v23, v24

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v24, v0

    add-float v21, v23, v24

    .line 1140
    .local v21, "y3":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v23, v0

    mul-float v23, v23, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v24, v0

    add-float v18, v23, v24

    .line 1141
    .local v18, "x4":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v23, v0

    mul-float v23, v23, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v24, v0

    add-float v22, v23, v24

    .line 1143
    .local v22, "y4":F
    move-object/from16 v0, p1

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1144
    .local v10, "u":F
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1145
    .local v12, "v":F
    move-object/from16 v0, p1

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1146
    .local v11, "u2":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1148
    .local v13, "v2":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 1149
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1150
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aput v15, v14, v3

    .line 1151
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v19, v14, v4

    .line 1152
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v14, v3

    .line 1153
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v10, v14, v4

    .line 1154
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v12, v14, v3

    .line 1156
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v16, v14, v4

    .line 1157
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v20, v14, v3

    .line 1158
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v14, v4

    .line 1159
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v10, v14, v3

    .line 1160
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v13, v14, v4

    .line 1162
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v17, v14, v3

    .line 1163
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v21, v14, v4

    .line 1164
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v14, v3

    .line 1165
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v11, v14, v4

    .line 1166
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v13, v14, v3

    .line 1168
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v18, v14, v4

    .line 1169
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v22, v14, v3

    .line 1170
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v14, v4

    .line 1171
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v11, v14, v3

    .line 1172
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v12, v14, v4

    .line 1173
    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1174
    return-void

    .line 1120
    .end local v2    # "color":F
    .end local v3    # "idx":I
    .end local v5    # "startVertex":I
    .end local v7    # "triangleIndex":I
    .end local v10    # "u":F
    .end local v11    # "u2":F
    .end local v12    # "v":F
    .end local v13    # "v2":F
    .end local v15    # "x1":F
    .end local v16    # "x2":F
    .end local v17    # "x3":F
    .end local v18    # "x4":F
    .end local v19    # "y1":F
    .end local v20    # "y2":F
    .end local v21    # "y3":F
    .end local v22    # "y4":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x6

    array-length v0, v9

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x14

    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 1121
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public enableBlending()V
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    .line 1213
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 150
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before end."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 152
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    .line 155
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 156
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0
.end method

.method public flush()V
    .locals 6

    .prologue
    const/16 v4, 0xbe2

    const/4 v5, 0x0

    .line 1178
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-nez v2, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 1181
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 1182
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1183
    .local v1, "trianglesInBatch":I
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    if-le v1, v2, :cond_1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    .line 1185
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 1186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 1187
    .local v0, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    invoke-virtual {v0, v2, v5, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1188
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    invoke-virtual {v0, v2, v5, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1190
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    if-eqz v2, :cond_3

    .line 1191
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 1197
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_2
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 1199
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1200
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    goto :goto_0

    .line 1193
    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 1194
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    goto :goto_1

    .line 1197
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_2
.end method

.method public getBlendDstFunc()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .locals 1

    .prologue
    .line 1225
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 183
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    .line 184
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 185
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 186
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 187
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 188
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 189
    return-object v0
.end method

.method public getPackedColor()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawing()Z
    .locals 1

    .prologue
    .line 1307
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 1
    .param p1, "srcFunc"    # I
    .param p2, "dstFunc"    # I

    .prologue
    .line 1217
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1219
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    .line 1220
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    goto :goto_0
.end method

.method public setColor(F)V
    .locals 0
    .param p1, "color"    # F

    .prologue
    .line 178
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 179
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

    .line 172
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

    .line 173
    .local v0, "intBits":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 174
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    .line 168
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1253
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1254
    :cond_1
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 1283
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_2

    .line 1286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 1290
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1291
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_3

    .line 1293
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 1296
    :goto_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1298
    :cond_1
    return-void

    .line 1288
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    .line 1295
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_1
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 1258
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1260
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1261
    :cond_1
    return-void
.end method
