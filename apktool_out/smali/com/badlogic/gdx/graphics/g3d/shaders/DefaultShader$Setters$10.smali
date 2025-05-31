.class final Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$10;
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


# instance fields
.field private final tmpM:Lcom/badlogic/gdx/math/Matrix3;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    .line 176
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$10;->tmpM:Lcom/badlogic/gdx/math/Matrix3;

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 2
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"    # I
    .param p3, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$10;->tmpM:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->inv()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->transpose()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/math/Matrix3;)Z

    .line 180
    return-void
.end method
