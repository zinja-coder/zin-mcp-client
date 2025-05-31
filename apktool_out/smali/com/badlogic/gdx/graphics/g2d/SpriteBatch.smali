.class public Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.super Ljava/lang/Object;
.source "SpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/Batch;


# instance fields
.field private blendDstFunc:I

.field private blendSrcFunc:I

.field private blendingDisabled:Z

.field color:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field drawing:Z

.field idx:I

.field invTexHeight:F

.field invTexWidth:F

.field lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxSpritesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field final vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 81
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 17
    .param p1, "size"    # I
    .param p2, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 43
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 45
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 47
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 48
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 49
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 51
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 52
    const/16 v2, 0x302

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 53
    const/16 v2, 0x303

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 56
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 59
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 60
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 66
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 69
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 93
    const/16 v2, 0x1554

    move/from16 v0, p1

    if-le v0, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t have more than 5460 sprites per batch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v3, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const/4 v4, 0x0

    mul-int/lit8 v5, p1, 0x4

    mul-int/lit8 v6, p1, 0x6

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v12, 0x0

    new-instance v13, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const-string v16, "a_position"

    invoke-direct/range {v13 .. v16}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v14, 0x4

    const/4 v15, 0x4

    const-string v16, "a_color"

    invoke-direct/range {v13 .. v16}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v13, v7, v12

    const/4 v12, 0x2

    new-instance v13, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v14, 0x10

    const/4 v15, 0x2

    const-string v16, "a_texCoord0"

    invoke-direct/range {v13 .. v16}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v13, v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 101
    mul-int/lit8 v2, p1, 0x14

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 103
    mul-int/lit8 v11, p1, 0x6

    .line 104
    .local v11, "len":I
    new-array v9, v11, [S

    .line 105
    .local v9, "indices":[S
    const/4 v10, 0x0

    .line 106
    .local v10, "j":S
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 107
    aput-short v10, v9, v8

    .line 108
    add-int/lit8 v2, v8, 0x1

    add-int/lit8 v3, v10, 0x1

    int-to-short v3, v3

    aput-short v3, v9, v2

    .line 109
    add-int/lit8 v2, v8, 0x2

    add-int/lit8 v3, v10, 0x2

    int-to-short v3, v3

    aput-short v3, v9, v2

    .line 110
    add-int/lit8 v2, v8, 0x3

    add-int/lit8 v3, v10, 0x2

    int-to-short v3, v3

    aput-short v3, v9, v2

    .line 111
    add-int/lit8 v2, v8, 0x4

    add-int/lit8 v3, v10, 0x3

    int-to-short v3, v3

    aput-short v3, v9, v2

    .line 112
    add-int/lit8 v2, v8, 0x5

    aput-short v10, v9, v2

    .line 106
    add-int/lit8 v8, v8, 0x6

    add-int/lit8 v2, v10, 0x4

    int-to-short v10, v2

    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 116
    if-nez p2, :cond_2

    .line 117
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 118
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    .line 121
    :goto_1
    return-void

    .line 120
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_1
.end method

.method public static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 6

    .prologue
    .line 125
    const-string v2, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    .line 139
    .local v2, "vertexShader":Ljava/lang/String;
    const-string v0, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 153
    .local v0, "fragmentShader":Ljava/lang/String;
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
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

    .line 155
    :cond_0
    return-object v1
.end method

.method private setupMatrices()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1036
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1037
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projTrans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1039
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 1044
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projTrans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1042
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 163
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 171
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_0
.end method

.method public disableBlending()V
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-eqz v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1008
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 1009
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 502
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

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 503
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 12
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 507
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "SpriteBatch.begin must be called before draw."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 509
    :cond_0
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 511
    .local v9, "vertices":[F
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v10, :cond_2

    .line 512
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 516
    :cond_1
    :goto_0
    add-float v1, p2, p4

    .line 517
    .local v1, "fx2":F
    add-float v2, p3, p5

    .line 518
    .local v2, "fy2":F
    const/4 v5, 0x0

    .line 519
    .local v5, "u":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 520
    .local v7, "v":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 521
    .local v6, "u2":F
    const/4 v8, 0x0

    .line 523
    .local v8, "v2":F
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 524
    .local v0, "color":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 525
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aput p2, v9, v3

    .line 526
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p3, v9, v4

    .line 527
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v9, v3

    .line 528
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/4 v10, 0x0

    aput v10, v9, v4

    .line 529
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v3

    .line 531
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p2, v9, v4

    .line 532
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v9, v3

    .line 533
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v9, v4

    .line 534
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v10, 0x0

    aput v10, v9, v3

    .line 535
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/4 v10, 0x0

    aput v10, v9, v4

    .line 537
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v9, v3

    .line 538
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v9, v4

    .line 539
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v9, v3

    .line 540
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v4

    .line 541
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v10, 0x0

    aput v10, v9, v3

    .line 543
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v1, v9, v4

    .line 544
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v9, v3

    .line 545
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v9, v4

    .line 546
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v3

    .line 547
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v4

    .line 548
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 549
    return-void

    .line 513
    .end local v0    # "color":F
    .end local v1    # "fx2":F
    .end local v2    # "fy2":F
    .end local v3    # "idx":I
    .end local v5    # "u":F
    .end local v6    # "u2":F
    .end local v7    # "v":F
    .end local v8    # "v2":F
    :cond_2
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v11, v9

    if-ne v10, v11, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 8
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
    .line 460
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "SpriteBatch.begin must be called before draw."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 462
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 464
    .local v5, "vertices":[F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v6, :cond_2

    .line 465
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 469
    :cond_1
    :goto_0
    add-float v1, p2, p4

    .line 470
    .local v1, "fx2":F
    add-float v2, p3, p5

    .line 472
    .local v2, "fy2":F
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 473
    .local v0, "color":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 474
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aput p2, v5, v3

    .line 475
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p3, v5, v4

    .line 476
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v5, v3

    .line 477
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p6, v5, v4

    .line 478
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p7, v5, v3

    .line 480
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p2, v5, v4

    .line 481
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v5, v3

    .line 482
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v5, v4

    .line 483
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p6, v5, v3

    .line 484
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p9, v5, v4

    .line 486
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v5, v3

    .line 487
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v5, v4

    .line 488
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v5, v3

    .line 489
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p8, v5, v4

    .line 490
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p9, v5, v3

    .line 492
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v1, v5, v4

    .line 493
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v5, v3

    .line 494
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v5, v4

    .line 495
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p8, v5, v3

    .line 496
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p7, v5, v4

    .line 497
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 498
    return-void

    .line 466
    .end local v0    # "color":F
    .end local v1    # "fx2":F
    .end local v2    # "fy2":F
    .end local v3    # "idx":I
    :cond_2
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v7, v5

    if-ne v6, v7, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 37
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
    .line 225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    new-instance v35, Ljava/lang/IllegalStateException;

    const-string v36, "SpriteBatch.begin must be called before draw."

    invoke-direct/range {v35 .. v36}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v24, v0

    .line 229
    .local v24, "vertices":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_6

    .line 230
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 235
    :cond_1
    :goto_0
    add-float v25, p2, p4

    .line 236
    .local v25, "worldOriginX":F
    add-float v26, p3, p5

    .line 237
    .local v26, "worldOriginY":F
    move/from16 v0, p4

    neg-float v4, v0

    .line 238
    .local v4, "fx":F
    move/from16 v0, p5

    neg-float v6, v0

    .line 239
    .local v6, "fy":F
    sub-float v5, p6, p4

    .line 240
    .local v5, "fx2":F
    sub-float v7, p7, p5

    .line 243
    .local v7, "fy2":F
    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p8, v35

    if-nez v35, :cond_2

    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p9, v35

    if-eqz v35, :cond_3

    .line 244
    :cond_2
    mul-float v4, v4, p8

    .line 245
    mul-float v6, v6, p9

    .line 246
    mul-float v5, v5, p8

    .line 247
    mul-float v7, v7, p9

    .line 251
    :cond_3
    move v10, v4

    .line 252
    .local v10, "p1x":F
    move v11, v6

    .line 253
    .local v11, "p1y":F
    move v12, v4

    .line 254
    .local v12, "p2x":F
    move v13, v7

    .line 255
    .local v13, "p2y":F
    move v14, v5

    .line 256
    .local v14, "p3x":F
    move v15, v7

    .line 257
    .local v15, "p3y":F
    move/from16 v16, v5

    .line 258
    .local v16, "p4x":F
    move/from16 v17, v6

    .line 270
    .local v17, "p4y":F
    const/16 v35, 0x0

    cmpl-float v35, p10, v35

    if-eqz v35, :cond_7

    .line 271
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .line 272
    .local v3, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v18

    .line 274
    .local v18, "sin":F
    mul-float v35, v3, v10

    mul-float v36, v18, v11

    sub-float v27, v35, v36

    .line 275
    .local v27, "x1":F
    mul-float v35, v18, v10

    mul-float v36, v3, v11

    add-float v31, v35, v36

    .line 277
    .local v31, "y1":F
    mul-float v35, v3, v12

    mul-float v36, v18, v13

    sub-float v28, v35, v36

    .line 278
    .local v28, "x2":F
    mul-float v35, v18, v12

    mul-float v36, v3, v13

    add-float v32, v35, v36

    .line 280
    .local v32, "y2":F
    mul-float v35, v3, v14

    mul-float v36, v18, v15

    sub-float v29, v35, v36

    .line 281
    .local v29, "x3":F
    mul-float v35, v18, v14

    mul-float v36, v3, v15

    add-float v33, v35, v36

    .line 283
    .local v33, "y3":F
    sub-float v35, v29, v28

    add-float v30, v27, v35

    .line 284
    .local v30, "x4":F
    sub-float v35, v32, v31

    sub-float v34, v33, v35

    .line 299
    .end local v3    # "cos":F
    .end local v18    # "sin":F
    .local v34, "y4":F
    :goto_1
    add-float v27, v27, v25

    .line 300
    add-float v31, v31, v26

    .line 301
    add-float v28, v28, v25

    .line 302
    add-float v32, v32, v26

    .line 303
    add-float v29, v29, v25

    .line 304
    add-float v33, v33, v26

    .line 305
    add-float v30, v30, v25

    .line 306
    add-float v34, v34, v26

    .line 308
    move/from16 v0, p11

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    move/from16 v36, v0

    mul-float v20, v35, v36

    .line 309
    .local v20, "u":F
    add-int v35, p12, p14

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    move/from16 v36, v0

    mul-float v22, v35, v36

    .line 310
    .local v22, "v":F
    add-int v35, p11, p13

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    move/from16 v36, v0

    mul-float v21, v35, v36

    .line 311
    .local v21, "u2":F
    move/from16 v0, p12

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    move/from16 v36, v0

    mul-float v23, v35, v36

    .line 313
    .local v23, "v2":F
    if-eqz p15, :cond_4

    .line 314
    move/from16 v19, v20

    .line 315
    .local v19, "tmp":F
    move/from16 v20, v21

    .line 316
    move/from16 v21, v19

    .line 319
    .end local v19    # "tmp":F
    :cond_4
    if-eqz p16, :cond_5

    .line 320
    move/from16 v19, v22

    .line 321
    .restart local v19    # "tmp":F
    move/from16 v22, v23

    .line 322
    move/from16 v23, v19

    .line 325
    .end local v19    # "tmp":F
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 326
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 327
    .local v8, "idx":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    aput v27, v24, v8

    .line 328
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v31, v24, v9

    .line 329
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v24, v8

    .line 330
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v20, v24, v9

    .line 331
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v22, v24, v8

    .line 333
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v28, v24, v9

    .line 334
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v32, v24, v8

    .line 335
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v24, v9

    .line 336
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v20, v24, v8

    .line 337
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v23, v24, v9

    .line 339
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v29, v24, v8

    .line 340
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v33, v24, v9

    .line 341
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v24, v8

    .line 342
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v21, v24, v9

    .line 343
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v23, v24, v8

    .line 345
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v30, v24, v9

    .line 346
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v34, v24, v8

    .line 347
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v24, v9

    .line 348
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v21, v24, v8

    .line 349
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v22, v24, v9

    .line 350
    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 351
    return-void

    .line 231
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
    .end local v20    # "u":F
    .end local v21    # "u2":F
    .end local v22    # "v":F
    .end local v23    # "v2":F
    .end local v25    # "worldOriginX":F
    .end local v26    # "worldOriginY":F
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "x3":F
    .end local v30    # "x4":F
    .end local v31    # "y1":F
    .end local v32    # "y2":F
    .end local v33    # "y3":F
    .end local v34    # "y4":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v35, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0

    .line 286
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
    .restart local v25    # "worldOriginX":F
    .restart local v26    # "worldOriginY":F
    :cond_7
    move/from16 v27, v10

    .line 287
    .restart local v27    # "x1":F
    move/from16 v31, v11

    .line 289
    .restart local v31    # "y1":F
    move/from16 v28, v12

    .line 290
    .restart local v28    # "x2":F
    move/from16 v32, v13

    .line 292
    .restart local v32    # "y2":F
    move/from16 v29, v14

    .line 293
    .restart local v29    # "x3":F
    move/from16 v33, v15

    .line 295
    .restart local v33    # "y3":F
    move/from16 v30, v16

    .line 296
    .restart local v30    # "x4":F
    move/from16 v34, v17

    .restart local v34    # "y4":F
    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 14
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
    .line 356
    iget-boolean v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "SpriteBatch.begin must be called before draw."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 358
    :cond_0
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 360
    .local v11, "vertices":[F
    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v12, :cond_4

    .line 361
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 365
    :cond_1
    :goto_0
    move/from16 v0, p6

    int-to-float v12, v0

    iget v13, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v7, v12, v13

    .line 366
    .local v7, "u":F
    add-int v12, p7, p9

    int-to-float v12, v12

    iget v13, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v9, v12, v13

    .line 367
    .local v9, "v":F
    add-int v12, p6, p8

    int-to-float v12, v12

    iget v13, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v8, v12, v13

    .line 368
    .local v8, "u2":F
    move/from16 v0, p7

    int-to-float v12, v0

    iget v13, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v10, v12, v13

    .line 369
    .local v10, "v2":F
    add-float v2, p2, p4

    .line 370
    .local v2, "fx2":F
    add-float v3, p3, p5

    .line 372
    .local v3, "fy2":F
    if-eqz p10, :cond_2

    .line 373
    move v6, v7

    .line 374
    .local v6, "tmp":F
    move v7, v8

    .line 375
    move v8, v6

    .line 378
    .end local v6    # "tmp":F
    :cond_2
    if-eqz p11, :cond_3

    .line 379
    move v6, v9

    .line 380
    .restart local v6    # "tmp":F
    move v9, v10

    .line 381
    move v10, v6

    .line 384
    .end local v6    # "tmp":F
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 385
    .local v1, "color":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 386
    .local v4, "idx":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .local v5, "idx":I
    aput p2, v11, v4

    .line 387
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v11, v5

    .line 388
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v11, v4

    .line 389
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v7, v11, v5

    .line 390
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v9, v11, v4

    .line 392
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p2, v11, v5

    .line 393
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v3, v11, v4

    .line 394
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v11, v5

    .line 395
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v7, v11, v4

    .line 396
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v10, v11, v5

    .line 398
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v11, v4

    .line 399
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v3, v11, v5

    .line 400
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v11, v4

    .line 401
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v8, v11, v5

    .line 402
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v10, v11, v4

    .line 404
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v11, v5

    .line 405
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput p3, v11, v4

    .line 406
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v11, v5

    .line 407
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v8, v11, v4

    .line 408
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v9, v11, v5

    .line 409
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 410
    return-void

    .line 362
    .end local v1    # "color":F
    .end local v2    # "fx2":F
    .end local v3    # "fy2":F
    .end local v4    # "idx":I
    .end local v7    # "u":F
    .end local v8    # "u2":F
    .end local v9    # "v":F
    .end local v10    # "v2":F
    :cond_4
    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v13, v11

    if-ne v12, v13, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 13
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .prologue
    .line 414
    iget-boolean v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "SpriteBatch.begin must be called before draw."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 416
    :cond_0
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 418
    .local v10, "vertices":[F
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v11, :cond_2

    .line 419
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 423
    :cond_1
    :goto_0
    move/from16 v0, p4

    int-to-float v11, v0

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v6, v11, v12

    .line 424
    .local v6, "u":F
    add-int v11, p5, p7

    int-to-float v11, v11

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v8, v11, v12

    .line 425
    .local v8, "v":F
    add-int v11, p4, p6

    int-to-float v11, v11

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v7, v11, v12

    .line 426
    .local v7, "u2":F
    move/from16 v0, p5

    int-to-float v11, v0

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v9, v11, v12

    .line 427
    .local v9, "v2":F
    move/from16 v0, p6

    int-to-float v11, v0

    add-float v2, p2, v11

    .line 428
    .local v2, "fx2":F
    move/from16 v0, p7

    int-to-float v11, v0

    add-float v3, p3, v11

    .line 430
    .local v3, "fy2":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 431
    .local v1, "color":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 432
    .local v4, "idx":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .local v5, "idx":I
    aput p2, v10, v4

    .line 433
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v10, v5

    .line 434
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v10, v4

    .line 435
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v6, v10, v5

    .line 436
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v8, v10, v4

    .line 438
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput p2, v10, v5

    .line 439
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v3, v10, v4

    .line 440
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v10, v5

    .line 441
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v6, v10, v4

    .line 442
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v9, v10, v5

    .line 444
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v2, v10, v4

    .line 445
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v3, v10, v5

    .line 446
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v1, v10, v4

    .line 447
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v7, v10, v5

    .line 448
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v9, v10, v4

    .line 450
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v10, v5

    .line 451
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput p3, v10, v4

    .line 452
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v10, v5

    .line 453
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    aput v7, v10, v4

    .line 454
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v8, v10, v5

    .line 455
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 456
    return-void

    .line 420
    .end local v1    # "color":F
    .end local v2    # "fx2":F
    .end local v3    # "fy2":F
    .end local v4    # "idx":I
    .end local v6    # "u":F
    .end local v7    # "u2":F
    .end local v8    # "v":F
    .end local v9    # "v2":F
    :cond_2
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v12, v10

    if-ne v11, v12, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 5
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 553
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SpriteBatch.begin must be called before draw."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v2, v3

    .line 556
    .local v2, "verticesLength":I
    move v1, v2

    .line 557
    .local v1, "remainingVertices":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v3, :cond_2

    .line 558
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 566
    :cond_1
    :goto_0
    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 568
    .local v0, "copyCount":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-static {p2, p3, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 570
    sub-int/2addr p4, v0

    .line 571
    :goto_1
    if-lez p4, :cond_3

    .line 572
    add-int/2addr p3, v0

    .line 573
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 574
    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 575
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 577
    sub-int/2addr p4, v0

    goto :goto_1

    .line 560
    .end local v0    # "copyCount":I
    :cond_2
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    sub-int/2addr v1, v3

    .line 561
    if-nez v1, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 563
    move v1, v2

    goto :goto_0

    .line 579
    .restart local v0    # "copyCount":I
    :cond_3
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 6
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 583
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

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 584
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 13
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 588
    iget-boolean v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "SpriteBatch.begin must be called before draw."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 590
    :cond_0
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 592
    .local v10, "vertices":[F
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 593
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v11, :cond_2

    .line 594
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 598
    :cond_1
    :goto_0
    add-float v1, p2, p4

    .line 599
    .local v1, "fx2":F
    add-float v2, p3, p5

    .line 600
    .local v2, "fy2":F
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 601
    .local v6, "u":F
    iget v8, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 602
    .local v8, "v":F
    iget v7, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 603
    .local v7, "u2":F
    iget v9, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 605
    .local v9, "v2":F
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 606
    .local v0, "color":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 607
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aput p2, v10, v3

    .line 608
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p3, v10, v4

    .line 609
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v10, v3

    .line 610
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v6, v10, v4

    .line 611
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v8, v10, v3

    .line 613
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput p2, v10, v4

    .line 614
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v10, v3

    .line 615
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v10, v4

    .line 616
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v6, v10, v3

    .line 617
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v9, v10, v4

    .line 619
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v1, v10, v3

    .line 620
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v10, v4

    .line 621
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v0, v10, v3

    .line 622
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v7, v10, v4

    .line 623
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v9, v10, v3

    .line 625
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v1, v10, v4

    .line 626
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput p3, v10, v3

    .line 627
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v0, v10, v4

    .line 628
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v7, v10, v3

    .line 629
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v8, v10, v4

    .line 630
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 631
    return-void

    .line 595
    .end local v0    # "color":F
    .end local v1    # "fx2":F
    .end local v2    # "fy2":F
    .end local v3    # "idx":I
    .end local v6    # "u":F
    .end local v7    # "u2":F
    .end local v8    # "v":F
    .end local v9    # "v2":F
    :cond_2
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v12, v10

    if-ne v11, v12, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
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
    .line 636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    new-instance v35, Ljava/lang/IllegalStateException;

    const-string v36, "SpriteBatch.begin must be called before draw."

    invoke-direct/range {v35 .. v36}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 638
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v24, v0

    .line 640
    .local v24, "vertices":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v19, v0

    .line 641
    .local v19, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_4

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 647
    :cond_1
    :goto_0
    add-float v25, p2, p4

    .line 648
    .local v25, "worldOriginX":F
    add-float v26, p3, p5

    .line 649
    .local v26, "worldOriginY":F
    move/from16 v0, p4

    neg-float v4, v0

    .line 650
    .local v4, "fx":F
    move/from16 v0, p5

    neg-float v6, v0

    .line 651
    .local v6, "fy":F
    sub-float v5, p6, p4

    .line 652
    .local v5, "fx2":F
    sub-float v7, p7, p5

    .line 655
    .local v7, "fy2":F
    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p8, v35

    if-nez v35, :cond_2

    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p9, v35

    if-eqz v35, :cond_3

    .line 656
    :cond_2
    mul-float v4, v4, p8

    .line 657
    mul-float v6, v6, p9

    .line 658
    mul-float v5, v5, p8

    .line 659
    mul-float v7, v7, p9

    .line 663
    :cond_3
    move v10, v4

    .line 664
    .local v10, "p1x":F
    move v11, v6

    .line 665
    .local v11, "p1y":F
    move v12, v4

    .line 666
    .local v12, "p2x":F
    move v13, v7

    .line 667
    .local v13, "p2y":F
    move v14, v5

    .line 668
    .local v14, "p3x":F
    move v15, v7

    .line 669
    .local v15, "p3y":F
    move/from16 v16, v5

    .line 670
    .local v16, "p4x":F
    move/from16 v17, v6

    .line 682
    .local v17, "p4y":F
    const/16 v35, 0x0

    cmpl-float v35, p10, v35

    if-eqz v35, :cond_5

    .line 683
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .line 684
    .local v3, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v18

    .line 686
    .local v18, "sin":F
    mul-float v35, v3, v10

    mul-float v36, v18, v11

    sub-float v27, v35, v36

    .line 687
    .local v27, "x1":F
    mul-float v35, v18, v10

    mul-float v36, v3, v11

    add-float v31, v35, v36

    .line 689
    .local v31, "y1":F
    mul-float v35, v3, v12

    mul-float v36, v18, v13

    sub-float v28, v35, v36

    .line 690
    .local v28, "x2":F
    mul-float v35, v18, v12

    mul-float v36, v3, v13

    add-float v32, v35, v36

    .line 692
    .local v32, "y2":F
    mul-float v35, v3, v14

    mul-float v36, v18, v15

    sub-float v29, v35, v36

    .line 693
    .local v29, "x3":F
    mul-float v35, v18, v14

    mul-float v36, v3, v15

    add-float v33, v35, v36

    .line 695
    .local v33, "y3":F
    sub-float v35, v29, v28

    add-float v30, v27, v35

    .line 696
    .local v30, "x4":F
    sub-float v35, v32, v31

    sub-float v34, v33, v35

    .line 711
    .end local v3    # "cos":F
    .end local v18    # "sin":F
    .local v34, "y4":F
    :goto_1
    add-float v27, v27, v25

    .line 712
    add-float v31, v31, v26

    .line 713
    add-float v28, v28, v25

    .line 714
    add-float v32, v32, v26

    .line 715
    add-float v29, v29, v25

    .line 716
    add-float v33, v33, v26

    .line 717
    add-float v30, v30, v25

    .line 718
    add-float v34, v34, v26

    .line 720
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v20, v0

    .line 721
    .local v20, "u":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v22, v0

    .line 722
    .local v22, "v":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v21, v0

    .line 723
    .local v21, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v23, v0

    .line 725
    .local v23, "v2":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 726
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 727
    .local v8, "idx":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    aput v27, v24, v8

    .line 728
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v31, v24, v9

    .line 729
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v24, v8

    .line 730
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v20, v24, v9

    .line 731
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v22, v24, v8

    .line 733
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v28, v24, v9

    .line 734
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v32, v24, v8

    .line 735
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v24, v9

    .line 736
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v20, v24, v8

    .line 737
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v23, v24, v9

    .line 739
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v29, v24, v8

    .line 740
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v33, v24, v9

    .line 741
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v24, v8

    .line 742
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v21, v24, v9

    .line 743
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v23, v24, v8

    .line 745
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v30, v24, v9

    .line 746
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v34, v24, v8

    .line 747
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v24, v9

    .line 748
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v21, v24, v8

    .line 749
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v22, v24, v9

    .line 750
    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 751
    return-void

    .line 643
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
    .end local v20    # "u":F
    .end local v21    # "u2":F
    .end local v22    # "v":F
    .end local v23    # "v2":F
    .end local v25    # "worldOriginX":F
    .end local v26    # "worldOriginY":F
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "x3":F
    .end local v30    # "x4":F
    .end local v31    # "y1":F
    .end local v32    # "y2":F
    .end local v33    # "y3":F
    .end local v34    # "y4":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v35, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0

    .line 698
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
    .restart local v25    # "worldOriginX":F
    .restart local v26    # "worldOriginY":F
    :cond_5
    move/from16 v27, v10

    .line 699
    .restart local v27    # "x1":F
    move/from16 v31, v11

    .line 701
    .restart local v31    # "y1":F
    move/from16 v28, v12

    .line 702
    .restart local v28    # "x2":F
    move/from16 v32, v13

    .line 704
    .restart local v32    # "y2":F
    move/from16 v29, v14

    .line 705
    .restart local v29    # "x3":F
    move/from16 v33, v15

    .line 707
    .restart local v33    # "y3":F
    move/from16 v30, v16

    .line 708
    .restart local v30    # "x4":F
    move/from16 v34, v17

    .restart local v34    # "y4":F
    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
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
    .param p11, "clockwise"    # Z

    .prologue
    .line 756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    move/from16 v39, v0

    if-nez v39, :cond_0

    new-instance v39, Ljava/lang/IllegalStateException;

    const-string v40, "SpriteBatch.begin must be called before draw."

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 758
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    .line 760
    .local v28, "vertices":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v19, v0

    .line 761
    .local v19, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v39, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_4

    .line 762
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 767
    :cond_1
    :goto_0
    add-float v29, p2, p4

    .line 768
    .local v29, "worldOriginX":F
    add-float v30, p3, p5

    .line 769
    .local v30, "worldOriginY":F
    move/from16 v0, p4

    neg-float v4, v0

    .line 770
    .local v4, "fx":F
    move/from16 v0, p5

    neg-float v6, v0

    .line 771
    .local v6, "fy":F
    sub-float v5, p6, p4

    .line 772
    .local v5, "fx2":F
    sub-float v7, p7, p5

    .line 775
    .local v7, "fy2":F
    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v39, p8, v39

    if-nez v39, :cond_2

    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v39, p9, v39

    if-eqz v39, :cond_3

    .line 776
    :cond_2
    mul-float v4, v4, p8

    .line 777
    mul-float v6, v6, p9

    .line 778
    mul-float v5, v5, p8

    .line 779
    mul-float v7, v7, p9

    .line 783
    :cond_3
    move v10, v4

    .line 784
    .local v10, "p1x":F
    move v11, v6

    .line 785
    .local v11, "p1y":F
    move v12, v4

    .line 786
    .local v12, "p2x":F
    move v13, v7

    .line 787
    .local v13, "p2y":F
    move v14, v5

    .line 788
    .local v14, "p3x":F
    move v15, v7

    .line 789
    .local v15, "p3y":F
    move/from16 v16, v5

    .line 790
    .local v16, "p4x":F
    move/from16 v17, v6

    .line 802
    .local v17, "p4y":F
    const/16 v39, 0x0

    cmpl-float v39, p10, v39

    if-eqz v39, :cond_5

    .line 803
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .line 804
    .local v3, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v18

    .line 806
    .local v18, "sin":F
    mul-float v39, v3, v10

    mul-float v40, v18, v11

    sub-float v31, v39, v40

    .line 807
    .local v31, "x1":F
    mul-float v39, v18, v10

    mul-float v40, v3, v11

    add-float v35, v39, v40

    .line 809
    .local v35, "y1":F
    mul-float v39, v3, v12

    mul-float v40, v18, v13

    sub-float v32, v39, v40

    .line 810
    .local v32, "x2":F
    mul-float v39, v18, v12

    mul-float v40, v3, v13

    add-float v36, v39, v40

    .line 812
    .local v36, "y2":F
    mul-float v39, v3, v14

    mul-float v40, v18, v15

    sub-float v33, v39, v40

    .line 813
    .local v33, "x3":F
    mul-float v39, v18, v14

    mul-float v40, v3, v15

    add-float v37, v39, v40

    .line 815
    .local v37, "y3":F
    sub-float v39, v33, v32

    add-float v34, v31, v39

    .line 816
    .local v34, "x4":F
    sub-float v39, v36, v35

    sub-float v38, v37, v39

    .line 831
    .end local v3    # "cos":F
    .end local v18    # "sin":F
    .local v38, "y4":F
    :goto_1
    add-float v31, v31, v29

    .line 832
    add-float v35, v35, v30

    .line 833
    add-float v32, v32, v29

    .line 834
    add-float v36, v36, v30

    .line 835
    add-float v33, v33, v29

    .line 836
    add-float v37, v37, v30

    .line 837
    add-float v34, v34, v29

    .line 838
    add-float v38, v38, v30

    .line 841
    if-eqz p11, :cond_6

    .line 842
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v20, v0

    .line 843
    .local v20, "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v24, v0

    .line 844
    .local v24, "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v21, v0

    .line 845
    .local v21, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v25, v0

    .line 846
    .local v25, "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v22, v0

    .line 847
    .local v22, "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v26, v0

    .line 848
    .local v26, "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v23, v0

    .line 849
    .local v23, "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v27, v0

    .line 861
    .local v27, "v4":F
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 862
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 863
    .local v8, "idx":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    aput v31, v28, v8

    .line 864
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v35, v28, v9

    .line 865
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v28, v8

    .line 866
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v20, v28, v9

    .line 867
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v24, v28, v8

    .line 869
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v32, v28, v9

    .line 870
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v36, v28, v8

    .line 871
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v28, v9

    .line 872
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v21, v28, v8

    .line 873
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v25, v28, v9

    .line 875
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v33, v28, v8

    .line 876
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v37, v28, v9

    .line 877
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v2, v28, v8

    .line 878
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v22, v28, v9

    .line 879
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v26, v28, v8

    .line 881
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v34, v28, v9

    .line 882
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v38, v28, v8

    .line 883
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v2, v28, v9

    .line 884
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    aput v23, v28, v8

    .line 885
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    aput v27, v28, v9

    .line 886
    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 887
    return-void

    .line 763
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
    .end local v20    # "u1":F
    .end local v21    # "u2":F
    .end local v22    # "u3":F
    .end local v23    # "u4":F
    .end local v24    # "v1":F
    .end local v25    # "v2":F
    .end local v26    # "v3":F
    .end local v27    # "v4":F
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

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v39, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0

    .line 818
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
    .restart local v29    # "worldOriginX":F
    .restart local v30    # "worldOriginY":F
    :cond_5
    move/from16 v31, v10

    .line 819
    .restart local v31    # "x1":F
    move/from16 v35, v11

    .line 821
    .restart local v35    # "y1":F
    move/from16 v32, v12

    .line 822
    .restart local v32    # "x2":F
    move/from16 v36, v13

    .line 824
    .restart local v36    # "y2":F
    move/from16 v33, v14

    .line 825
    .restart local v33    # "x3":F
    move/from16 v37, v15

    .line 827
    .restart local v37    # "y3":F
    move/from16 v34, v16

    .line 828
    .restart local v34    # "x4":F
    move/from16 v38, v17

    .restart local v38    # "y4":F
    goto/16 :goto_1

    .line 851
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v20, v0

    .line 852
    .restart local v20    # "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v24, v0

    .line 853
    .restart local v24    # "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v21, v0

    .line 854
    .restart local v21    # "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v25, v0

    .line 855
    .restart local v25    # "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v22, v0

    .line 856
    .restart local v22    # "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v26, v0

    .line 857
    .restart local v26    # "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v23, v0

    .line 858
    .restart local v23    # "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v27, v0

    .restart local v27    # "v4":F
    goto/16 :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 21
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 891
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "SpriteBatch.begin must be called before draw."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 893
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 895
    .local v10, "vertices":[F
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 896
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v5, v0, :cond_2

    .line 897
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 903
    :cond_1
    :goto_0
    move-object/from16 v0, p4

    iget v11, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 904
    .local v11, "x1":F
    move-object/from16 v0, p4

    iget v15, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 905
    .local v15, "y1":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v19, v0

    mul-float v19, v19, p3

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v20, v0

    add-float v12, v19, v20

    .line 906
    .local v12, "x2":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v19, v0

    mul-float v19, v19, p3

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v20, v0

    add-float v16, v19, v20

    .line 907
    .local v16, "y2":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v19, v0

    mul-float v19, v19, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v20, v0

    mul-float v20, v20, p3

    add-float v19, v19, v20

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 908
    .local v13, "x3":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v19, v0

    mul-float v19, v19, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v20, v0

    mul-float v20, v20, p3

    add-float v19, v19, v20

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v20, v0

    add-float v17, v19, v20

    .line 909
    .local v17, "y3":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v19, v0

    mul-float v19, v19, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v20, v0

    add-float v14, v19, v20

    .line 910
    .local v14, "x4":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v19, v0

    mul-float v19, v19, p2

    move-object/from16 v0, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v20, v0

    add-float v18, v19, v20

    .line 912
    .local v18, "y4":F
    move-object/from16 v0, p1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 913
    .local v6, "u":F
    move-object/from16 v0, p1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 914
    .local v8, "v":F
    move-object/from16 v0, p1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 915
    .local v7, "u2":F
    move-object/from16 v0, p1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 917
    .local v9, "v2":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 918
    .local v2, "color":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 919
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aput v11, v10, v3

    .line 920
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v15, v10, v4

    .line 921
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v10, v3

    .line 922
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v6, v10, v4

    .line 923
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v8, v10, v3

    .line 925
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v12, v10, v4

    .line 926
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v16, v10, v3

    .line 927
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v10, v4

    .line 928
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v6, v10, v3

    .line 929
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v9, v10, v4

    .line 931
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v13, v10, v3

    .line 932
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v17, v10, v4

    .line 933
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v2, v10, v3

    .line 934
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v7, v10, v4

    .line 935
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v9, v10, v3

    .line 937
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v14, v10, v4

    .line 938
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v18, v10, v3

    .line 939
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v2, v10, v4

    .line 940
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v7, v10, v3

    .line 941
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v8, v10, v4

    .line 942
    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 943
    return-void

    .line 898
    .end local v2    # "color":F
    .end local v3    # "idx":I
    .end local v6    # "u":F
    .end local v7    # "u2":F
    .end local v8    # "v":F
    .end local v9    # "v2":F
    .end local v11    # "x1":F
    .end local v12    # "x2":F
    .end local v13    # "x3":F
    .end local v14    # "x4":F
    .end local v15    # "y1":F
    .end local v16    # "y2":F
    .end local v17    # "y3":F
    .end local v18    # "y4":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v19, v0

    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method public enableBlending()V
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    goto :goto_0
.end method

.method public end()V
    .locals 3

    .prologue
    .line 175
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before end."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 177
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 180
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 181
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0
.end method

.method public flush()V
    .locals 7

    .prologue
    const/16 v5, 0xbe2

    const/4 v6, 0x0

    .line 947
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-nez v3, :cond_0

    .line 971
    :goto_0
    return-void

    .line 949
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 950
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 951
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    div-int/lit8 v2, v3, 0x14

    .line 952
    .local v2, "spritesInBatch":I
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    if-le v2, v3, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 953
    :cond_1
    mul-int/lit8 v0, v2, 0x6

    .line 955
    .local v0, "count":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 956
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 957
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-virtual {v1, v3, v6, v4}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 958
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 959
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 961
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-eqz v3, :cond_3

    .line 962
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 968
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_2
    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4, v6, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 970
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    goto :goto_0

    .line 964
    :cond_3
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 965
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    goto :goto_1

    .line 968
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_2
.end method

.method public getBlendDstFunc()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 208
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    .line 209
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 210
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 211
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 212
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 213
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 214
    return-object v0
.end method

.method public getPackedColor()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

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
    .line 1078
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 1
    .param p1, "srcFunc"    # I
    .param p2, "dstFunc"    # I

    .prologue
    .line 989
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_0

    .line 993
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 991
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 992
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    goto :goto_0
.end method

.method public setColor(F)V
    .locals 0
    .param p1, "color"    # F

    .prologue
    .line 203
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 204
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

    .line 197
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

    .line 198
    .local v0, "intBits":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 199
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 193
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1025
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1026
    :cond_1
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1057
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 1062
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1063
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 1068
    :goto_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1070
    :cond_1
    return-void

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    .line 1067
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_1
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1032
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1033
    :cond_1
    return-void
.end method

.method protected switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1047
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1048
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1049
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 1050
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 1051
    return-void
.end method
