.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
.super Ljava/lang/Object;
.source "ParticleEffect.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private controllers:Lcom/badlogic/gdx/utils/Array;
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
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .locals 5
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 1
    .param p1, "emitters"    # [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    .line 47
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V

    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->dispose()V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 74
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->draw()V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public findController(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 123
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 124
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :goto_1
    return-object v0

    .line 122
    .restart local v0    # "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 4

    .prologue
    .line 137
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-nez v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 140
    .local v0, "bounds":Lcom/badlogic/gdx/math/collision/BoundingBox;
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 141
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 142
    .local v1, "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_0

    .line 143
    .end local v1    # "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_1
    return-object v0
.end method

.method public getControllers()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->init()V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 4
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 172
    .local v0, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_0

    .line 174
    .end local v0    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->reset()V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 3
    .param p1, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->rotate(Lcom/badlogic/gdx/math/Quaternion;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 94
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->rotate(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 3
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 163
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 164
    .local v0, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_0

    .line 166
    .end local v0    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_0
    return-void
.end method

.method public scale(FFF)V
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale(FFF)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 6
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale(FFF)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public setBatch(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "batches":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;>;"
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 150
    .local v1, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 151
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->setBatch(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 154
    .end local v0    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    .end local v1    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 3
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->setTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->update()V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
