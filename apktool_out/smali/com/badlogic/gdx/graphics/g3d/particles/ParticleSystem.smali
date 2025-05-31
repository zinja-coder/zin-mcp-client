.class public final Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
.super Ljava/lang/Object;
.source "ParticleSystem.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;


# instance fields
.field private batches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;>;"
        }
    .end annotation
.end field

.field private effects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    .line 27
    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    .line 18
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .locals 1
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public begin()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 63
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->begin()V

    goto :goto_0

    .line 64
    .end local v0    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 70
    .local v0, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    goto :goto_0

    .line 72
    .end local v0    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    :cond_0
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 77
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->end()V

    goto :goto_0

    .line 78
    .end local v0    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    :cond_0
    return-void
.end method

.method public getBatches()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
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
    .line 82
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 83
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_0

    .line 84
    .end local v0    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    :cond_0
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .locals 2
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 39
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 44
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 49
    .local v0, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    goto :goto_0

    .line 51
    .end local v0    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    :cond_0
    return-void
.end method

.method public updateAndDraw()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 55
    .local v0, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    .line 56
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    goto :goto_0

    .line 58
    .end local v0    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    :cond_0
    return-void
.end method
