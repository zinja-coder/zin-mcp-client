.class public Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
.source "ParticleControllerControllerRenderer.java"


# instance fields
.field controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;-><init>()V

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    .line 21
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "ParticleController channel not found, specify an influencer which will allocate it please."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    return-void
.end method

.method public isCompatible(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerControllerRenderer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->draw()V

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
