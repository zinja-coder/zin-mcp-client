.class Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 6
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 68
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {v4, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    .line 69
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->getTouchDownY()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->hasItems()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getLastSelected()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    .line 74
    .local v1, "low":F
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    .line 75
    .local v0, "high":F
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    .line 76
    :cond_2
    cmpl-float v4, v1, v0

    if-lez v4, :cond_3

    .line 77
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 80
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    goto :goto_0

    .line 79
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    goto :goto_1

    .line 83
    .end local v0    # "high":F
    .end local v1    # "low":F
    :cond_4
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v4

    if-nez v4, :cond_8

    .line 85
    :cond_5
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    .line 86
    .local v3, "rowX":F
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    iget-object v5, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 87
    :cond_6
    cmpg-float v4, p2, v3

    if-gez v4, :cond_8

    .line 88
    iget-boolean v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 92
    .end local v3    # "rowX":F
    :cond_8
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "toActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 102
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 103
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 104
    :cond_1
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 98
    const/4 v0, 0x0

    return v0
.end method
