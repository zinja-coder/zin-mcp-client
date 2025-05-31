.class public Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader$ParticleEffectParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "ParticleEffectLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleEffectParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;",
        ">;"
    }
.end annotation


# instance fields
.field public atlasFile:Ljava/lang/String;

.field public atlasPrefix:Ljava/lang/String;

.field public imagesDir:Lcom/badlogic/gdx/files/FileHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    return-void
.end method
