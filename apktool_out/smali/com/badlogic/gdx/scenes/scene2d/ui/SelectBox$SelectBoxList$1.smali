.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
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
    .line 335
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList.1;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->val$selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 337
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList.1;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->val$selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getSelected()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->choose(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 339
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 342
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList.1;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->val$selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v2

    sub-float/2addr v2, p3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemHeight()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSelectedIndex(I)V

    .line 343
    const/4 v0, 0x1

    return v0
.end method
