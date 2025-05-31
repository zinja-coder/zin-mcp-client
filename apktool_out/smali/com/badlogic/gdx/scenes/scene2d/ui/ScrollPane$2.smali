.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "button"    # I

    .prologue
    const/high16 v2, 0x43160000    # 150.0f

    .line 193
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput p2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V

    .line 198
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    neg-float v1, p3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V

    .line 203
    :cond_1
    return-void
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/Event;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .end local p1    # "event":Lcom/badlogic/gdx/scenes/scene2d/Event;
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 208
    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .restart local p1    # "event":Lcom/badlogic/gdx/scenes/scene2d/Event;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "deltaX"    # F
    .param p5, "deltaY"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    sub-float/2addr v1, p4

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    add-float/2addr v1, p5

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp()V

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V

    .line 190
    return-void
.end method
