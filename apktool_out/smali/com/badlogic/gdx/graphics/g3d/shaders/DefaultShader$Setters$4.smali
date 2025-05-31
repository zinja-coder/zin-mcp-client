.class final Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$4;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$GlobalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$GlobalSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"    # I
    .param p3, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    .line 139
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const v0, 0x3f9813a9    # 1.1881f

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Camera;->far:F

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Camera;->far:F

    mul-float/2addr v1, v5

    div-float v5, v0, v1

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IFFFF)Z

    .line 141
    return-void
.end method
