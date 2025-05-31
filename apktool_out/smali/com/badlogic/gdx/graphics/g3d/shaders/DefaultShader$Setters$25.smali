.class final Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$25;
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
    .line 300
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

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
    .line 303
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-virtual {p4, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .line 304
    .local v6, "ta":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget v5, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IFFFF)Z

    .line 305
    return-void
.end method
