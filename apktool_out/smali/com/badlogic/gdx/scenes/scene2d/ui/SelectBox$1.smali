.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    .prologue
    .line 82
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox.1;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox.1;"
    const/4 v0, 0x0

    .line 84
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    if-nez v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    .line 90
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->showList()V

    goto :goto_1
.end method
