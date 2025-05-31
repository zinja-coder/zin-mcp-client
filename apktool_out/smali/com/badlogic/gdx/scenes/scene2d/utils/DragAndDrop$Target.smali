.class public abstract Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
.super Ljava/lang/Object;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Target"
.end annotation


# instance fields
.field final actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "actor cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 249
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 250
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The stage root cannot be a drag and drop target."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract drag(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)Z
.end method

.method public abstract drop(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)V
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V
    .locals 0
    .param p1, "source"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;
    .param p2, "payload"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    .prologue
    .line 260
    return-void
.end method
