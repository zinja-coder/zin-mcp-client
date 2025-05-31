.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    }
.end annotation


# static fields
.field public static defaultCullFace:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static defaultDepthFunc:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static defaultFragmentShader:Ljava/lang/String;

.field private static defaultVertexShader:Ljava/lang/String;

.field protected static implementedFlags:J

.field private static final optionalAttributes:J

.field private static final tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;


# instance fields
.field protected final ambientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

.field protected final attributesMask:J

.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field protected final config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

.field protected dirLightsColorOffset:I

.field protected dirLightsDirectionOffset:I

.field protected dirLightsLoc:I

.field protected dirLightsSize:I

.field protected final directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

.field protected final environmentCubemap:Z

.field protected final lighting:Z

.field private lightsSet:Z

.field private normalMatrix:Lcom/badlogic/gdx/math/Matrix3;

.field protected final pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

.field protected pointLightsColorOffset:I

.field protected pointLightsIntensityOffset:I

.field protected pointLightsLoc:I

.field protected pointLightsPositionOffset:I

.field protected pointLightsSize:I

.field private renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

.field protected final shadowMap:Z

.field private time:F

.field private final tmpV1:Lcom/badlogic/gdx/math/Vector3;

.field public final u_alphaTest:I

.field protected final u_ambientCubemap:I

.field public final u_ambientTexture:I

.field public final u_ambientUVTransform:I

.field public final u_bones:I

.field public final u_cameraDirection:I

.field public final u_cameraPosition:I

.field public final u_cameraUp:I

.field public final u_diffuseColor:I

.field public final u_diffuseTexture:I

.field public final u_diffuseUVTransform:I

.field protected final u_dirLights0color:I

.field protected final u_dirLights0direction:I

.field protected final u_dirLights1color:I

.field public final u_emissiveColor:I

.field public final u_emissiveTexture:I

.field public final u_emissiveUVTransform:I

.field protected final u_environmentCubemap:I

.field protected final u_fogColor:I

.field public final u_normalMatrix:I

.field public final u_normalTexture:I

.field public final u_normalUVTransform:I

.field public final u_opacity:I

.field protected final u_pointLights0color:I

.field protected final u_pointLights0intensity:I

.field protected final u_pointLights0position:I

.field protected final u_pointLights1color:I

.field public final u_projTrans:I

.field public final u_projViewTrans:I

.field public final u_projViewWorldTrans:I

.field public final u_reflectionColor:I

.field public final u_reflectionTexture:I

.field public final u_reflectionUVTransform:I

.field protected final u_shadowMapProjViewTrans:I

.field protected final u_shadowPCFOffset:I

.field protected final u_shadowTexture:I

.field public final u_shininess:I

.field public final u_specularColor:I

.field public final u_specularTexture:I

.field public final u_specularUVTransform:I

.field public final u_time:I

.field public final u_viewTrans:I

.field public final u_viewWorldTrans:I

.field public final u_worldTrans:I

