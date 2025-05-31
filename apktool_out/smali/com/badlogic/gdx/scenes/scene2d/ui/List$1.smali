.class Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List.1;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

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
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List.1;"
    const/4 v0, 0x0

    .line 66
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->touchDown(F)V

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method
