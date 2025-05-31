.class Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SplitPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field draggingPointer:I

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

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

    .line 85
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 9
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    const/4 v8, 0x0

    .line 101
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    if-eq p4, v6, :cond_0

    .line 128
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 104
    .local v5, "handle":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-boolean v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v6, :cond_3

    .line 105
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v2, p2, v6

    .line 106
    .local v2, "delta":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getWidth()F

    move-result v6

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    sub-float v1, v6, v7

    .line 107
    .local v1, "availWidth":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v3, v6, v2

    .line 108
    .local v3, "dragX":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iput v3, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 109
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 110
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 111
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    div-float v7, v3, v1

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 112
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 113
    :cond_1
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 114
    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 127
    .end local v1    # "availWidth":F
    .end local v3    # "dragX":F
    :goto_1
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    goto :goto_0

    .line 116
    .end local v2    # "delta":F
    :cond_3
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, p3, v6

    .line 117
    .restart local v2    # "delta":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getHeight()F

    move-result v6

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    sub-float v0, v6, v7

    .line 118
    .local v0, "availHeight":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v4, v6, v2

    .line 119
    .local v4, "dragY":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 120
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 121
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 122
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v8, v4, v0

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 123
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 124
    :cond_4
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 125
    :cond_5
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    if-ne p4, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    .line 98
    :cond_0
    return-void
.end method
