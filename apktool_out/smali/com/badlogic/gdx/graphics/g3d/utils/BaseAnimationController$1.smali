.class Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "BaseAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$1;->this$0:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$1;->newObject()Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v0

    return-object v0
.end method
