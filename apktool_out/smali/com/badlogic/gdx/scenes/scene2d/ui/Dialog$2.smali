.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
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
    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->values:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eq v0, v1, :cond_1

    .line 90
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p2

    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->values:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->result(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->cancelHide:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->hide()V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->cancelHide:Z

    goto :goto_0
.end method
