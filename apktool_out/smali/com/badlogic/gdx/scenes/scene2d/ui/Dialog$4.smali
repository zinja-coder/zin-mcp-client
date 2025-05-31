.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->key(ILjava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

.field final synthetic val$keycode:I

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$keycode:I

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode2"    # I

    .prologue
    const/4 v2, 0x0

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$keycode:I

    if-ne v0, p2, :cond_1

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->result(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->cancelHide:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->hide()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iput-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->cancelHide:Z

    .line 255
    :cond_1
    return v2
.end method
