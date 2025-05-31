.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;-><init>()V

    return-void
.end method

.method private focusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 108
    .local v1, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->isModal:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->peek()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    if-ne v2, v3, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 111
    .local v0, "newFocusedActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->cancel()V

    .line 115
    .end local v0    # "newFocusedActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    return-void
.end method


# virtual methods
.method public keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"    # Z

    .prologue
    .line 99
    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->focusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V

    .line 100
    :cond_0
    return-void
.end method

.method public scrollFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"    # Z

    .prologue
    .line 103
    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->focusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V

    .line 104
    :cond_0
    return-void
.end method
