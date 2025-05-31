.class Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)Z

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)Z

    .line 84
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    if-eq p4, v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    const/4 v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 74
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 77
    .local v0, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 78
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method
