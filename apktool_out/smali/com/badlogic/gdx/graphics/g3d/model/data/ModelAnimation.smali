.class public Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
.super Ljava/lang/Object;
.source "ModelAnimation.java"


# instance fields
.field public id:Ljava/lang/String;

.field public nodeAnimations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
