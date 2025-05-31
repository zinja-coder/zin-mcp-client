.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "ParticleControllerInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;
    }
.end annotation


# instance fields
.field particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field

.field public templates:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 149
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;)V
    .locals 1
    .param p1, "influencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;

    .prologue
    .line 157
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 158
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 1
    .param p1, "templates"    # [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 153
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    .line 154
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    .line 163
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 174
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    if-eqz v2, :cond_1

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v1, v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v0, v2, v1

    .line 177
    .local v0, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->dispose()V

    .line 179
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 11
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 220
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 221
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    const-string v9, "indices"

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    .line 223
    .local v5, "effectsIndices":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/IntArray;>;"
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 224
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/utils/IntArray;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v1

    .local v1, "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 226
    .local v2, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    if-nez v2, :cond_1

    .line 227
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Template is null"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 228
    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->getControllers()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    .line 229
    .local v3, "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/IntArray;

    .line 231
    .local v4, "effectIndices":Lcom/badlogic/gdx/utils/IntArray;
    const/4 v6, 0x0

    .local v6, "i":I
    iget v8, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v8, "n":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 232
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .end local v3    # "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    .end local v4    # "effectIndices":Lcom/badlogic/gdx/utils/IntArray;
    .end local v6    # "i":I
    .end local v8    # "n":I
    :cond_2
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 13
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 187
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v2

    .line 188
    .local v2, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    const-class v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v12}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {p1, v11, v12}, Lcom/badlogic/gdx/assets/AssetManager;->getAll(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    .line 190
    .local v5, "effects":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v11}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 191
    .local v1, "controllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 193
    .local v6, "effectsIndices":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/IntArray;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v11, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v11, :cond_4

    iget v11, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v11, :cond_4

    .line 194
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 195
    .local v3, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->getControllers()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    .line 196
    .local v4, "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 197
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    const/4 v9, 0x0

    .line 198
    .local v9, "indices":Lcom/badlogic/gdx/utils/IntArray;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 199
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 200
    .local v0, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    const/4 v8, -0x1

    .line 201
    .local v8, "index":I
    const/4 v11, 0x1

    invoke-virtual {v4, v0, v11}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v8

    const/4 v11, -0x1

    if-le v8, v11, :cond_0

    .line 202
    if-nez v9, :cond_1

    .line 203
    new-instance v9, Lcom/badlogic/gdx/utils/IntArray;

    .end local v9    # "indices":Lcom/badlogic/gdx/utils/IntArray;
    invoke-direct {v9}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    .line 205
    .restart local v9    # "indices":Lcom/badlogic/gdx/utils/IntArray;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 206
    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    .line 210
    .end local v0    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .end local v8    # "index":I
    :cond_2
    if-eqz v9, :cond_3

    .line 211
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    invoke-virtual {v2, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    .line 212
    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 193
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .end local v4    # "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    .end local v9    # "indices":Lcom/badlogic/gdx/utils/IntArray;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    :cond_4
    const-string v11, "indices"

    invoke-virtual {v2, v11, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    return-void
.end method
