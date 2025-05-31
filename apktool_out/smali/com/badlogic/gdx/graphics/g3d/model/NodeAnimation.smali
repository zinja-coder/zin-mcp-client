.class public Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
.super Ljava/lang/Object;
.source "NodeAnimation.java"


# instance fields
.field public node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

.field public rotation:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe",
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
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe",
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
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 33
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 35
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