.field private vertexMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 371
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    .line 379
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    .line 387
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->implementedFlags:J

    .line 391
    const/16 v0, 0x405

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    .line 393
    const/16 v0, 0x203

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    .line 469
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    .line 581
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 472
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    .line 473
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V
    .locals 1
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .prologue
    .line 476
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 8
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    .param p3, "shaderProgram"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 489
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;-><init>()V

    .line 432
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_dirLights[0].color"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    .line 433
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_dirLights[0].direction"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0direction:I

    .line 434
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_dirLights[1].color"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights1color:I

    .line 435
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_pointLights[0].color"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    .line 436
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_pointLights[0].position"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0position:I

    .line 437
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_pointLights[0].intensity"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    .line 438
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_pointLights[1].color"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights1color:I

    .line 439
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_fogColor"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_fogColor:I

    .line 440
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_shadowMapProjViewTrans"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowMapProjViewTrans:I

    .line 441
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_shadowTexture"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowTexture:I

    .line 442
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v6, "u_shadowPCFOffset"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowPCFOffset:I

    .line 458
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->ambientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 685
    new-instance v2, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->normalMatrix:Lcom/badlogic/gdx/math/Matrix3;

    .line 747
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    .line 490
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    .line 491
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .line 492
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 493
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    .line 494
    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v2, :cond_2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->environmentCubemap:Z

    .line 496
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->shadowMap:Z

    .line 497
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 498
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    or-long/2addr v2, v6

    iput-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    .line 499
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->vertexMask:J

    .line 501
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v2, :cond_4

    iget v2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    if-lez v2, :cond_4

    iget v2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    :goto_3
    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .line 502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 503
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;-><init>()V

    aput-object v3, v2, v1

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_1
    move v2, v4

    .line 493
    goto :goto_0

    :cond_2
    move v2, v4

    .line 494
    goto :goto_1

    :cond_3
    move v3, v4

    .line 496
    goto :goto_2

    :cond_4
    move v2, v4

    .line 501
    goto :goto_3

    .line 504
    .restart local v1    # "i":I
    :cond_5
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v2, :cond_6

    iget v2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    if-lez v2, :cond_6

    iget v4, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    :cond_6
    new-array v2, v4, [Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .line 505
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 506
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    aput-object v3, v2, v1

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 508
    :cond_7
    iget-boolean v2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-nez v2, :cond_8

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->implementedFlags:J

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    and-long/2addr v2, v6

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 509
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Some attributes not implemented yet ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    :cond_8
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projTrans:I

    .line 513
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewTrans:I

    .line 514
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewTrans:I

    .line 515
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraPosition:I

    .line 516
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraDirection:I

    .line 517
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraUp:I

    .line 518
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v3, "u_time"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    .line 520
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_worldTrans:I

    .line 521
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewWorldTrans:I

    .line 522
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewWorldTrans:I

    .line 523
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalMatrix:I

    .line 524
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v2, :cond_a

    iget v2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez v2, :cond_a

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->bones:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;

    iget v4, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    :goto_6
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_bones:I

    .line 527
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shininess:I

    .line 528
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->opacity:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    .line 529
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseColor:I

    .line 530
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseTexture:I

    .line 531
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseUVTransform:I

    .line 532
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularColor:I

    .line 533
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularTexture:I

    .line 534
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularUVTransform:I

    .line 535
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveColor:I

    .line 536
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveTexture:I

    .line 537
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveUVTransform:I

    .line 538
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionColor:I

    .line 539
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionTexture:I

    .line 540
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionUVTransform:I

    .line 541
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalTexture:I

    .line 542
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalUVTransform:I

    .line 543
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientTexture:I

    .line 544
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientUVTransform:I

    .line 545
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->alphaTest:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    .line 547
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientCube:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;

    iget v4, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    iget v6, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-direct {v3, v4, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    :goto_7
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientCubemap:I

    .line 549
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->environmentCubemap:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v5

    :cond_9
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_environmentCubemap:I

    .line 550
    return-void

    :cond_a
    move v2, v5

    .line 524
    goto/16 :goto_6

    :cond_b
    move v2, v5

    .line 547
    goto :goto_7
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V
    .locals 6
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void

    .line 480
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "vertexShader"    # Ljava/lang/String;
    .param p5, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 486
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

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 487
    return-void
.end method

.method private static final and(JJ)Z
    .locals 2
    .param p0, "mask"    # J
    .param p2, "flag"    # J

    .prologue
    .line 574
    and-long v0, p0, p2

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .locals 2
    .param p0, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 584
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 587
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-object v0
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;
    .locals 14
    .param p0, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p1, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .prologue
    const-wide/16 v12, 0x8

    .line 591
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v1

    .line 592
    .local v1, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    const-string v6, ""

    .line 593
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v2

    .line 594
    .local v2, "attributesMask":J
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v8

    .line 595
    .local v8, "vertexMask":J
    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define positionFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    :cond_0
    const-wide/16 v10, 0x6

    invoke-static {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->or(JJ)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define colorFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 597
    :cond_1
    const-wide/16 v10, 0x100

    invoke-static {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define binormalFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 598
    :cond_2
    const-wide/16 v10, 0x80

    invoke-static {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define tangentFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 599
    :cond_3
    invoke-static {v8, v9, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define normalFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    :cond_4
    invoke-static {v8, v9, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v7

    if-nez v7, :cond_5

    const-wide/16 v10, 0x180

    invoke-static {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 601
    :cond_5
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v7, :cond_9

    .line 602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define lightingFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define ambientCubemapFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define numDirectionalLights "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 605
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define numPointLights "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 606
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define fogFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 609
    :cond_6
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define shadowMapFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 610
    :cond_7
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v7

    if-nez v7, :cond_8

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 611
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define environmentCubemapFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 614
    :cond_9
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v5

    .line 615
    .local v5, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_c

    .line 616
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 617
    .local v0, "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v10, 0x40

    if-ne v7, v10, :cond_b

    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define boneWeight"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "Flag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 615
    :cond_a
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 619
    :cond_b
    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v10, 0x10

    if-ne v7, v10, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define texCoord"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "Flag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 621
    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_c
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define blendedFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 622
    :cond_d
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_e

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define diffuseTextureFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 624
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define diffuseTextureCoord texCoord0\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 626
    :cond_e
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_f

    .line 627
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define specularTextureFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 628
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define specularTextureCoord texCoord0\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 630
    :cond_f
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_10

    .line 631
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define normalTextureFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 632
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define normalTextureCoord texCoord0\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 634
    :cond_10
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_11

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define emissiveTextureFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define emissiveTextureCoord texCoord0\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 638
    :cond_11
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_12

    .line 639
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define reflectionTextureFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define reflectionTextureCoord texCoord0\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 642
    :cond_12
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_13

    .line 643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define ambientTextureFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 644
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define ambientTextureCoord texCoord0\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 646
    :cond_13
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_14

    .line 647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define diffuseColorFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 648
    :cond_14
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_15

    .line 649
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define specularColorFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 650
    :cond_15
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_16

    .line 651
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define emissiveColorFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 652
    :cond_16
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_17

    .line 653
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define reflectionColorFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 654
    :cond_17
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_18

    .line 655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define shininessFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 656
    :cond_18
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long/2addr v10, v2

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_19

    .line 657
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define alphaTestFlag\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 658
    :cond_19
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v7, :cond_1a

    iget v7, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez v7, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "#define numBones "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 659
    :cond_1a
    return-object v6
.end method

.method public static getDefaultFragmentShader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    .line 384
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultVertexShader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 375
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    .line 376
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    return-object v0
.end method

.method private static final or(JJ)Z
    .locals 4
    .param p0, "mask"    # J
    .param p2, "flag"    # J

    .prologue
    .line 578
    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 13
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p2, "context"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    .line 694
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .local v10, "arr$":[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    array-length v12, v10

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v0, v10, v11

    .line 695
    .local v0, "dirLight":Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    const/high16 v5, -0x40800000    # -1.0f

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .line 694
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "dirLight":Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    :cond_0
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .local v10, "arr$":[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    array-length v12, v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_1

    aget-object v2, v10, v11

    .local v2, "pointLight":Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    .line 697
    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .line 696
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 698
    .end local v2    # "pointLight":Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    .line 700
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->time:F

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->time:F

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    .line 701
    :cond_2
    return-void
.end method

.method protected bindLights(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 13
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "attributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 750
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 751
    .local v3, "lights":Lcom/badlogic/gdx/graphics/g3d/Environment;
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    .line 752
    .local v0, "dirs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;>;"
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    .line 754
    .local v4, "points":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;>;"
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    if-ltz v5, :cond_3

    .line 755
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 756
    if-eqz v0, :cond_0

    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v5, :cond_6

    .line 757
    :cond_0
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_2

    .line 755
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v11, v11, v11, v12}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 765
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    mul-int/2addr v6, v1

    add-int v2, v5, v6

    .line 766
    .local v2, "idx":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsColorOffset:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 768
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsDirectionOffset:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(ILcom/badlogic/gdx/math/Vector3;)V

    .line 769
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    if-gtz v5, :cond_1

    .line 773
    .end local v1    # "i":I
    .end local v2    # "idx":I
    :cond_3
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    if-ltz v5, :cond_a

    .line 774
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v5, v5

    if-ge v1, v5, :cond_a

    .line 775
    if-eqz v4, :cond_4

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v5, :cond_d

    .line 776
    :cond_4
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_8

    .line 774
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 760
    :cond_6
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v5, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 763
    :cond_7
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v5, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    goto :goto_1

    .line 777
    :cond_8
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v5, v5, v1

    iput v11, v5, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    .line 783
    :goto_3
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    mul-int/2addr v6, v1

    add-int v2, v5, v6

    .line 784
    .restart local v2    # "idx":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsColorOffset:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 786
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsPositionOffset:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(ILcom/badlogic/gdx/math/Vector3;)V

    .line 787
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    if-ltz v5, :cond_9

    .line 788
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    .line 789
    :cond_9
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    if-gtz v5, :cond_5

    .line 793
    .end local v1    # "i":I
    .end local v2    # "idx":I
    :cond_a
    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {p2, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 794
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_fogColor:I

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {p2, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v6, v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/graphics/Color;)Z

    .line 797
    :cond_b
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v5, :cond_c

    .line 798
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowMapProjViewTrans:I

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getProjViewTrans()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/math/Matrix4;)Z

    .line 799
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowTexture:I

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)Z

    .line 800
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowPCFOffset:I

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object v7

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/GLTexture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float v6, v12, v6

    invoke-virtual {p0, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    .line 803
    :cond_c
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    .line 804
    return-void

    .line 778
    .restart local v1    # "i":I
    :cond_d
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v6, v5, v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 781
    :cond_e
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v6, v5, v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    goto/16 :goto_3
.end method

.method protected bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 14
    .param p1, "attributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    const/4 v11, -0x1

    .line 718
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    if-ne v10, v11, :cond_1

    sget v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    .line 719
    .local v1, "cullFace":I
    :goto_0
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    if-ne v10, v11, :cond_2

    sget v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    .line 720
    .local v2, "depthFunc":I
    :goto_1
    const/4 v5, 0x0

    .line 721
    .local v5, "depthRangeNear":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 722
    .local v4, "depthRangeFar":F
    const/4 v3, 0x1

    .line 724
    .local v3, "depthMask":Z
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 725
    .local v0, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget-wide v8, v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    .line 726
    .local v8, "t":J
    invoke-static {v8, v9}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->is(J)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 727
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    const/4 v12, 0x1

    move-object v10, v0

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v13, v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    move-object v10, v0

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    invoke-virtual {v11, v12, v13, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    .line 728
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    invoke-virtual {p0, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    goto :goto_2

    .line 718
    .end local v1    # "cullFace":I
    .end local v2    # "depthFunc":I
    .end local v3    # "depthMask":Z
    .end local v4    # "depthRangeFar":F
    .end local v5    # "depthRangeNear":F
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "t":J
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v1, v10, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    goto :goto_0

    .line 719
    .restart local v1    # "cullFace":I
    :cond_2
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v2, v10, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    goto :goto_1

    .line 729
    .restart local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .restart local v2    # "depthFunc":I
    .restart local v3    # "depthMask":Z
    .restart local v4    # "depthRangeFar":F
    .restart local v5    # "depthRangeNear":F
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "t":J
    :cond_3
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    and-long/2addr v10, v8

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 730
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    goto :goto_2

    .line 731
    .restart local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    :cond_4
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long/2addr v10, v8

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 732
    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-virtual {p0, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    goto :goto_2

    .line 733
    .restart local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    :cond_5
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    and-long/2addr v10, v8

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    move-object v6, v0

    .line 734
    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    .line 735
    .local v6, "dta":Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;
    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    .line 736
    iget v5, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    .line 737
    iget v4, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    .line 738
    iget-boolean v3, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    .line 739
    goto :goto_2

    .end local v6    # "dta":Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;
    :cond_6
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget-boolean v10, v10, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-nez v10, :cond_0

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

    .line 742
    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .end local v8    # "t":J
    :cond_7
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setCullFace(I)V

    .line 743
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v10, v2, v5, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthTest(IFF)V

    .line 744
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthMask(Z)V

    .line 745
    return-void
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .locals 10
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 664
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    .line 665
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v6

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    or-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->vertexMask:J

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-ne v1, v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Shader;)I
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/Shader;

    .prologue
    const/4 v0, 0x0

    .line 671
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 673
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    if-ne p1, p0, :cond_0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 809
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->dispose()V

    .line 810
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 714
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->end()V

    .line 715
    return-void
.end method

.method public equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z
    .locals 1
    .param p1, "obj"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    .prologue
    .line 682
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
    .line 678
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z

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
    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    goto :goto_0
.end method

.method public getDefaultDepthFunc()I
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 554
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 555
    .local v0, "program":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 556
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->init(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 557
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 559
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    .line 560
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsColorOffset:I

    .line 561
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0direction:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsDirectionOffset:I

    .line 562
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights1color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    .line 563
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    if-gez v1, :cond_0

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    .line 565
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    .line 566
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsColorOffset:I

    .line 567
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0position:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsPositionOffset:I

    .line 568
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    .line 569
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights1color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    .line 570
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    if-gez v1, :cond_1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    .line 571
    :cond_1
    return-void

    .line 568
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 4
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    .line 705
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    const/4 v1, 0x0

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    .line 707
    :cond_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 708
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->bindLights(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 709
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 710
    return-void
.end method

.method public setDefaultCullFace(I)V
    .locals 1
    .param p1, "cullFace"    # I

    .prologue
    .line 817
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    .line 818
    return-void
.end method

.method public setDefaultDepthFunc(I)V
    .locals 1
    .param p1, "depthFunc"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    .line 826
    return-void
.end method
