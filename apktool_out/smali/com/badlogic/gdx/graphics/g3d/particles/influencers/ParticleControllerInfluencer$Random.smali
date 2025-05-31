.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;
.source "ParticleControllerInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Random"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;
    }
.end annotation


# instance fields
.field pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>()V

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;)V
    .locals 1
    .param p1, "particleControllerRandom"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;)V

    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    .line 103
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 1
    .param p1, "templates"    # [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 97
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    .line 98
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 122
    move v2, p1

    .local v2, "i":I
    add-int v0, p1, p2

    .local v0, "c":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 123
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 124
    .local v1, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    .line 125
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aput-object v1, v3, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->clear()V

    .line 117
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->dispose()V

    .line 118
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->clear()V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->newObject()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->free(Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public killParticles(II)V
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 131
    move v2, p1

    .local v2, "i":I
    add-int v0, p1, p2

    .local v0, "c":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 132
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v1, v3, v2

    .line 133
    .local v1, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 134
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->free(Ljava/lang/Object;)V

    .line 135
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_0
    return-void
.end method
