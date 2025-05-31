.class final Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$16;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
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
    .line 235
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

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
    .line 238
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-virtual {p4, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;->bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I

    move-result v0

    .line 240
    .local v0, "unit":I
    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(II)Z

    .line 241
    return-void
.end method
