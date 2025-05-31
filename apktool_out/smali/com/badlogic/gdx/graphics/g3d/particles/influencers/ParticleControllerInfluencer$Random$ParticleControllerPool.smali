.class Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "ParticleControllerInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticleControllerPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->getFree()I

    move-result v0

    .local v0, "free":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->dispose()V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    .line 86
    return-void
.end method

.method public newObject()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;->templates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-result-object v0

    .line 75
    .local v0, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->init()V

    .line 76
    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random$ParticleControllerPool;->newObject()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-result-object v0

    return-object v0
.end method
