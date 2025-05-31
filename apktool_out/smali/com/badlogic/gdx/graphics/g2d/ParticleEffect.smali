.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
.super Ljava/lang/Object;
.source "ParticleEffect.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private final emitters:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;",
            ">;"
        }
    .end annotation
.end field

.field private ownsTexture:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V
    .locals 5
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public allowCompletion()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->allowCompletion()V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 211
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->ownsTexture:Z

    if-nez v3, :cond_1

    .line 216
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 213
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 214
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 3
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 3
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "delta"    # F

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 74
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public findEmitter(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 121
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 122
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :goto_1
    return-object v0

    .line 120
    .restart local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flipY()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->flipY()V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 4

    .prologue
    .line 220
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-nez v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 223
    .local v0, "bounds":Lcom/badlogic/gdx/math/collision/BoundingBox;
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 224
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 225
    .local v1, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_0

    .line 226
    .end local v1    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_1
    return-object v0
.end method

.method public getEmitters()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public isComplete()Z
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 84
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 85
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 87
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :goto_1
    return v3

    .line 83
    .restart local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 0
    .param p1, "effectFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->loadEmitters(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->loadEmitterImages(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 139
    return-void
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1
    .param p1, "effectFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Ljava/lang/String;)V
    .locals 0
    .param p1, "effectFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p3, "atlasPrefix"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->loadEmitters(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 147
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->loadEmitterImages(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public loadEmitterImages(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 10
    .param p1, "imagesDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 189
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->ownsTexture:Z

    .line 190
    new-instance v4, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 191
    .local v4, "loadedSprites":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/Sprite;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v5, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v5, "n":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 192
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 193
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "imagePath":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 191
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    new-instance v7, Ljava/io/File;

    const/16 v8, 0x5c

    const/16 v9, 0x2f

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "imageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 197
    .local v6, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-nez v6, :cond_1

    .line 198
    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .end local v6    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->loadTexture(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 199
    .restart local v6    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    goto :goto_1

    .line 203
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    .end local v2    # "imageName":Ljava/lang/String;
    .end local v3    # "imagePath":Ljava/lang/String;
    .end local v6    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :cond_2
    return-void
.end method

.method public loadEmitterImages(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->loadEmitterImages(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public loadEmitterImages(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Ljava/lang/String;)V
    .locals 10
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p2, "atlasPrefix"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v5, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v5, "n":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 175
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 176
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "imagePath":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 174
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    new-instance v7, Ljava/io/File;

    const/16 v8, 0x5c

    const/16 v9, 0x2f

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "imageName":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 180
    .local v4, "lastDotIndex":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_1
    if-eqz p2, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    :cond_2
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->createSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v6

    .line 183
    .local v6, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-nez v6, :cond_3

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpriteSheet missing image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_3
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    goto :goto_1

    .line 186
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    .end local v2    # "imageName":Ljava/lang/String;
    .end local v3    # "imagePath":Ljava/lang/String;
    .end local v4    # "lastDotIndex":I
    .end local v6    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :cond_4
    return-void
.end method

.method public loadEmitters(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 8
    .param p1, "effectFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    .line 152
    .local v2, "input":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 153
    const/4 v3, 0x0

    .line 155
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x200

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;-><init>(Ljava/io/BufferedReader;)V

    .line 158
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-nez v5, :cond_1

    .line 165
    :goto_0
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    return-void

    .line 160
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 162
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading effect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v3}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 162
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method protected loadTexture(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 2
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 206
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->reset()V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 6
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v4, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 130
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 131
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    if-lez v3, :cond_0

    const-string v5, "\n\n"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->save(Ljava/io/Writer;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 134
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_1
    return-void
.end method

.method public scaleEffect(F)V
    .locals 5
    .param p1, "scaleFactor"    # F

    .prologue
    .line 230
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 231
    .local v1, "particleEmitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 233
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 236
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 238
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 241
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 243
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 246
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 248
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 251
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 253
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 256
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 258
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 261
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    .line 264
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    goto/16 :goto_0

    .line 267
    .end local v1    # "particleEmitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_0
    return-void
.end method

.method public setDuration(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 92
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 93
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setContinuous(Z)V

    .line 94
    int-to-float v3, p1

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    .line 95
    const/4 v3, 0x0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    :cond_0
    return-void
.end method

.method public setEmittersCleanUpBlendFunction(Z)V
    .locals 3
    .param p1, "cleanUpBlendFunction"    # Z

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 277
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setCleansUpBlendFunction(Z)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public setFlip(ZZ)V
    .locals 3
    .param p1, "flipX"    # Z
    .param p2, "flipY"    # Z

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setFlip(ZZ)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setPosition(FF)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 54
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->start()V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->emitters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->update(F)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
