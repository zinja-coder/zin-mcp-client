.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "ParticleEffectLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleEffectSaveParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
        ">;"
    }
.end annotation


# instance fields
.field batches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;>;"
        }
    .end annotation
.end field

.field file:Lcom/badlogic/gdx/files/FileHandle;

.field manager:Lcom/badlogic/gdx/assets/AssetManager;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/AssetManager;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, "batches":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 149
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    .line 150
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 151
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 152
    return-void
.end method
