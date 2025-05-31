.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
.source "ParticleShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;
    }
.end annotation


# static fields
.field static final TMP_VECTOR3:Lcom/badlogic/gdx/math/Vector3;

.field private static defaultFragmentShader:Ljava/lang/String;

.field private static defaultVertexShader:Ljava/lang/String;

.field protected static implementedFlags:J

.field private static final optionalAttributes:J


# instance fields
.field protected final config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

.field currentMaterial:Lcom/badlogic/gdx/graphics/g3d/Material;

.field private materialMask:J

.field private renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

.field private vertexMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultVertexShader:Ljava/lang/String;

    .line 93
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultFragmentShader:Ljava/lang/String;

    .line 100
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->implementedFlags:J

    .line 102
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->TMP_VECTOR3:Lcom/badlogic/gdx/math/Vector3;

    .line 157
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->optionalAttributes:J

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 160
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V
    .locals 1
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    .prologue
    .line 164
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 4
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;
    .param p3, "shaderProgram"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    .line 179
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 180
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 181
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Material;->getMask()J

    move-result-wide v0

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->optionalAttributes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->materialMask:J

    .line 182
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->vertexMask:J

    .line 184
    iget-boolean v0, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->ignoreUnimplemented:Z

    if-nez v0, :cond_0

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->implementedFlags:J

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->materialMask:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->materialMask:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Some attributes not implemented yet ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->materialMask:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 189
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 190
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 191
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;->screenWidth:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->screenWidth:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 192
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 193
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;->cameraRight:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraRight:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 194
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;->cameraInvDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraInvDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 195
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 198
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Ljava/lang/String;)V
    .locals 6
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "vertexShader"    # Ljava/lang/String;
    .param p5, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 174
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

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 175
    return-void
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)Ljava/lang/String;
    .locals 3
    .param p0, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p1, "config"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    .prologue
    .line 210
    const-string v0, ""

    .line 211
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#version 120\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_0
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    if-ne v1, v2, :cond_0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#define billboard\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v1, v2, :cond_2

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#define screenFacing\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    :goto_1
    return-object v0

    .line 214
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#version 100\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v1, v2, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#define viewPointFacing\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getDefaultFragmentShader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/particles/particles.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultFragmentShader:Ljava/lang/String;

    .line 97
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultVertexShader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultVertexShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/particles/particles.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultVertexShader:Ljava/lang/String;

    .line 90
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->defaultVertexShader:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 0
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p2, "context"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .prologue
    .line 251
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    .line 252
    return-void
.end method

.method protected bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 14
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    const/4 v12, -0x1

    .line 270
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->currentMaterial:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v11, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-ne v10, v11, :cond_0

    .line 299
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    if-ne v10, v12, :cond_2

    const/16 v1, 0x405

    .line 274
    .local v1, "cullFace":I
    :goto_1
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    if-ne v10, v12, :cond_3

    const/16 v2, 0x203

    .line 275
    .local v2, "depthFunc":I
    :goto_2
    const/4 v5, 0x0

    .line 276
    .local v5, "depthRangeNear":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 277
    .local v4, "depthRangeFar":F
    const/4 v3, 0x1

    .line 279
    .local v3, "depthMask":Z
    iget-object v10, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->currentMaterial:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 280
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->currentMaterial:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g3d/Material;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 281
    .local v0, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget-wide v8, v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    .line 282
    .local v8, "t":J
    invoke-static {v8, v9}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->is(J)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 283
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    const/4 v12, 0x1

    move-object v10, v0

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget v13, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    invoke-virtual {v11, v12, v10, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    goto :goto_3

    .line 273
    .end local v1    # "cullFace":I
    .end local v2    # "depthFunc":I
    .end local v3    # "depthMask":Z
    .end local v4    # "depthRangeFar":F
    .end local v5    # "depthRangeNear":F
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "t":J
    :cond_2
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v1, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    goto :goto_1

    .line 274
    .restart local v1    # "cullFace":I
    :cond_3
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v2, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    goto :goto_2

    .line 285
    .restart local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .restart local v2    # "depthFunc":I
    .restart local v3    # "depthMask":Z
    .restart local v4    # "depthRangeFar":F
    .restart local v5    # "depthRangeNear":F
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "t":J
    :cond_4
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    and-long/2addr v10, v8

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    move-object v6, v0

    .line 286
    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    .line 287
    .local v6, "dta":Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;
    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    .line 288
    iget v5, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    .line 289
    iget v4, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    .line 290
    iget-boolean v3, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    .line 291
    goto :goto_3

    .line 292
    .end local v6    # "dta":Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;
    :cond_5
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget-boolean v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->ignoreUnimplemented:Z

    if-nez v10, :cond_1

    .line 293
    new-instance v10, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown material attribute: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 296
    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .end local v8    # "t":J
    :cond_6
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setCullFace(I)V

    .line 297
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v10, v2, v5, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthTest(IFF)V

    .line 298
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthMask(Z)V

    goto/16 :goto_0
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .locals 6
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->materialMask:J

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->getMask()J

    move-result-wide v2

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->optionalAttributes:J

    or-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->vertexMask:J

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Shader;)I
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/Shader;

    .prologue
    const/4 v0, 0x0

    .line 235
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    if-ne p1, p0, :cond_0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 304
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->dispose()V

    .line 305
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->currentMaterial:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 265
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->end()V

    .line 266
    return-void
.end method

.method public equals(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;)Z
    .locals 1
    .param p1, "obj"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    .prologue
    .line 246
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 242
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->equals(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCullFace()I
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x405

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    goto :goto_0
.end method

.method public getDefaultDepthFunc()I
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x203

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 204
    .local v0, "program":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 205
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->init(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 206
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 207
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 4
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 256
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->has(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    const/4 v1, 0x0

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 259
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 260
    return-void
.end method

.method public setDefaultCullFace(I)V
    .locals 1
    .param p1, "cullFace"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    .line 313
    return-void
.end method

.method public setDefaultDepthFunc(I)V
    .locals 1
    .param p1, "depthFunc"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->config:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    .line 321
    return-void
.end method
