.class Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;->this$0:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;->newObject()Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method
