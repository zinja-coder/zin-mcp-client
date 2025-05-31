.class public Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;
.super Ljava/lang/Object;
.source "NodeKeyframe.java"


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

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLjava/lang/Object;)V
    .locals 0
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<TT;>;"
    .local p2, "v":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    .line 29
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method
