.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.source "ParticleControllerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
        "T::",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
        "<TD;>;>",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;"
    }
.end annotation


# instance fields
.field protected batch:Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;, "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<TD;TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;, "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<TD;TT;>;"
    .local p1, "renderData":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;, "TD;"
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract isCompatible(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 2
    .param p1, "particleController"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .prologue
    .line 38
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;, "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<TD;TT;>;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 41
    :cond_0
    return-void
.end method

.method public setBatch(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;, "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<TD;TT;>;"
    .local p1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->isCompatible(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->batch:Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 22
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;, "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<TD;TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->batch:Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V

    .line 23
    return-void
.end method
