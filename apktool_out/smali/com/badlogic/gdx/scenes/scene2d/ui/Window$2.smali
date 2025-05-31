.class Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field edge:I

.field lastX:F

.field lastY:F

.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "character"    # C

    .prologue
    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "amount"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 7
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    if-nez p5, :cond_a

    .line 90
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    .line 91
    .local v0, "border":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v2

    .local v2, "width":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v1

    .line 92
    .local v1, "height":F
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 93
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    if-eqz v3, :cond_8

    .line 94
    int-to-float v3, v0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 95
    :cond_0
    int-to-float v3, v0

    sub-float v3, v2, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 96
    :cond_1
    int-to-float v3, v0

    cmpg-float v3, p3, v3

    if-gez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 97
    :cond_2
    int-to-float v3, v0

    sub-float v3, v1, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 98
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x19

    .line 99
    :cond_4
    int-to-float v3, v0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_5

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 100
    :cond_5
    int-to-float v3, v0

    sub-float v3, v2, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_6

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 101
    :cond_6
    int-to-float v3, v0

    cmpg-float v3, p3, v3

    if-gez v3, :cond_7

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 102
    :cond_7
    int-to-float v3, v0

    sub-float v3, v1, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_8

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 104
    :cond_8
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    if-nez v3, :cond_9

    cmpg-float v3, p3, v1

    if-gtz v3, :cond_9

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result v3

    sub-float v3, v1, v3

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_9

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_9

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_9

    const/16 v3, 0x20

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    .line 105
    :cond_9
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    if-eqz v3, :cond_d

    move v3, v4

    :goto_0
    iput-boolean v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    .line 106
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->startX:F

    .line 107
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->startY:F

    .line 108
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->lastX:F

    .line 109
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->lastY:F

    .line 111
    .end local v0    # "border":I
    .end local v1    # "height":F
    .end local v2    # "width":F
    :cond_a
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v3, :cond_c

    :cond_b
    move v5, v4

    :cond_c
    return v5

    .restart local v0    # "border":I
    .restart local v1    # "height":F
    .restart local v2    # "width":F
    :cond_d
    move v3, v5

    .line 105
    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 19
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v14, v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    if-nez v14, :cond_0

    .line 163
    :goto_0
    return-void

    .line 120
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v11

    .local v11, "width":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v5

    .line 121
    .local v5, "height":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v12

    .local v12, "windowX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v13

    .line 123
    .local v13, "windowY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinWidth()F

    move-result v9

    .local v9, "minWidth":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxWidth()F

    move-result v7

    .line 124
    .local v7, "maxWidth":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinHeight()F

    move-result v8

    .local v8, "minHeight":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxHeight()F

    move-result v6

    .line 125
    .local v6, "maxHeight":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v10

    .line 126
    .local v10, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v14, v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v14

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v15

    if-ne v14, v15, :cond_e

    const/4 v4, 0x1

    .line 128
    .local v4, "clampPosition":Z
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->startX:F

    sub-float v2, p2, v14

    .local v2, "amountX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->startY:F

    sub-float v3, p3, v14

    .line 130
    .local v3, "amountY":F
    add-float/2addr v12, v2

    .line 131
    add-float/2addr v13, v3

    .line 133
    .end local v2    # "amountX":F
    .end local v3    # "amountY":F
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->startX:F

    sub-float v2, p2, v14

    .line 135
    .restart local v2    # "amountX":F
    sub-float v14, v11, v2

    cmpg-float v14, v14, v9

    if-gez v14, :cond_2

    sub-float v14, v9, v11

    neg-float v2, v14

    .line 136
    :cond_2
    if-eqz v4, :cond_3

    add-float v14, v12, v2

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    neg-float v2, v12

    .line 137
    :cond_3
    sub-float/2addr v11, v2

    .line 138
    add-float/2addr v12, v2

    .line 140
    .end local v2    # "amountX":F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_7

    .line 141
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->startY:F

    sub-float v3, p3, v14

    .line 142
    .restart local v3    # "amountY":F
    sub-float v14, v5, v3

    cmpg-float v14, v14, v8

    if-gez v14, :cond_5

    sub-float v14, v8, v5

    neg-float v3, v14

    .line 143
    :cond_5
    if-eqz v4, :cond_6

    add-float v14, v13, v3

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    neg-float v3, v13

    .line 144
    :cond_6
    sub-float/2addr v5, v3

    .line 145
    add-float/2addr v13, v3

    .line 147
    .end local v3    # "amountY":F
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_a

    .line 148
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->lastX:F

    sub-float v2, p2, v14

    .line 149
    .restart local v2    # "amountX":F
    add-float v14, v11, v2

    cmpg-float v14, v14, v9

    if-gez v14, :cond_8

    sub-float v2, v9, v11

    .line 150
    :cond_8
    if-eqz v4, :cond_9

    add-float v14, v12, v11

    add-float/2addr v14, v2

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v14

    sub-float/2addr v14, v12

    sub-float v2, v14, v11

    .line 151
    :cond_9
    add-float/2addr v11, v2

    .line 153
    .end local v2    # "amountX":F
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->edge:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_d

    .line 154
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->lastY:F

    sub-float v3, p3, v14

    .line 155
    .restart local v3    # "amountY":F
    add-float v14, v5, v3

    cmpg-float v14, v14, v8

    if-gez v14, :cond_b

    sub-float v3, v8, v5

    .line 156
    :cond_b
    if-eqz v4, :cond_c

    add-float v14, v13, v5

    add-float/2addr v14, v3

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_c

    .line 157
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v14

    sub-float/2addr v14, v13

    sub-float v3, v14, v5

    .line 158
    :cond_c
    add-float/2addr v5, v3

    .line 160
    .end local v3    # "amountY":F
    :cond_d
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->lastX:F

    .line 161
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->lastY:F

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBounds(FFFF)V

    goto/16 :goto_0

    .line 126
    .end local v4    # "clampPosition":Z
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    .line 116
    return-void
.end method
