.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
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
.field private handlePosition:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 6
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    if-eq v3, v0, :cond_0

    move v1, v2

    .line 146
    :goto_0
    return v1

    .line 113
    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    move v1, v2

    goto :goto_0

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 116
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 121
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 122
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    goto :goto_0

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollX(F)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 133
    :cond_6
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 134
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 135
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 136
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    goto/16 :goto_0

    .line 143
    :cond_7
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v5, p3, v5

    if-gez v5, :cond_8

    move v0, v1

    :cond_8
    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 146
    goto/16 :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 7
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    const/4 v6, 0x0

    .line 155
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    if-eq p4, v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-eqz v4, :cond_3

    .line 157
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p2, v4

    .line 158
    .local v0, "delta":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    add-float v1, v4, v0

    .line 159
    .local v1, "scrollH":F
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 160
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 161
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 162
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float v3, v4, v5

    .line 163
    .local v3, "total":F
    cmpl-float v4, v3, v6

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float v5, v1, v5

    div-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollPercentX(F)V

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    .line 165
    .end local v0    # "delta":F
    .end local v1    # "scrollH":F
    .end local v3    # "total":F
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-eqz v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, p3, v4

    .line 167
    .restart local v0    # "delta":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    add-float v2, v4, v0

    .line 168
    .local v2, "scrollV":F
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 169
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 170
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 171
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float v3, v4, v5

    .line 172
    .restart local v3    # "total":F
    cmpl-float v4, v3, v6

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float v6, v2, v6

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollPercentY(F)V

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto/16 :goto_0
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    if-eq p4, v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancel()V

    goto :goto_0
.end method
