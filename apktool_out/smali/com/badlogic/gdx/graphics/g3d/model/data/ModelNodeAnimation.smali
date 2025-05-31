.class public Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
.super Ljava/lang/Object;
.source "ModelNodeAnimation.java"


# instance fields
.field public nodeId:Ljava/lang/String;

.field public rotation:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe",
            "<",
            "Lcom/badlogic/gdx/math/Quaternion;",
            ">;>;"
        }
    .end annotation
.end field

.field public scaling:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;>;"
        }
    .end annotation
.end field

.field public translation:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
