.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACubemap"
.end annotation


# static fields
.field private static final ones:[F

.field private static final tmpV1:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

.field public final dirLightsOffset:I

.field public final pointLightsOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->ones:[F

    .line 326
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    return-void

    .line 324
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "dirLightsOffset"    # I
    .param p2, "pointLightsOffset"    # I

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    .line 325
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 331
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->dirLightsOffset:I

    .line 332
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->pointLightsOffset:I

    .line 333
    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 7
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"    # I
    .param p3, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    const/4 v6, 0x0

    .line 337
    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v2

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->ones:[F

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->ones:[F

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform3fv(I[FII)V

    .line 357
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 341
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    invoke-virtual {p4, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 344
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->dirLightsOffset:I

    .local v0, "i":I
    :goto_1
    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    .line 345
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->pointLightsOffset:I

    :goto_2
    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_3

    .line 349
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->clamp()Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 355
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform3fv(I[FII)V

    goto/16 :goto_0
.end method
