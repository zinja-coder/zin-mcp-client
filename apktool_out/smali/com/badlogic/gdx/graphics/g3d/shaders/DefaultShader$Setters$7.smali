.class final Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$7;
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
    .line 155
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"    # I
    .param p3, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    .line 158
    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/math/Matrix4;)Z

    .line 159
    return-void
.end method
