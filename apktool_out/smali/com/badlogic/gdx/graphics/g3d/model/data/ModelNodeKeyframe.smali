.class public Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;
.super Ljava/lang/Object;
.source "ModelNodeKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public keytime:F

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    return-void
.end method
