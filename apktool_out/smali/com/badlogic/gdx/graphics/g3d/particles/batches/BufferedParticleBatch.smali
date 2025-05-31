.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;
.super Ljava/lang/Object;
.source "BufferedParticleBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected bufferedParticlesCount:I

.field protected camera:Lcom/badlogic/gdx/graphics/Camera;

.field protected currentCapacity:I

.field protected renderData:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected sorter:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->currentCapacity:I

    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    .line 18
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    .line 19
    return-void
.end method


# virtual methods
.method protected abstract allocParticlesData(I)V
.end method

.method public begin()V
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->bufferedParticlesCount:I

    .line 24
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    .local p1, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;, "TT;"
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-lez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 30
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->bufferedParticlesCount:I

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->bufferedParticlesCount:I

    .line 32
    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 36
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->bufferedParticlesCount:I

    if-lez v0, :cond_0

    .line 37
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->bufferedParticlesCount:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->ensureCapacity(I)V

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->sort(Lcom/badlogic/gdx/utils/Array;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->flush([I)V

    .line 40
    :cond_0
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 44
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->currentCapacity:I

    if-lt v0, p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->ensureCapacity(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->allocParticlesData(I)V

    .line 47
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->currentCapacity:I

    goto :goto_0
.end method

.method protected abstract flush([I)V
.end method

.method public getBufferedCount()I
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->bufferedParticlesCount:I

    return v0
.end method

.method public getSorter()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    return-object v0
.end method

.method public resetCapacity()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->bufferedParticlesCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->currentCapacity:I

    .line 52
    return-void
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 57
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 59
    return-void
.end method

.method public setSorter(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;)V
    .locals 1
    .param p1, "sorter"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    .prologue
    .line 66
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 68
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->currentCapacity:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->ensureCapacity(I)V

    .line 69
    return-void
.end method
