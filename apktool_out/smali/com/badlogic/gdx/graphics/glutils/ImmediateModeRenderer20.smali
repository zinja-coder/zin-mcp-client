.class public Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;
.super Ljava/lang/Object;
.source "ImmediateModeRenderer20.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;


# instance fields
.field private final colorOffset:I

.field private final maxVertices:I

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final normalOffset:I

.field private numSetTexCoords:I

.field private final numTexCoords:I

.field private numVertices:I

.field private ownsShader:Z

.field private primitiveType:I

.field private final projModelView:Lcom/badlogic/gdx/math/Matrix4;

.field private shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final shaderUniformNames:[Ljava/lang/String;

.field private final texCoordOffset:I

.field private vertexIdx:I

.field private final vertexSize:I

.field private final vertices:[F


# direct methods
.method public constructor <init>(IZZI)V
    .locals 6
    .param p1, "maxVertices"    # I
    .param p2, "hasNormals"    # Z
    .param p3, "hasColors"    # Z
    .param p4, "numTexCoords"    # I

    .prologue
    .line 56
    invoke-static {p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    .line 58
    return-void
.end method

.method public constructor <init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 7
    .param p1, "maxVertices"    # I
    .param p2, "hasNormals"    # Z
    .param p3, "hasColors"    # Z
    .param p4, "numTexCoords"    # I
    .param p5, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    .line 61
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->maxVertices:I

    .line 62
    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numTexCoords:I

    .line 63
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 65
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->buildVertexAttributes(ZZI)[Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 66
    .local v0, "attribs":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    new-instance v2, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-direct {v2, v3, p1, v3, v0}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 68
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v2, v2, 0x4

    mul-int/2addr v2, p1

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexSize:I

    .line 70
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v2, v2, 0x4

    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->normalOffset:I

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v2, v2, 0x4

    :goto_1
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    .line 73
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v3, v2, 0x4

    :cond_0
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->texCoordOffset:I

    .line 76
    new-array v2, p4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shaderUniformNames:[Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p4, :cond_3

    .line 78
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shaderUniformNames:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u_sampler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_1
    move v2, v3

    .line 70
    goto :goto_0

    :cond_2
    move v2, v3

    .line 71
    goto :goto_1

    .line 80
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 6
    .param p1, "hasNormals"    # Z
    .param p2, "hasColors"    # Z
    .param p3, "numTexCoords"    # I

    .prologue
    .line 51
    const/16 v1, 0x1388

    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    .line 53
    return-void
.end method

.method private buildVertexAttributes(ZZI)[Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 8
    .param p1, "hasNormals"    # Z
    .param p2, "hasColor"    # Z
    .param p3, "numTexCoords"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 83
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 84
    .local v1, "attribs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x1

    const-string v5, "a_position"

    invoke-direct {v3, v4, v6, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 85
    if-eqz p1, :cond_0

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v4, 0x8

    const-string v5, "a_normal"

    invoke-direct {v3, v4, v6, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_color"

    invoke-direct {v3, v7, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 87
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 88
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v4, 0x10

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a_texCoord"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v0, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 91
    .local v0, "array":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v2, 0x0

    :goto_1
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_3

    .line 92
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v3, v0, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_3
    return-object v0
.end method

.method public static createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 3
    .param p0, "hasNormals"    # Z
    .param p1, "hasColors"    # Z
    .param p2, "numTexCoords"    # I

    .prologue
    .line 231
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createVertexShader(ZZI)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "vertexShader":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createFragmentShader(ZZI)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "fragmentShader":Ljava/lang/String;
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v1, "program":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    return-object v1
.end method

.method private static createFragmentShader(ZZI)Ljava/lang/String;
    .locals 4
    .param p0, "hasNormals"    # Z
    .param p1, "hasColors"    # Z
    .param p2, "numTexCoords"    # I

    .prologue
    .line 205
    const-string v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\n"

    .line 207
    .local v1, "shader":Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "varying vec4 v_col;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "varying vec2 v_tex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uniform sampler2D u_sampler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "void main() {\n   gl_FragColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v2, "v_col"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    if-lez p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_5

    .line 218
    add-int/lit8 v2, p2, -0x1

    if-ne v0, v2, :cond_4

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " texture2D(u_sampler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  v_tex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 213
    :cond_3
    const-string v2, "vec4(1, 1, 1, 1)"

    goto :goto_1

    .line 221
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " texture2D(u_sampler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  v_tex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") *"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 225
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    return-object v1
.end method

.method private static createVertexShader(ZZI)Ljava/lang/String;
    .locals 4
    .param p0, "hasNormals"    # Z
    .param p1, "hasColors"    # Z
    .param p2, "numTexCoords"    # I

    .prologue
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute vec4 a_position;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_0

    const-string v2, "attribute vec3 a_normal;\n"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v2, "attribute vec4 a_color;\n"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "shader":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p2, :cond_2

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "attribute vec2 a_texCoord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 178
    .end local v0    # "i":I
    .end local v1    # "shader":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 186
    .restart local v0    # "i":I
    .restart local v1    # "shader":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uniform mat4 u_projModelView;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v2, "varying vec4 v_col;\n"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_4

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "varying vec2 v_tex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 187
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 193
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "void main() {\n   gl_Position = u_projModelView * a_position;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_5

    const-string v2, "   v_col = a_color;\n"

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_6

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   v_tex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "a_texCoord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 193
    :cond_5
    const-string v2, ""

    goto :goto_5

    .line 199
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   gl_PointSize = 1.0;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    return-object v1
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/math/Matrix4;I)V
    .locals 1
    .param p1, "projModelView"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "primitiveType"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 104
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->primitiveType:I

    .line 105
    return-void
.end method

.method public color(F)V
    .locals 3
    .param p1, "colorBits"    # F

    .prologue
    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    .line 117
    return-void
.end method

.method public color(FFFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v2

    aput v2, v0, v1

    .line 113
    return-void
.end method

.method public color(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    aput v2, v0, v1

    .line 109
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 175
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->flush()V

    .line 161
    return-void
.end method

.method public flush()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_projModelView"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numTexCoords:I

    if-ge v0, v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shaderUniformNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->primitiveType:I

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 154
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 155
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 156
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    goto :goto_0
.end method

.method public getMaxVertices()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->maxVertices:I

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    return v0
.end method

.method public normal(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 127
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->normalOffset:I

    add-int v0, v1, v2

    .line 128
    .local v0, "idx":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    aput p1, v1, v0

    .line 129
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 130
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v2, v0, 0x2

    aput p3, v1, v2

    .line 131
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    .line 100
    return-void
.end method

.method public texCoord(FF)V
    .locals 3
    .param p1, "u"    # F
    .param p2, "v"    # F

    .prologue
    .line 120
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->texCoordOffset:I

    add-int v0, v1, v2

    .line 121
    .local v0, "idx":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    add-int/2addr v2, v0

    aput p1, v1, v2

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aput p2, v1, v2

    .line 123
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 124
    return-void
.end method

.method public vertex(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 134
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 135
    .local v0, "idx":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    aput p1, v1, v0

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v2, v0, 0x2

    aput p3, v1, v2

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 140
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 141
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    .line 142
    return-void
.end method
