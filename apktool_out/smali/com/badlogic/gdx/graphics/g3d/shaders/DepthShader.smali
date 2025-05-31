.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.source "DepthShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    }
.end annotation


# static fields
.field private static defaultFragmentShader:Ljava/lang/String;

.field private static defaultVertexShader:Ljava/lang/String;

.field private static final tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;


# instance fields
.field private final alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

.field public final numBones:I

.field public final weights:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V
    .locals 1
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    .prologue
    .line 78
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 9
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    .param p3, "shaderProgram"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 93
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v1

    .line 94
    .local v1, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->numBones:I

    .line 95
    const/4 v4, 0x0

    .line 96
    .local v4, "w":I
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 97
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 98
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 99
    .local v0, "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v6, 0x40

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    .line 97
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "w":I
    :cond_1
    iget v5, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBones:I

    goto :goto_0

    .line 101
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    .restart local v4    # "w":I
    :cond_2
    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->weights:I

    .line 102
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    iget v8, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultAlphaTest:F

    invoke-direct {v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;)V
    .locals 6
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->vertexShader:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->fragmentShader:Ljava/lang/String;

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "vertexShader"    # Ljava/lang/String;
    .param p5, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 89
    return-void
.end method

.method private static final combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .locals 2
    .param p0, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 159
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 162
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-object v0
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)Ljava/lang/String;
    .locals 3
    .param p0, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p1, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "prefix":Ljava/lang/String;
    iget-boolean v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->depthBufferOnly:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#define PackedDepthFlag\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method public static final getDefaultFragmentShader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/depth.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    .line 60
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDefaultVertexShader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/depth.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    .line 52
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 0
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p2, "context"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    .line 110
    return-void
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .locals 12
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 120
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v1

    .line 121
    .local v1, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->attributesMask:J

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v6, v8

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 123
    const/4 v6, 0x0

    .line 136
    :goto_0
    return v6

    .line 124
    :cond_0
    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v7

    iget-wide v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->attributesMask:J

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    and-long/2addr v8, v10

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    cmp-long v6, v8, v10

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    if-eq v7, v6, :cond_2

    .line 125
    const/4 v6, 0x0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 127
    :cond_2
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v6

    const-wide/16 v8, 0x40

    and-long/2addr v6, v8

    const-wide/16 v8, 0x40

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const/4 v4, 0x1

    .line 128
    .local v4, "skinned":Z
    :goto_2
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->numBones:I

    if-lez v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    if-eq v4, v6, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    .line 127
    .end local v4    # "skinned":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 128
    .restart local v4    # "skinned":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 129
    :cond_5
    if-nez v4, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    .line 130
    :cond_6
    const/4 v5, 0x0

    .line 131
    .local v5, "w":I
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 132
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v3, :cond_8

    .line 133
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 134
    .local v0, "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v7, 0x40

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 132
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 136
    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_8
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->weights:I

    if-ne v5, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public end()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->end()V

    .line 116
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 6
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    .line 141
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .line 143
    .local v0, "blending":Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    .line 144
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    .line 145
    .local v1, "hasAlphaTest":Z
    if-nez v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 147
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_1

    .line 148
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 149
    :cond_1
    if-nez v1, :cond_2

    .line 150
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    .line 151
    :cond_2
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 154
    .end local v0    # "blending":Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .end local v1    # "hasAlphaTest":Z
    :goto_0
    return-void

    .line 153
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    goto :goto_0
.end method
