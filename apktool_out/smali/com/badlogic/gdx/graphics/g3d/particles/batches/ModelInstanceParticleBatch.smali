.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;
.super Ljava/lang/Object;
.source "ModelInstanceParticleBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;",
        ">;"
    }
.end annotation


# instance fields
.field bufferedParticlesCount:I

.field controllersRenderData:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    .line 17
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    .line 36
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;)V
    .locals 2
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    .line 45
    return-void
.end method

.method public bridge synthetic draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    .prologue
    .line 12
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    .end local p1    # "x0":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;)V

    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public getBufferedCount()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    return v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    .line 22
    .local v1, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->modelInstanceChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "assetDependencyData"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 51
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "assetDependencyData"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 48
    return-void
.end method
