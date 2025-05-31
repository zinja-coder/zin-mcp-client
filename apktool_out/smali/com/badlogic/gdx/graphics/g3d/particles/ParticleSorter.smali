.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.super Ljava/lang/Object;
.source "ParticleSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;
    }
.end annotation


# static fields
.field static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field protected camera:Lcom/badlogic/gdx/graphics/Camera;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public ensureCapacity(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 140
    return-void
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 137
    return-void
.end method

.method public abstract sort(Lcom/badlogic/gdx/utils/Array;)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)[I"
        }
    .end annotation
.end method
