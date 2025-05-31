.class public abstract Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;
.super Ljava/lang/Object;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Source"
.end annotation


# instance fields
.field final actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 226
    return-void
.end method


# virtual methods
.method public abstract dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "payload"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;
    .param p6, "target"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .prologue
    .line 234
    return-void
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method
