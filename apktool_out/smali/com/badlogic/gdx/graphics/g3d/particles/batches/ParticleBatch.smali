.class public interface abstract Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;
.super Ljava/lang/Object;
.source "ParticleBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;"
    }
.end annotation


# virtual methods
.method public abstract begin()V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract end()V
.end method

.method public abstract load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
.end method

.method public abstract save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
.end method
