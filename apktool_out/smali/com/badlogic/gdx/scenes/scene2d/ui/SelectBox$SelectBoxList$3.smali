.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

.field final synthetic val$selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    .prologue
    .line 353
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList.3;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;->val$selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .prologue
    .line 363
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList.3;"
    const/16 v0, 0x83

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 364
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList.3;"
    const/4 v3, 0x0

    .line 355
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 356
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :goto_0
    return v3

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;->val$selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 358
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    goto :goto_0
.end method
