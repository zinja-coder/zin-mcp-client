.class public Lcom/badlogic/gdx/graphics/g3d/model/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# instance fields
.field public duration:F

.field public id:Ljava/lang/String;

.field public nodeAnimations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
