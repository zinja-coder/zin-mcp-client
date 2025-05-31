.class public abstract Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;
.super Ljava/lang/Object;
.source "BaseShaderProvider.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;


# instance fields
.field protected shaders:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method protected abstract createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 45
    .local v1, "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->dispose()V

    goto :goto_0

    .line 47
    .end local v1    # "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 48
    return-void
.end method

.method public getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .locals 4
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 29
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 30
    .local v2, "suggestedShader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 37
    :goto_0
    return-object v1

    .line 31
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 32
    .local v1, "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    invoke-interface {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 34
    .end local v1    # "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v1

    .line 35
    .restart local v1    # "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    .line 36
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
