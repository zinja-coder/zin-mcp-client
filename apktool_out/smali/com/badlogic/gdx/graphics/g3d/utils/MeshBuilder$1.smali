.class final Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "MeshBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/math/Vector3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$1;->newObject()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method
